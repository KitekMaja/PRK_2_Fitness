<?php
require 'baza_handler.php';

$naziv = mysqli_real_escape_string($connection, $_POST['naziv']);
$datum="".date("d.m.Y");

echo $datum;

if(isset($_POST['noviPlan'])){
    if(empty($naziv) ){
        if (empty($naziv)) {  echo "naziv is required"; }
      
        
    }else{
        
        
        
        
        $query = "INSERT INTO `plan` (`naziv`, `datumNastanka`, `tk_plan_uporabnik`) VALUES 
                ('$naziv', '$datum', '2');";
        
        
        mysqli_query($connection, $query);
        mysqli_close($connection);
        
        echo $query;
        
//         header("Location: seznamVaj.php");
    }
    
}

?>


