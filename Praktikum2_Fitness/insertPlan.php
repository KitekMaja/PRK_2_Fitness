<?php
session_start();
require 'PHP_skripte/baza_handler.php';

$planID=$_SESSION['planId'];
// echo $planID."<br>";


$checkedVall=$_SESSION['polje'];
// $checkedVall= implode(',', $_POST['vaje']);
// echo $checkedVall;
$poljeX= array();
$poljeX=explode(",",$checkedVall);

$sqlPriprava=null;

for ($i = 0; $i < count($poljeX); $i++) {
//     echo "<br>".$poljeX[$i];
    list($string1, $string2) = explode('-', $poljeX[$i]);
//     echo "-->".$string1."-".$string2;
//     echo "<br>.VALUES ('$string1','$string2')";
    $sqlPriprava=$sqlPriprava."('$planID','$string2'),";
   
}
// echo "<br>";
// echo $sqlPriprava;
// echo "<br>";echo "<br>";

$query= "INSERT INTO planvaja (tk_planvaja_plan, tk_planvaja_vaja) VALUES".$sqlPriprava.";";
$sql= substr($query, 0, -2);
// echo $sql."<br>";

mysqli_query($connection, $sql);
mysqli_close($connection);

header("Location: prikazPlana.php");


?>
