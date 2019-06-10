<?php
session_start();
$planID=$_SESSION['planId'];
require 'baza_handler.php';

echo $planID;

$sql="SELECT 
    vaje.naziv as imeVaje, 
    vaje.opis as opisVaje, 
    vaje.video as videoVaje, 
    cas, sets, rep, 
    kategorijavaje.naziv as nazivKategorije, 
    plan.naziv as nazivPlana
FROM `planvaja` 
    join vaje on tk_planvaja_vaja=vaje.idVaje
    join kategorijavaje on vaje.tk_vaje_kategorijavaje=kategorijavaje.idKategorijaVaje 
    join plan on tk_planvaja_plan=plan.idPlan
where `tk_planvaja_plan`=".$planID;

// echo $sql;
echo "<div><table>";
$r = mysqli_query ($connection, $sql);
while ($row = mysqli_fetch_array ($r, MYSQLI_ASSOC)) {
    ?>
    
	<tr><td><?php echo $row['imeVaje'] ?></td></tr>
	<tr><td><?php echo $row['opisVaje'] ?></td></tr>
	<tr><td><?php echo $row['videoVaje'] ?></td></tr>
	<tr><td><?php echo $row['cas'] ?></td></tr>
	<tr><td><?php echo $row['sets'] ?></td></tr>
	<tr><td><?php echo $row['rep'] ?></td></tr>
	<tr><td><?php echo $row['nazivKategorije'] ?></td></tr>
	<tr><td><?php echo $row['nazivPlana'] ?></td></tr>
	<tr><td>================</td></tr>
    
    <?php 
}
?>