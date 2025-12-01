-- Create schema
CREATE SCHEMA cdc;

-- Set search path
SET search_path TO cdc;

-- Create a database user (used by Airbyte to connect)
CREATE USER airbyte PASSWORD 'cdc123';

-- Allow the created user to use the schema
GRANT USAGE ON SCHEMA cdc TO airbyte;

-- Grant SELECT privilege on all tables in the schema
GRANT SELECT ON ALL TABLES IN SCHEMA cdc TO airbyte;

-- Alter default privileges so new tables grant SELECT to airbyte
ALTER DEFAULT PRIVILEGES IN SCHEMA cdc GRANT SELECT ON TABLES TO airbyte;

-- Grant replication login to the user
ALTER USER airbyte REPLICATION LOGIN;

-- Create a table
CREATE TABLE courses(id INTEGER, NAME VARCHAR(200), PRIMARY KEY (id));

-- Insert records into the database
INSERT INTO courses VALUES(1000, 'FCD');
INSERT INTO courses VALUES(1001, 'FED');
INSERT INTO courses VALUES(1002, 'FADA');
INSERT INTO courses VALUES(1003, 'FAD');
INSERT INTO courses VALUES(1004, 'FEI');
INSERT INTO courses VALUES(1005, 'FEM');

-- Select from the table
SELECT * FROM courses;

-- Create a replication slot
SELECT pg_create_logical_replication_slot('airbyte_slot', 'pgoutput');

-- Create a publication for the table
CREATE PUBLICATION pub1 FOR TABLE courses;
