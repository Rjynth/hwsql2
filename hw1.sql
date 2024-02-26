INSERT INTO Artists (ArtistID, Artist_name, Artist_alias)
VALUES
  (1, 'John Smith', 'JS'),
  (2, 'Anna Johnson', NULL),
  (3, 'Michael Brown', 'MB'),
  (4, 'Emily', NULL);

 INSERT INTO Genres (GenreID, Genre_name)
VALUES
  (1, 'Rock'),
  (2, 'Pop'),
  (3, 'Jazz');

 insert into genre_band (genreid, artistid)
values 
 (1,1),
 (2,2),
 (3,3),
 (3,4);

 
 INSERT INTO Albums (AlbumID, Albums_name, Albums_year)
VALUES
  (1, 'Greatest Hits', 2005),
  (2, 'Love Songs', 2010),
  (3, 'Summer Vibes', 2020);
 
 
 INSERT INTO Tracks (TrackID, Track_name, Track_time, AlbumID)
VALUES
  (1, 'Rock Anthem', 180, 1),
  (2, 'Sunset Serenade', 240, 2),
  (3, 'Smooth Jazz', 210, 3),
  (4, 'Dance Party', 200, 1)
  (5, 'Controled Depopulation', 270, 1),
  (6, 'Maniatic Control', 310, 2);



 INSERT INTO collection (collectionID, name, date_release)
VALUES
  (1, 'Best of 2010s', '2018-03-07'),
  (2, 'Chill Vibes', '2019-03-07'),
  (3, 'Party Mix', '2020-03-07'),
  (4, 'Love Ballads',  '1992-03-07');



