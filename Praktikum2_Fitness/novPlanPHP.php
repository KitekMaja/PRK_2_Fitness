<?php
session_start();
require 'PHP_skripte/baza_handler.php';

$idu = $_SESSION['id_uporabnika'];
echo $idu;

$naziv = mysqli_real_escape_string($connection, $_POST['naziv']);
$datum="".date("d.m.Y");
$opis = mysqli_real_escape_string($connection, $_POST['opis']);
$tip = mysqli_real_escape_string($connection, $_POST['tip']);
$cilj = mysqli_real_escape_string($connection, $_POST['cilj']);

echo $naziv.", ".$datum.", ".$opis.", ".$tip.", ".$cilj;
echo "<br>";


if(isset($_POST['noviPlan'])){
    if(empty($naziv) ){
        if (empty($naziv)) {  echo "naziv is required"; }
      
        
    }else{
        
        
        
        
        $query = "INSERT INTO `plan` (`naziv`, `opisPlana`, `tipPlana`, `ciljPlana`, `datumNastanka`, `tk_plan_uporabnik`) VALUES 
                ('$naziv', '$opis', '$tip', '$cilj',  '$datum', '$idu');";
        
        
        mysqli_query($connection, $query);
        mysqli_close($connection);
        
        echo $query;
        
        header("Location: planiMoji.php");
    }
    
}

?>


