<?php
// $db_server = "localhost:3307";
// $db_username = "root";
// $db_password = "";
// $db_database = "baza";
// $connection = mysqli_connect($db_server, $db_username, $db_password, $db_database);
// mysqli_set_charset($connection, 'utf8');
// if (!$connection)
// {
//     die("Povezava ni uspela: " .mysqli_connect_error());
// }
// ?>


<?php
date_default_timezone_set('Europe/Ljubljana');


DEFINE ('DB_USER', 'root');
DEFINE ('DB_PASSWORD', '');
DEFINE ('DB_HOST', 'localhost:3306');
DEFINE ('DB_NAME', 'baza');

//$dbc = @mysqli_connect (DB_HOST, DB_USER, DB_PASSWORD, DB_NAME);

$connection = @mysqli_connect (DB_HOST, DB_USER, DB_PASSWORD, DB_NAME) OR die ('Could not connect to MySQL: ' . mysqli_connect_error() );

mysqli_set_charset($connection, 'utf8');
?>
