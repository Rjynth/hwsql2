
CREATE DATABASE MusicDB;


USE MusicDB;


CREATE TABLE Genres (
  GenreID INT PRIMARY KEY,
  Genre_name VARCHAR(50) NOT NULL
);

CREATE TABLE Artists (
  ArtistID INT PRIMARY KEY,
  Artist_name VARCHAR(50) NOT NULL,
  Artist_alias VARCHAR(50)
);

CREATE TABLE genre_band (
  genreID INT,
  artistID INT,
  PRIMARY KEY (genreID, artistID),
  FOREIGN KEY (genreID) REFERENCES Genres(GenreID),
  FOREIGN KEY (artistID) REFERENCES Artists(ArtistID)
);

CREATE TABLE Albums (
  AlbumID INT PRIMARY KEY,
  Albums_name VARCHAR(50) NOT NULL,
  Albums_year INT
);

CREATE TABLE album_artists (
  AlbumID INT,
  ArtistID INT,
  PRIMARY KEY (AlbumID, ArtistID),
  FOREIGN KEY (AlbumID) REFERENCES Albums(AlbumID),
  FOREIGN KEY (ArtistID) REFERENCES Artists(ArtistID)
);

CREATE TABLE Tracks (
  TrackID INT PRIMARY KEY,
  Track_name VARCHAR(50) NOT NULL,
  Track_time INT,
  AlbumID INT,
  FOREIGN KEY (AlbumID) REFERENCES Albums(AlbumID)
);

CREATE TABLE track_collection (
  track_collectionID INT PRIMARY KEY,
  collectionID INT,
  FOREIGN KEY (collectionID) REFERENCES collection(collectionID)
);

CREATE TABLE collection (
  collectionID INT PRIMARY KEY,
  name VARCHAR(50) NOT NULL
);

