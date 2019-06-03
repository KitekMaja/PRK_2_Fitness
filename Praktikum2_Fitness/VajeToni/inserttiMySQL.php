INSERT INTO `kategorijavaje` (`id`, `naziv`) VALUES
(1, 'Cardio'),
(2, 'Rame'),
(3, 'Roke'),
(4, 'Prsa'),
(5, 'Trebuh'),
(6, 'Noge');

====

INSERT INTO `uporabnik` (`id`, `ime`) VALUES
(1, 'Uporabnik1'),
(2, 'Uporabnik2'),
(3, 'Uporabnik3'),
(4, 'Uporabnik4'),
(5, 'Uporabnik5'),
(6, 'Uporabnik6'),
(7, 'Uporabnik7'),
(8, 'Uporabnik8'); 


=============


INSERT INTO `vaja`(`naziv`, `opis`, `video`, `cas`, `set`, `rep`, `KategorijaVaje_id`, `Uporabnik_id`) VALUES 
( 'Vaja1' ,'Opis1' ,'video1' ,'11' ,'1' ,'99' ,'1' ,'1' ),
( 'Vaja2' ,'Opis2' ,'video2' ,'22' ,'2' ,'88' ,'2' ,'1' ),
( 'Vaja3' ,'Opis3' ,'video3' ,'33' ,'3' ,'77' ,'3' ,'1' ),
( 'Vaja4' ,'Opis4' ,'video4' ,'44' ,'4' ,'66' ,'4' ,'1' ),
( 'Vaja5' ,'Opis5' ,'video5' ,'55' ,'5' ,'55' ,'5' ,'1' ),
( 'Vaja6' ,'Opis6' ,'video6' ,'66' ,'6' ,'44' ,'6' ,'1' ),
( 'Vaja7' ,'Opis7' ,'video7' ,'77' ,'7' ,'33' ,'1' ,'1' ),
( 'Vaja8' ,'Opis8' ,'video8' ,'88' ,'8' ,'22' ,'2' ,'2' ),
( 'Vaja9' ,'Opis9' ,'video9' ,'99' ,'9' ,'11' ,'3' ,'2' ),
( 'Vaja10','Opis10' ,'video10' ,'100' ,'10' ,'222' ,'4' ,'2' ),
( 'Vaja11','Opis11' ,'video11' ,'110' ,'11' ,'333' ,'5' ,'2' ),
( 'Vaja12','Opis12' ,'video12' ,'120' ,'12' ,'444' ,'6' ,'2' );