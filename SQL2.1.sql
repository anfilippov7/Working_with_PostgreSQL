#Домашнее задание к лекции «Работа с SQL. Создание БД»


CREATE TABLE IF NOT EXISTS Musical_genres (
	id SERIAL PRIMARY KEY,
	name_genre VARCHAR(60) UNIQUE NOT NULL,
	description TEXT
);

CREATE TABLE IF NOT EXISTS Performers (
	id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	description TEXT 
);

CREATE TABLE IF NOT EXISTS Performers_Musical_genres (
	id_The_performer INTEGER REFERENCES Performers(id),
	id_Music_genre INTEGER REFERENCES Musical_genres(id),
	CONSTRAINT pk PRIMARY KEY (id_The_performer, id_Music_genre)
);

CREATE TABLE IF NOT EXISTS Albums (
	id SERIAL PRIMARY KEY,
	title VARCHAR(60) NOT NULL,
	year_release INTEGER CHECK(year_release > 1990) NOT NULL,
	description TEXT 
);

CREATE TABLE IF NOT EXISTS Performers_Albums (
	id_The_performer INTEGER REFERENCES Performers(id),
	id_Albums INTEGER REFERENCES Albums(id),
	CONSTRAINT pk1 PRIMARY KEY (id_The_performer, id_Albums)
);

CREATE TABLE IF NOT EXISTS Tracks (
	id SERIAL PRIMARY KEY,
	id_Albums INTEGER NOT NULL REFERENCES Albums(id),
	title VARCHAR(60) NOT NULL,
	duration FLOAT CHECK(duration > 0) NOT NULL,
	description TEXT
);

CREATE TABLE IF NOT EXISTS Collection (
	id SERIAL PRIMARY KEY,
	title VARCHAR(60) UNIQUE NOT NULL,
	year_release INTEGER CHECK(year_release > 1990) NOT NULL,
	description TEXT
);

CREATE TABLE IF NOT EXISTS Tracks_Collection (
	ID_Track INTEGER REFERENCES Tracks(id),
	ID_Collection INTEGER REFERENCES Collection(id),
	CONSTRAINT pk2 PRIMARY KEY (ID_Track, ID_Collection)
);






