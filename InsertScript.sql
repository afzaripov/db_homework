-- Genres
INSERT INTO Genres (name) VALUES
('Pop'),
('Hip-Hop'),
('Rock');

-- Artists
INSERT INTO Artists (name) VALUES
('Billie Eilish'),
('Drake'),
('Imagine Dragons'),
('TheWeeknd');

-- ArtistsGenres
INSERT INTO ArtistsGenres (artist_id, genre_id) VALUES
(1, 1), -- Billie Eilish - Pop
(2, 2), -- Drake - Hip-Hop
(3, 3), -- Imagine Dragons - Rock
(4, 1); -- TheWeeknd - Pop

-- Albums
INSERT INTO Albums (title, release_year) VALUES
('Happier Than Ever', 2021),
('To Pimp a Butterfly', 2015),
('Future Nostalgia', 2020);

-- ArtistAlbum
INSERT INTO ArtistAlbum (artist_id, album_id) VALUES
(1, 1), -- Billie Eilish - Happier Than Ever
(2, 2), -- Drake - To Pimp a Butterfly
(4, 3); -- TheWeeknd - Future Nostalgia

-- Tracks
INSERT INTO Tracks (title, duration, album_id) VALUES
('My Boy', 220, 1),          -- Happier Than Ever (3:40)
('Happier Than Ever', 298, 1), -- Happier Than Ever (4:58)
('HUMBLE.', 177, 2),         -- To Pimp a Butterfly (2:57)
('King Kunta', 235, 2),      -- To Pimp a Butterfly (3:55)
('Levitating', 203, 3),      -- Future Nostalgia (3:23)
('Break My Heart', 221, 3);  -- Future Nostalgia (3:41)

-- Compilations
INSERT INTO Compilations (title, release_year) VALUES
('Pop Hits', 2018),
('Best of 2019', 2019),
('2020 Vibes', 2020),
('Rock Classics', 2022);

-- CompilationTrack
INSERT INTO CompilationTrack (compilation_id, track_id) VALUES
(1, 1),  -- Pop Hits - My Boy
(2, 4),  -- Best of 2019 - King Kunta
(3, 5),  -- 2020 Vibes - Levitating
(4, 3),  -- Rock Classics - HUMBLE.
(1, 5),  -- Pop Hits - Levitating
(3, 6);  -- 2020 Vibes - Break My Heart