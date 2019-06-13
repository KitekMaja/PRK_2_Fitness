<head>
<script type="text/javascript"
	src="http://services.iperfect.net/js/IP_generalLib.js"></script>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<link
	href="http://netdna.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
	rel="stylesheet">

<link rel="stylesheet" href="MojCSS/profile.css">
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet">
</head>
<br>
<div class="tab-content admin-tab-content pt30">

<?php
require 'PHP_skripte/baza_handler.php';

// $q="select * from plan where tipPlana='public';";

$q = "SELECT idPlan, naziv, SUBSTRING(`opisPlana`, 1, 60) as opisPlana, ciljPlana, datumNastanka, tipPlana, COUNT(DISTINCT `tk_planvaja_vaja`) AS `kolikoVajInPlanu` 
FROM plan JOIN planvaja on tk_planvaja_plan=plan.idPlan WHERE tipPlana='Javen' GROUP BY idPlan";

$r = mysqli_query($connection, $q);
while ($row = mysqli_fetch_array($r, MYSQLI_ASSOC)) {
    ?>




							<div role="tabpanel" class="tab-pane active show" id="t1">

<div class='table-responsive'>
	<table id='seznam' class='table table-hover' >
		<tr>
			<td colspan='2' align='center'><a href='prikazPlana.php?id=<?php echo $row['idPlan'] ?>' style="color: #000000">
				Naziv plana: <?php echo $row['naziv'] ?>,  &#352;tevilo vaj: <?php echo $row['kolikoVajInPlanu'] ?>,  
				Cilj: <?php echo $row['ciljPlana'] ?>,  Ustvarjeno: <?php echo $row['datumNastanka'] ?></a><br>
			</td>
			
		</tr>
		<tr><td colspan='4' align='center' style="table-layout: fixed;" class="info"><?php echo $row['opisPlana'] ?></td></tr>
	</table>
</div>

</div>



<?php
}

// select * from plan join planvaja on tk_planvaja_plan=plan.idPlan where tipPlana='public'
// SELECT idPlan, COUNT(DISTINCT `tk_planvaja_vaja`) AS `tk_planvaja_vaja` FROM plan join planvaja on tk_planvaja_plan=plan.idPlan GROUP BY idPlan

?>
</div>

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
