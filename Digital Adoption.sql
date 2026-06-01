CREATE DATABASE digital_health;
USE digital_health;
CREATE TABLE app_usage(
user_id INT,
patient_id INT,
session_count INT,
avg_session_time INT,
dropped_out INT
);
SELECT COUNT(*) AS total_users
FROM app_usage;
-- Activity vs Churned
SELECT
dropped_out,
COUNT(*) AS users
FROM app_usage
GROUP BY dropped_out;
-- Average Session Count
SELECT
AVG(session_count) AS avg_sessions
FROM app_usage;
-- Average Session time
SELECT
AVG(avg_session_time) AS avg_time
FROM app_usage;
-- Top Engaged Users
SELECT *
FROM app_usage
ORDER BY session_count DESC
LIMIT 20;
-- Churn Behaviour
SELECT
dropped_out,
AVG(session_count) AS avg_sessions,
AVG(avg_session_time) AS avg_time
FROM app_usage
GROUP BY dropped_out;
