#Дополнительное (необязательное) задание

CREATE TABLE IF NOT EXISTS Chief (
	id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	department VARCHAR(60) NOT NULL,
	description TEXT
);

CREATE TABLE IF NOT EXISTS Employee (
	id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	department VARCHAR(60) NOT NULL,
	ID_The_boss INTEGER NOT NULL REFERENCES Chief(id),
	id INTEGER PRIMARY KEY REFERENCES Chief(id),
	description TEXT
);


