create table database_name.schema_name.AppleHealthHeartRate(
    user_id varchar,
    timestamp timestamp,
    heart_rate integer,
    source varchar,
    activity_type varchar,
    metadata super
)
sortkey
    (user_id)
;
-- Inserting mock data. ETL pipeline from Apple device
insert into database_name.schema_name.AppleHealthHeartRate values
    ('cai', 'Jun 1,2023  10:00:00', 67, 'Apple Watch', 'Resting', JSON_PARSE('{"device_model": "Apple Watch Series 8", "os_version": "10.8.1", "sample_id": "1234-5678"}')),
    ('cai', 'Jun 1,2023  11:00:00', 69, 'Apple Watch', 'Resting', JSON_PARSE('{"device_model": "Apple Watch Series 8", "os_version": "10.8.1", "sample_id": "1234-5678"}')),
    ('cai', 'Jun 1,2023  12:00:00', 77, 'Apple Watch', 'Resting', JSON_PARSE('{"device_model": "Apple Watch Series 8", "os_version": "10.8.1", "sample_id": "1234-5678"}')),
    ('cai', 'Jun 1,2023  13:00:00', 73, 'Apple Watch', 'Resting', JSON_PARSE('{"device_model": "Apple Watch Series 8", "os_version": "10.8.1", "sample_id": "1234-5678"}')),
    ('cai', 'Jun 1,2023  14:00:00', 60, 'Apple Watch', 'Resting', JSON_PARSE('{"device_model": "Apple Watch Series 8", "os_version": "10.8.1", "sample_id": "1234-5678"}')),
    ('cai', 'Jun 1,2023  15:00:00', 79, 'Apple Watch', 'Resting', JSON_PARSE('{"device_model": "Apple Watch Series 8", "os_version": "10.8.1", "sample_id": "1234-5678"}')),
    ('cai', 'Jun 1,2023  16:00:00', 56, 'Apple Watch', 'Resting', JSON_PARSE('{"device_model": "Apple Watch Series 8", "os_version": "10.8.1", "sample_id": "1234-5678"}')),
    ('cai', 'Jun 1,2023  17:00:00', 78, 'Apple Watch', 'Walking', JSON_PARSE('{"device_model": "Apple Watch Series 8", "os_version": "10.8.1", "sample_id": "1234-5678"}')),
    ('cai', 'Jun 1,2023  18:00:00', 68, 'Apple Watch', 'Walking', JSON_PARSE('{"device_model": "Apple Watch Series 8", "os_version": "10.8.1", "sample_id": "1234-5678"}')),
    ('cai', 'Jun 1,2023  19:00:00', 69, 'Apple Watch', 'Resting', JSON_PARSE('{"device_model": "Apple Watch Series 8", "os_version": "10.8.1", "sample_id": "1234-5678"}')),
    ('cai', 'Jun 1,2023  20:00:00', 74, 'Apple Watch', 'Resting', JSON_PARSE('{"device_model": "Apple Watch Series 8", "os_version": "10.8.1", "sample_id": "1234-5678"}')),
    ('cai', 'Jun 1,2023  21:00:00', 63, 'Apple Watch', 'Sleeping', JSON_PARSE('{"device_model": "Apple Watch Series 8", "os_version": "10.8.1", "sample_id": "1234-5678"}'))
;

select * from database_name.schema_name.AppleHealthHeartRate
;
