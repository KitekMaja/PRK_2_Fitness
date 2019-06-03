<?php
date_default_timezone_set('Europe/Ljubljana');



$db_server = "localhost:3306";
$db_username = "root";
$db_password = "";
$db_database = "baza";

$connection = mysqli_connect($db_server, $db_username, $db_password, $db_database);

mysqli_set_charset($connection, 'utf8');
if (!$connection)
{
    die("Povezava ni uspela: " .mysqli_connect_error());
}
?>


