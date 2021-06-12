\i schema_drop.sql

CREATE TABLE IF NOT EXISTS Matches(
	Nr integer PRIMARY KEY, 
	Teams varchar(120),
	time_ varchar(20),
	dates varchar(20)
);

CREATE TABLE IF NOT EXISTS Groups(
    ID varchar(60)PRIMARY KEY,
    Teams varchar(60)
);

CREATE TABLE IF NOT EXISTS Euro(
	start_date varchar(20),
	end_date varchar(20),
	year integer,
	host varchar(120)
);

CREATE TABLE IF NOT EXISTS Stadiums(
	Stadium_Name varchar(120),
	Cities varchar(120)
);


CREATE TABLE IF NOT EXISTS FranceMatches(
	Nr integer PRIMARY KEY,
	dates varchar(20),
	time_ varchar(20),
	Teams varchar(120),
	results varchar(40)
);

CREATE TABLE IF NOT EXISTS FranceStadiums(
	Stadium_Name varchar(120),
	Cities varchar(120)
);

CREATE TABLE IF NOT EXISTS FranceGroups(
	ID varchar(60) PRIMARY KEY,
	Teams varchar(60)
);

