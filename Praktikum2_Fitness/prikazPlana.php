<?php
require 'PHP_skripte/baza_handler.php';
include 'header.php';

// $planID=$_SESSION['planId'];
$planID=$_GET['id'];

echo $planID;
//imeVaje	opisVaje	videoVaje	cas	sets	rep	nazivKategorije	nazivPlana


$sql="SELECT 
    vaje.naziv as imeVaje, 
    vaje.opis as opisVaje, 
    vaje.video as videoVaje, 
    cas, 
    sets, 
    rep, 
    kategorijavaje.naziv as nazivKategorije, 
    plan.naziv as nazivPlana
FROM `planvaja` 
    join vaje on tk_planvaja_vaja=vaje.idVaje
    join kategorijavaje on vaje.tk_vaje_kategorijavaje=kategorijavaje.idKategorijaVaje 
    join plan on tk_planvaja_plan=plan.idPlan
where `tk_planvaja_plan`=".$planID.";";

// echo $sql;
echo "<div><table>";
$r = mysqli_query ($connection, $sql);
while ($row = mysqli_fetch_array ($r, MYSQLI_ASSOC)) {
    ?>
    
	<tr><td>ime:<?php echo $row['imeVaje'] ?></td></tr>
	<tr><td>Opis:<?php echo $row['opisVaje'] ?></td></tr>
	<tr><td>video:<?php echo $row['videoVaje'] ?></td></tr>
	<tr><td>cas:<?php echo $row['cas'] ?></td></tr>
	<tr><td>sets:<?php echo $row['sets'] ?></td></tr>
	<tr><td>rep<?php echo $row['rep'] ?></td></tr>
	<tr><td>kategorija:<?php echo $row['nazivKategorije'] ?></td></tr>
	<tr><td>imeplana:<?php echo $row['nazivPlana'] ?></td></tr>
	<tr><td>================</td></tr>
    
    <?php 
}




?>

 <button onclick="window.location.href = 'pdfPlan.php?id=<?php echo $planID?>'">Click Here</button>