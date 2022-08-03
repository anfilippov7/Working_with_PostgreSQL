#Домашнее задание к лекции «Работа с SQL. Создание БД»


CREATE TABLE IF NOT EXISTS Musical_genres (
	id SERIAL PRIMARY KEY,
	name_genre VARCHAR(60) NOT NULL,
	description TEXT
);

CREATE TABLE IF NOT EXISTS Performers (
	id SERIAL PRIMARY KEY,
	name VARCHAR(60) NOT NULL,
	genre VARCHAR(60) NOT NULL,
	description TEXT 
);

CREATE TABLE IF NOT EXISTS Performers_Musical_genres (
	id_The_performer INTEGER REFERENCES Performers(id),
	ID_Music_genre INTEGER REFERENCES Musical_genres(id),
	CONSTRAINT pk PRIMARY KEY (ID_The_performer, ID_Music_genre)
);

CREATE TABLE IF NOT EXISTS Albums (
	id SERIAL PRIMARY KEY,
	title VARCHAR(60) NOT NULL,
	year_release INTEGER NOT NULL,
	executor VARCHAR(60) NOT NULL,
	description TEXT 
);

CREATE TABLE IF NOT EXISTS Performers_Albums (
	ID_The_performer INTEGER REFERENCES Performers(id),
	ID_Albums INTEGER REFERENCES Albums(id),
	CONSTRAINT pk1 PRIMARY KEY (ID_The_performer, ID_Albums)
);

CREATE TABLE IF NOT EXISTS Tracks (
	id SERIAL PRIMARY KEY,
	ID_Albums INTEGER NOT NULL REFERENCES Albums(id),
	title VARCHAR(60) NOT NULL,
	duration INTEGER NOT NULL,
	album VARCHAR(60) NOT NULL,
	description TEXT
);

CREATE TABLE IF NOT EXISTS Collection (
	id SERIAL PRIMARY KEY,
	title VARCHAR(60) NOT NULL,
	description TEXT,
	year_release INTEGER NOT NULL
);

CREATE TABLE IF NOT EXISTS Tracks_Collection (
	ID_Track INTEGER REFERENCES Tracks(id),
	ID_Collection INTEGER REFERENCES Collection(id),
	CONSTRAINT pk2 PRIMARY KEY (ID_Track, ID_Collection)
);






