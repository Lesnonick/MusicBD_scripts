CREATE TABLE IF NOT EXISTS Genres(
		id SERIAL PRIMARY KEY,
		name TEXT
);

CREATE TABLE IF NOT EXISTS Authors(
		id SERIAL PRIMARY KEY,
		pseudonym TEXT
);

CREATE TABLE IF NOT EXISTS GenreAuthor(
		genre_id INTEGER REFERENCES Genres(id),
		author_id INTEGER REFERENCES Authors(id),
		CONSTRAINT pk_ga PRIMARY KEY (genre_id, author_id)
);

CREATE TABLE IF NOT EXISTS Albums(
		id SERIAL PRIMARY KEY,
		title TEXT,
		release_year INTEGER
);

CREATE TABLE IF NOT EXISTS AlbumAuthor(
		album_id INTEGER REFERENCES Albums(id),
		author_id INTEGER REFERENCES Authors(id),
		CONSTRAINT pk_aa PRIMARY KEY (album_id, author_id)
);


CREATE TABLE IF NOT EXISTS Tracks(
		id SERIAL PRIMARY KEY,
		album_id INTEGER NOT NULL REFERENCES Albums(id),
		name TEXT,
		duration INTERVAL
);

CREATE TABLE IF NOT EXISTS Collections(
		id SERIAL PRIMARY KEY,
		name TEXT
);


CREATE TABLE IF NOT EXISTS TrackCollection(
		track_id INTEGER REFERENCES Tracks(id),
		collection_id INTEGER REFERENCES Collections(id),
		CONSTRAINT pk_tc PRIMARY KEY (track_id, collection_id)
);

ALTER TABLE tracks ALTER COLUMN duration TYPE int USING EXTRACT(epoch FROM duration);

ALTER TABLE collections RENAME COLUMN name TO collection_name;

ALTER TABLE tracks RENAME COLUMN name TO track_name;

ALTER TABLE genres RENAME COLUMN name TO genre_name;
