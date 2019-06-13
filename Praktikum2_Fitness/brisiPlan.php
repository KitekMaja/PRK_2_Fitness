<?php
session_start();
require 'PHP_skripte/baza_handler.php';

$planID=$_GET['id'];
$_SESSION['planId']=$planID;
// $sql ="DELETE FROM planvaja WHERE tk_planvaja_plan=".$planID."; DELETE FROM plan WHERE idPlan=".$planID.";";

$sql ="DELETE FROM planvaja WHERE tk_planvaja_plan=".$planID.";";
echo $sql;
mysqli_query($connection, $sql);


$sql1 ="DELETE FROM plan WHERE idPlan=".$planID.";";
echo $sql;
mysqli_query($connection, $sql1);
mysqli_close($connection);



 header("Location: planiMoji.php");
    
?>

    