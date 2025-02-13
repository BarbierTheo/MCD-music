SELECT user_mail as `Utilisateur`, playlist_name as `Nom de la playlist`, 
GROUP_CONCAT(DISTINCT music_title SEPARATOR ', ') as `Musiques présentes dans la playlist`, 
GROUP_CONCAT(DISTINCT genre_name SEPARATOR ', ') as `Genres présents dans la playlist` FROM playlists AS a 
NATURAL JOIN users AS b NATURAL JOIN playlists_music AS c INNER JOIN music AS d ON d.music_id = c.music_id 
INNER JOIN music_genres AS e ON d.music_id = e.music_id 
INNER JOIN genres AS f ON f.genre_id = e.genre_id GROUP BY user_mail, playlist_name;


SELECT COUNT(music_title) AS `Nombre de chansons disponible`;
FROM `music`;


SELECT user_mail, COUNT(DISTINCT playlist_name) AS `Nombre de playlists par users` 
FROM `playlists` NATURAL JOIN users, playlists_music GROUP BY user_mail;


SELECT DISTINCT b.playlist_id  AS `ID de la playlist`, user_mail  AS `Adresse mail de l'user`, playlist_name AS `Nom de la playlist`, 
GROUP_CONCAT(music_title SEPARATOR ', ') AS `Musique présentes dans la playlist`
FROM users
NATURAL JOIN music AS a
NATURAL JOIN playlists AS b
NATURAL JOIN playlists_music AS c
GROUP BY b.playlist_id;


SELECT music_title AS `Chansons`, GROUP_CONCAT(genre_name SEPARATOR ', ') AS `Genres associés`
FROM music
NATURAL JOIN music_genres, genres
GROUP BY music_title;



SELECT DISTINCT music_title, COUNT(a.music_id) AS `Nombre de fois où le son apparaît` FROM music AS a 
NATURAL JOIN playlists_music GROUP BY music_title ORDER BY `Nombre de fois où le son apparaît` DESC;
