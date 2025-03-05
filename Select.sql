-- Название и продолжительность самого длительного трека
SELECT title, duration
FROM Tracks
ORDER BY duration DESC
LIMIT 1;

-- Треки > 210 секунд
SELECT title
FROM Tracks
WHERE duration >= 210;

-- Сборники от 2018-2020
SELECT title
FROM Compilations
WHERE release_year BETWEEN 2018 AND 2020;

-- Имя исполнителя из одного слова
SELECT name
FROM Artists
WHERE name NOT LIKE '% %';

-- Название треков, где есть "my" или "мой"
SELECT title
FROM Tracks
WHERE title ILIKE 'my'
   OR title ILIKE 'мой'
   OR title ILIKE '% my %'
   OR title ILIKE '% мой %'
   OR title ILIKE 'my %'
   OR title ILIKE 'мой %'
   OR title ILIKE '% my'
   OR title ILIKE '% мой';

-- Задание №3
-- Кол-во исполнителей в жанре
SELECT g.name, COUNT(ag.artist_id) AS artist_count
FROM Genres g
LEFT JOIN ArtistsGenres ag ON g.id = ag.genre_id
GROUP BY g.name;

-- Кол-во треков в альбомах 2019-2020
SELECT COUNT(t.id) AS track_count
FROM Tracks t
JOIN Albums a ON t.album_id = a.id
WHERE a.release_year BETWEEN 2019 AND 2020;

-- Средняя продолжительность треков по альбому
SELECT a.title, AVG(t.duration) AS avg_duration
FROM Albums a
JOIN Tracks t ON a.id = t.album_id
GROUP BY a.title;

-- Исполнители без треков в 2020
SELECT name
FROM Artists
WHERE id NOT IN (
    SELECT aa.artist_id
    FROM ArtistAlbum aa
    JOIN Albums al ON aa.album_id = al.id
    WHERE al.release_year = 2020
);

-- Сборники в которых есть треки Billie Eilish
SELECT DISTINCT c.title
FROM Compilations c
JOIN CompilationTrack ct ON c.id = ct.compilation_id
JOIN Tracks t ON ct.track_id = t.id
JOIN Albums al ON t.album_id = al.id
JOIN ArtistAlbum aa ON al.id = aa.album_id
JOIN Artists a ON aa.artist_id = a.id
WHERE a.name = 'Billie Eilish';

