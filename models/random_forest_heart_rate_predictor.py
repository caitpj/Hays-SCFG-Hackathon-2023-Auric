import pandas as pd
import psycopg2
from sklearn.model_selection import train_test_split
from sklearn.ensemble import RandomForestRegressor

# Function to connect to the Redshift database and fetch data
def fetch_data_from_redshift():
    connection = psycopg2.connect(
        host='your_redshift_host',
        port='your_redshift_port',
        user='your_redshift_username',
        password='your_redshift_password',
        database='your_redshift_db_name'
    )

    # Replace 'your_schema_name' with the actual schema name
    heart_rate_query = "SELECT user_id, timestamp, heart_rate FROM your_schema_name.AppleHealthHeartRate;"
    oil_mix_query = "SELECT user_id, timestamp, oil_1_mix, oil_2_mix, oil_3_mix, oil_4_mix, oil_5_mix, oil_6_mix, oil_7_mix, oil_8_mix FROM your_schema_name.AuricDevice;"

    heart_rate_data = pd.read_sql(heart_rate_query, connection)
    oil_mix_data = pd.read_sql(oil_mix_query, connection)

    connection.close()

    return heart_rate_data, oil_mix_data

# Function to preprocess the data
def preprocess_data(heart_rate_data, oil_mix_data):
    # Merge the two tables based on user_id and timestamp
    merged_data = pd.merge(heart_rate_data, oil_mix_data, on=['user_id', 'timestamp'], how='inner')

    # Drop unnecessary columns like user_id and timestamp
    merged_data.drop(['user_id', 'timestamp'], axis=1, inplace=True)

    return merged_data

# Function to train the machine learning model using Random Forest
def train_model(data):
    X = data.drop('heart_rate', axis=1)
    y = data['heart_rate']

    # Split the data into training and testing sets
    X_train, X_test, y_train, y_test = train_test_split(X, y, test_size=0.2, random_state=42)

    # Train the Random Forest model
    model = RandomForestRegressor(n_estimators=100, random_state=42)
    model.fit(X_train, y_train)

    return model

# Function to make predictions
def predict_heart_rate(model, oil_mix):
    # Assuming oil_mix is a dictionary containing oil names and their mixes
    # E.g., oil_mix = {'oil_1_mix': 10, 'oil_2_mix': 20, 'oil_3_mix': 30, ...}
    oil_mix_df = pd.DataFrame([oil_mix])
    heart_rate_prediction = model.predict(oil_mix_df)
    return heart_rate_prediction[0]

if __name__ == '__main__':
    # Step 1: Fetch data from Redshift
    heart_rate_data, oil_mix_data = fetch_data_from_redshift()

    # Step 2: Preprocess the data
    merged_data = preprocess_data(heart_rate_data, oil_mix_data)

    # Step 3 and 4: Train the machine learning model using Random Forest
    model = train_model(merged_data)

    # Step 6: Make predictions using the trained model
    oil_mix_to_predict = {'oil_1_mix': 10, 'oil_2_mix': 20, 'oil_3_mix': 30, ...}
    predicted_heart_rate = predict_heart_rate(model, oil_mix_to_predict)

    print("Predicted Heart Rate:", predicted_heart_rate)
