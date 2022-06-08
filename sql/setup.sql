-- Use this file to define your SQL tables
-- The SQL in this file will be executed when you run `npm run setup-db`

DROP table if exists api_table;

CREATE table api_table (
  id INT GENERATED ALWAYS AS IDENTITY,
);

INSERT INTO api_table () VALUES 
