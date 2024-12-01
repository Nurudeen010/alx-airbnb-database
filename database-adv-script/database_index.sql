-- SQL CREATE INDEX commands to create appropriate indexes for those columns and save them on database_index.sql

CREATE INDEX Id_fullName ON USER (first_name, last_name);

CREATE INDEX Id_PropName on Property(name);