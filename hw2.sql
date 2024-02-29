


SELECT name
FROM collection
WHERE EXTRACT(YEAR FROM date_release) BETWEEN 2018 AND 2020;

SELECT Track_name
FROM Tracks
WHERE LOWER(Track_name) LIKE '%jazz%';

SELECT Artist_name
FROM Artists
WHERE Artist_name NOT LIKE '% %';

SELECT Track_name
FROM Tracks
WHERE Track_time >= 210;

/*  
fixed 
*/  

SELECT Track_name, Track_time
FROM Tracks
WHERE Track_time = (
    SELECT MAX(Track_time)
    FROM Tracks
);

/*  
fixed 
*/  


SELECT Genres.Genre_name, COUNT(Artists.ArtistID) AS Number_of_Artists
FROM Genres
LEFT JOIN genre_band ON Genres.GenreID = genre_band.genreID
LEFT JOIN Artists ON genre_band.artistID = Artists.ArtistID
GROUP BY Genres.Genre_name;


SELECT COUNT(Tracks.TrackID) AS Number_of_Tracks
FROM Tracks
INNER JOIN Albums ON Tracks.AlbumID = Albums.AlbumID
WHERE Albums.Albums_year BETWEEN 2019 AND 2020;


SELECT Albums.Albums_name, AVG(Tracks.Track_time) AS Average_Track_Duration
FROM Tracks
INNER JOIN Albums ON Tracks.AlbumID = Albums.AlbumID
GROUP BY Albums.Albums_name;

/*  
fixed 
*/  

SELECT Artists.Artist_name
FROM Artists
WHERE Artists.ArtistID NOT IN (
    SELECT album_artists.ArtistID
    FROM album_artists
    JOIN Albums ON album_artists.AlbumID = Albums.AlbumID
    WHERE Albums.Albums_year = 2020
)


/*  
fixed 
*/  

SELECT collection.name
FROM collection
INNER JOIN track_collection ON collection.collectionID = track_collection.collectionID
INNER JOIN Tracks ON track_collection.track_collectionID = Tracks.TrackID
INNER JOIN album_artists ON Tracks.AlbumID = album_artists.AlbumID
INNER JOIN Artists ON album_artists.ArtistID = Artists.ArtistID
WHERE Artists.Artist_name = 'John Smith';
