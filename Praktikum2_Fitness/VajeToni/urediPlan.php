<?php
require 'baza_handler.php';


$sql = "SELECT idKategorijaVaje, naziv FROM kategorijavaje where 1";
$result = mysqli_query($connection, $sql);

$polje=array();

while ($row = mysqli_fetch_array($result)) {
    $id = $row["idKategorijaVaje"];
    $naziv = $row["naziv"];
//     $polje[$id][$naziv];
}


?>













