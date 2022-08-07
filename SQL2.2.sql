#Дополнительное (необязательное) задание

CREATE TABLE IF NOT EXISTS Employee (
	id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	department VARCHAR(60) NOT NULL,
	Chief VARCHAR(60) NOT NULL,
	id_Chief INTEGER NOT NULL REFERENCES Employee(id),
	description TEXT
);


