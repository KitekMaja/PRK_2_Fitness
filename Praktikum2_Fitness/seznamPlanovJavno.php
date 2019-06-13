<br>
<?php
require 'PHP_skripte/baza_handler.php';
// include 'header.php';

// $q="select * from plan where tipPlana='public';";

$q = "SELECT idPlan, naziv, SUBSTRING(`opisPlana`, 1, 250) as opisPlana, ciljPlana, datumNastanka, tipPlana, COUNT(DISTINCT `tk_planvaja_vaja`) AS `kolikoVajInPlanu` 
FROM plan JOIN planvaja on tk_planvaja_plan=plan.idPlan WHERE tipPlana='Javen' GROUP BY idPlan";

$r = mysqli_query($connection, $q);
while ($row = mysqli_fetch_array($r, MYSQLI_ASSOC)) {
    ?>





<div class='container'>
	<table id='seznam' class=table table-striped border='1'>
		<tr>
			<td colspan='2' align='center'><a href='prikazPlana.php?id=<?php echo $row['idPlan'] ?>'>
				Naziv plana: <?php echo $row['naziv'] ?>,  &#352;tevilo vaj: <?php echo $row['kolikoVajInPlanu'] ?>,  
				Cilj: <?php echo $row['ciljPlana'] ?>,  Ustvarjeno: <?php echo $row['datumNastanka'] ?></a><br>
			</td>
			
		</tr>
		<tr><td colspan='4' align='center' style="table-layout: fixed;"><?php echo $row['opisPlana'] ?></td></tr>
	</table>
</div>






<?php
}

// select * from plan join planvaja on tk_planvaja_plan=plan.idPlan where tipPlana='public'
// SELECT idPlan, COUNT(DISTINCT `tk_planvaja_vaja`) AS `tk_planvaja_vaja` FROM plan join planvaja on tk_planvaja_plan=plan.idPlan GROUP BY idPlan

?>


<!-- 

<div class='container'>
	<table id='seznam' class=table table-striped border='1'>
		<tr>
			<td colspan='2' align='center'><?php echo $row['naziv'] ?>, 
										<?php //echo $row['opisPlana'] ?>,<?php echo $row['ciljPlana'] ?> ,<?php echo $row['tipPlana'] ?> , Ustvarjeno: <?php echo $row['datumNastanka'] ?></a>
			</td>
		</tr>
		<tr>
			<td colspan='4' align='center' style="table-layout: fixed;">
										<?php echo $row['opisPlana'] ?>
										</td>
		</tr>
	</table>
</div>

 -->
