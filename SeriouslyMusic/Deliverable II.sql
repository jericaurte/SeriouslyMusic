--IF OBJECT_ID('dbo.LABEL') IS NOT NULL
--    DROP TABLE LABEL

CREATE TABLE LABEL
(LabelID char(100),
LabelName char(100),
CONSTRAINT LABEL_PK PRIMARY KEY(LabelID));

CREATE TABLE GENRE
(GenreID Integer,
GenreName varchar(100),
CONSTRAINT GENRE_PK PRIMARY KEY(GenreID));


CREATE TABLE ARTIST
(ArtistID Integer,
ArtistName varchar(100),
CONSTRAINT ARTIST_PK PRIMARY KEY(ArtistID));

CREATE TABLE ALBUM
(AlbumID Integer,
AlbumName char(100),
TotalSongs Integer,
ArtistID Integer,
LabelID char(100),
CONSTRAINT ALBUM_PK PRIMARY KEY(AlbumID),
CONSTRAINT ALBUM_ARTIST_FK FOREIGN KEY(ArtistID)
REFERENCES ARTIST(ArtistID),
CONSTRAINT ALBUM_LABEL_FK FOREIGN KEY(LabelID)
REFERENCES Label(LabelID)
);

CREATE TABLE SONG 
(SongID Integer,
AlbumID Integer,
SongName char(100),
SongTime Time,
GenreID Integer,
CONSTRAINT SONG_PK PRIMARY KEY(SongID),
CONSTRAINT SONG_GENRE_FK FOREIGN KEY(GenreID)
REFERENCES GENRE(GenreID),
CONSTRAINT SONG_ALBUM_FK FOREIGN KEY(AlbumID)
REFERENCES ALBUM(AlbumID));
--CONSTRAINT SONG_GroupSong_FK FOREIGN KEY(GroupSongID)
--REFERENCES GroupSong(GroupSongID)

CREATE TABLE GroupSong
(GroupSongID Integer,
SongID Integer,
GroupID Integer,
AlbumID Integer,
CONSTRAINT GroupSong_PK PRIMARY KEY(GroupSongID, SongID, GroupID),
CONSTRAINT GroupSong_ALBUM_FK FOREIGN KEY(AlbumID)
REFERENCES ALBUM(AlbumID),
CONSTRAINT GroupSong_SONG_FK FOREIGN KEY(SongID)
REFERENCES SONG(SongID));

--CONSTRAINT GroupSong_SONG_FK FOREIGN KEY(SongID)
--REFERENCES SONG(SongID),
--CONSTRAINT GroupSong_GROUPS_FK FOREIGN KEY(GroupID)
--REFERENCES GROUPS(GroupID),

CREATE TABLE GROUPS
(GroupID Integer,
ArtistID Integer,
GroupName varchar(100), 
CONSTRAINT GROUPS_PK PRIMARY KEY(GroupID, ArtistID),
CONSTRAINT GROUPS_ARTIST_FK FOREIGN KEY(ArtistID) 
REFERENCES ARTIST(ArtistID));





