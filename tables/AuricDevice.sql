create table database_name.schema_name.AuricDevice(
    user_id varchar,
    timestamp timestamp,
    status bool,
    mode varchar,
    oil_1_name varchar,
    oil_1_mix integer,
    oil_2_name varchar,
    oil_2_mix integer,
    oil_3_name varchar,
    oil_3_mix integer,
    oil_4_name varchar,
    oil_4_mix integer,
    oil_5_name varchar,
    oil_5_mix integer,
    oil_6_name varchar,
    oil_6_mix integer,
    oil_7_name varchar,
    oil_7_mix integer,
    oil_8_name varchar,
    oil_8_mix integer
)
sortkey
    (user_id)
;
-- Inserting mock data. ETL pipeline from Auric device
insert into database_name.schema_name.AuricDevice values
    ('cai', 'Jun 1,2023  10:00:00', False, NULL, 'peppermint', NULL, 'tea tree', NULL, 'orange', NULL, 'lemongrass', NULL, 'lavender', NULL, NULL, NULL, NULL, NULL, NULL, NULL),
    ('cai', 'Jun 1,2023  21:34:00', True, 'sleep', 'peppermint', 9, 'tea tree', 3, 'orange', 2, 'lemongrass', 0, 'lavender', 9, NULL, NULL, NULL, NULL, NULL, NULL),
    ('cai', 'Jun 1,2023  21:45:00', True, 'sleep', 'peppermint', 10, 'tea tree', 1, 'orange', 2, 'lemongrass', 0, 'lavender', 9, NULL, NULL, NULL, NULL, NULL, NULL),
    ('cai', 'Jun 1,2023  22:00:00', True, 'sleep', 'peppermint', 10, 'tea tree', 1, 'orange', 2, 'lemongrass', 0, 'lavender', 9, NULL, NULL, NULL, NULL, NULL, NULL),
    ('cai', 'Jun 1,2023  23:00:00', True, 'sleep', 'peppermint', 10, 'tea tree', 1, 'orange', 2, 'lemongrass', 0, 'lavender', 9, NULL, NULL, NULL, NULL, NULL, NULL),
    ('cai', 'Jun 2,2023  00:00:00', True, 'sleep', 'peppermint', 10, 'tea tree', 1, 'orange', 2, 'lemongrass', 0, 'lavender', 9, NULL, NULL, NULL, NULL, NULL, NULL),
    ('cai', 'Jun 2,2023  01:00:00', True, 'sleep', 'peppermint', 10, 'tea tree', 1, 'orange', 2, 'lemongrass', 0, 'lavender', 9, NULL, NULL, NULL, NULL, NULL, NULL),
    ('cai', 'Jun 2,2023  02:00:00', True, 'sleep', 'peppermint', 10, 'tea tree', 1, 'orange', 2, 'lemongrass', 0, 'lavender', 9, NULL, NULL, NULL, NULL, NULL, NULL)
;

select * from database_name.schema_name.AuricDevice
;
