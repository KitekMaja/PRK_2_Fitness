<?php
$db_server = "localhost";
$db_username = "root";
$db_password = "";
$db_database = "baza";

$connection = mysqli_connect($db_server, $db_username, $db_password, $db_database);

if (!$connection)
{
    die("Povezava ni uspela: " .mysqli_connect_error());
}
/*session_start();

// Define database
define('dbhost', 'localhost');
define('dbuser', 'root');
define('dbpass', '');
define('dbname', 'baza');

// Connecting database
try {
	$connect = new PDO("mysql:host=".dbhost."; dbname=".dbname, dbuser, dbpass);
	$connect->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
}
catch(PDOException $e) {
	echo $e->getMessage();
}

mysqli_set_charset($connect, 'utf8');*/

?>


