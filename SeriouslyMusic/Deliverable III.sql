/******** Insert rows into LABEL table ******************/

INSERT INTO LABEL VALUES ('CLR','Capitol Latin Records'); --J Balvin
INSERT INTO LABEL VALUES ('CAP','Capitol Records'); -- Jon Bellion
INSERT INTO LABEL VALUES ('AR','Atlantic Records');  -- Trey Songz
INSERT INTO LABEL VALUES ('SMR','Sony Music Records'); -- Beyonce
INSERT INTO LABEL VALUES ('GR','Geffen Records'); -- Blink 182
INSERT INTO LABEL VALUES ('BMR','Big Machine Records'); -- Rascal Flatts
INSERT INTO LABEL VALUES ('GMR','GOOD Music Records'); -- Kayne West
INSERT INTO LABEL VALUES ('COL','Columbia Records'); -- chainsmokers
INSERT INTO LABEL VALUES ('ZR', 'Zomba Records');


/******** Insert rows into GENRE table ******************/

INSERT INTO GENRE VALUES (1,'Rock');
INSERT INTO GENRE VALUES (2,'Hip Hop');
INSERT INTO GENRE VALUES (3,'Country');
INSERT INTO GENRE VALUES (4,'Rap');
INSERT INTO GENRE VALUES (5,'Latin');
INSERT INTO GENRE VALUES (6,'R&B');
INSERT INTO GENRE VALUES (7,'Dance');
INSERT INTO GENRE VALUES (8,'Pop');


/******** Insert rows into ARTIST table ******************/

INSERT INTO ARTIST VALUES (1,'Jon Bellion');
INSERT INTO ARTIST VALUES (2,'Beyonce');
INSERT INTO ARTIST VALUES (3,'Rascal Flatts');
INSERT INTO ARTIST VALUES (4,'Kayne West');
INSERT INTO ARTIST VALUES (5,'Blink 182'); 
INSERT INTO ARTIST VALUES (6,'Trey Songz');
INSERT INTO ARTIST VALUES (7,'The Chainsmokers');
INSERT INTO ARTIST VALUES (8,'J Balvin');
INSERT INTO ARTIST VALUES (9,'Justin Timberlake');
INSERT INTO ARTIST VALUES (10,'Tom DeLonge');
INSERT INTO ARTIST VALUES (11, '*NSYNC');
INSERT INTO ARTIST VALUES (12, 'Destinys Child');



/******** Insert rows into ALBUM table ******************/
/*AlbumID Integer,
AlbumName char,
TotalSongs Integer,
ArtistID Integer,
LabelID char,*/
INSERT INTO ALBUM VALUES (11, 'Energía', 15, 8, 'CLR');
INSERT INTO ALBUM VALUES (22, 'Lemonade', 10, 2, 'SMR');
INSERT INTO ALBUM VALUES (33, 'The Human Condition', 14, 1, 'CAP');
INSERT INTO ALBUM VALUES (44, 'The Life of Pablo', 10, 4, 'GMR');
INSERT INTO ALBUM VALUES (55, 'Nothing Like This', 11, 3, 'BMR');
INSERT INTO ALBUM VALUES (66, 'The Writings on The Wall', 16, 2, 'SMR');
INSERT INTO ALBUM VALUES (77, 'Take off Your Pants and Jacket', 13, 5, 'GMR');
INSERT INTO ALBUM VALUES (88, 'Trigga Reloaded', 18, 6, 'AR');
INSERT INTO ALBUM VALUES (99, 'BEYONCE', 32, 2, 'SMR');
INSERT INTO ALBUM VALUES (10, 'Yeezus', 10, 4, 'GMR');
INSERT INTO ALBUM VALUES (20, '4', 14, 2, 'SMR');
INSERT INTO ALBUM VALUES (30, 'THE 20/20', 10, 9, 'SMR');
INSERT INTO ALBUM VALUES (40, 'Memories...Do Not Open', 12, 7, 'COL');
INSERT INTO ALBUM VALUES (50, 'No Strings Attached', 12, 11, 'ZR'); 



/******** Insert rows into SONG table ******************/
/*SongID Integer,
AlbumID Integer,
SongName char,
SongTime Time,
GenreID Integer,*/
INSERT INTO SONG VALUES (1, 20, 'End of Time', '3:44', 8);
INSERT INTO SONG VALUES (2, 10, 'Bound 2', '3:49', 4);
INSERT INTO SONG VALUES (3, 11, 'Solitario', '3:27', 5);
INSERT INTO SONG VALUES (4, 55, 'I Wont Let Go', '3:47', 3);
INSERT INTO SONG VALUES (5, 33, 'He is The Same', '4:01', 8);
INSERT INTO SONG VALUES (6, 44, 'Famous', '3:16', 2);
INSERT INTO SONG VALUES (7, 22, 'Hold Up', '3:41', 8);
INSERT INTO SONG VALUES (8, 99, 'Love On Top', '4:27', 8);
INSERT INTO SONG VALUES (9, 22, 'Sorry', '3:52', 8);
INSERT INTO SONG VALUES (10, 66, 'Say My Name', '4:31', 6);
INSERT INTO SONG VALUES (11, 40, 'Something Just Like This', '4:07', 7);
INSERT INTO SONG VALUES (12, 77, 'Anthem, Pt. 2', '3:47', 1);
INSERT INTO SONG VALUES (13, 22, 'Freedom', '4:49', 8);
INSERT INTO SONG VALUES (14, 30, 'Suit & Tie', '5:26', 8);
INSERT INTO SONG VALUES (15, 50, 'Bye Bye Bye', '3:20', 8);
INSERT INTO SONG VALUES (16, 11, 'Safari', '3:25', 5);



/******** Insert rows into GroupSong table ******************/

/*GroupSongID Integer,
SongID Integer,
GroupID Integer,
AlbumID Integer,*/

INSERT INTO GroupSong VALUES (1, 10, 1, 66);
INSERT INTO GroupSong VALUES (2, 11, 3, 40);
INSERT INTO GroupSong VALUES (3, 12, 2, 77);
INSERT INTO GroupSong VALUES (4, 13, 5, 22);
INSERT INTO GroupSong VALUES (5, 14, 6, 30);
INSERT INTO GroupSong VALUES (6, 15, 4, 50);
INSERT INTO GroupSong VALUES (7, 16, 7, 11);



/******** Insert rows into GROUPS table ******************/
/*GroupID Integer,
ArtistID Integer,
GroupName varchar,*/

INSERT INTO GROUPS VALUES(1, 12, 'Destinys Child');
INSERT INTO GROUPS VALUES(2, 5, 'Blink 182');
INSERT INTO GROUPS VALUES(3, 7, 'The Chainsmokers');
INSERT INTO GROUPS VALUES(4, 9, '*NSYNC');
INSERT INTO GROUPS VALUES(5, 2, 'Beyonce feat. Kendrick Lemar');
INSERT INTO GROUPS VALUES(6, 9, 'Justin Timberlake feat. JAY Z');
INSERT INTO GROUPS VALUES(7, 8, 'J Balvin feat. Pharrell Williams, BIA & Sky');