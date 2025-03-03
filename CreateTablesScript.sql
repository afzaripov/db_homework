create table if not exists Genres(
    id serial primary key, 
    name varchar(50) not null
);

create table if not exists Artists(
    id serial primary key, 
    name varchar(60) not null unique
);

create table if not exists ArtistsGenres(
    artist_id integer references Artists(id) on delete cascade,
    genre_id integer references Genres(id) on delete cascade,
    constraint artist_genre_pk primary key (artist_id, genre_id)
);

create table if not exists Albums(
    id serial primary key,
    title varchar(255) not null,
    release_year int check (release_year >= 1900 and release_year <= extract(year from current_date))
);

create table if not exists ArtistAlbum(
    artist_id integer references Artists(id) on delete cascade,
    album_id integer references Albums(id) on delete cascade,
    constraint artist_album_pk primary key (artist_id, album_id)
);

create table if not exists Tracks(
    id serial primary key,
    title varchar(255) not null,
    duration int check (duration > 0),
    album_id int references Albums(id)
);

create table if not exists Compilations(
    id serial primary key,
    title varchar(100) not null,
    release_year int not null
);

create table if not exists CompilationTrack(
    compilation_id int references Compilations(id) on delete cascade,
    track_id int references Tracks(id) on delete cascade,
    constraint compilation_track_pk primary key (compilation_id, track_id)
);
