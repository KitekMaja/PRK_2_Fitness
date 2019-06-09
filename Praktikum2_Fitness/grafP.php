
<?php
require 'header.php';
include 'PHP_skripte/baza_handler.php';
include 'PHP_skripte/baza_OOPhandler.php';
include 'sloutf.php';
// izpis podrobnosti posameznih slik
$row = FALSE; // predvidevamo, da ni podrobnosti

$idu = $_SESSION['id_uporabnika'];

// pridobivanje podatkov o sliki
$q = "SELECT * FROM  uporabnik where idUporabnik=$idu";
$ss = "SELECT * FROM  meritve where tk_meritve_uporabnik=$idu";
$r = mysqli_query($connection, $q);

$sss = mysqli_query($connection, $ss);

if (mysqli_num_rows($r) == 1) { // Good to go!

    // pridobivanje podatkov
    $row = mysqli_fetch_array($r, MYSQLI_ASSOC);
    $rowm = mysqli_fetch_array($sss, MYSQLI_ASSOC);
    $ime = $row['ime']; // zaèetek strani HTML
    $priimek = $row['priimek'];
    $email = $row['email'];
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<!--  This file has been downloaded from https://bootdey.com  -->
<!--  All snippets are MIT license https://bootdey.com/license -->
<title>Graf</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<link
	href="http://netdna.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
	rel="stylesheet">

<link rel="stylesheet" href="MojCSS/profile.css">

</head>
<body>

	<link
		href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
		rel="stylesheet">
	<div class="container">

		<div class="row">
			<div class="col-md-4 mb30">
				<div class="card">

					<div class="card-content pt20 pb20 profile-header">
                     <?php  echo "<p><br/>{$slika}</p>"; ?>
                    <h4 class="card-title text-center mb20"> <?php  echo "<p><br/>{$ime}  {$priimek}</p>"; ?><?php  echo "<p>{$email}</p>"; ?> </h4>

						<hr>

						<div class="profile-userbuttons">

							<a href="profil.php" class="btn btn-light btn-block">Profil</a>
							<br> <a href="meritvePrikaz.php"
								class="btn btn-light btn-block">Senami</a> <br> <a
								href="meritvePrikaz.php" class="btn btn-light btn-block">Graf</a>
							<br> <a href="meritvePrikaz.php"
								class="btn btn-light btn-block">Meritve</a> <br> <br>
						</div>
					</div>
					<!--content-->

				</div>
			</div>
			<div class="col-md-8 mb30">
				<div class="card">
					<div>

						<!-- Nav tabs -->
						<ul class="nav tabs-admin" role="tablist">
							<li role="presentation" class="nav-item"><a
								class="nav-link active" href="#t1" aria-controls="t1" role="tab"
								data-toggle="tab">Graf</a></li>
						</ul>

						<!-- Tab panes -->
						<div class="tab-content admin-tab-content pt30">
							<div role="tabpanel" class="tab-pane active show" id="t1">
							
											
<?php
$connect = mysqli_connect("localhost", "root", "", "baza");
$idu = $_SESSION['id_uporabnika'];
$queryy = " SELECT * FROM meritve where tk_meritve_uporabnik=$idu";
$prvameritev;
$query = " SELECT * FROM meritev where tk_uporabnik=$idu ORDER BY datum asc";
$dataPointss = array();
$rr = mysqli_query($connect, $queryy);
$rrow =  mysqli_fetch_array ($rr, MYSQLI_ASSOC);
$prvameritev = $rrow['teza'];
$int = 0;
$r = mysqli_query ($connect, $query);
$aray = array();
$dataa = array("y" => $rrow['teza'], "label" => $rrow['datumVnosa']);
array_push($dataPointss, $dataa);
while ($row = mysqli_fetch_array ($r, MYSQLI_ASSOC)) {
    
    $aray[$int] =  $row['teza'];
    $data = array("y" => $row['teza'], "label" => $row['datum']);
    
    array_push($dataPointss, $data);
    $int++;
}
$max =0;
$min = 200;
foreach($aray as $value) {
    if($min>$value)
    $min = $value;
    
    if($max<$value)
        $max=$value;
}
if($min >$prvameritev)
    $min = $prvameritev;
if($max < $prvameritev)
    $max = $prvameritev;
    echo '<!---';
    $maxx = var_dump(round($max, 0, PHP_ROUND_HALF_UP));
    $minn = var_dump(round($min, 0, PHP_ROUND_HALF_DOWN));
    echo '--->';
echo '</table>';
mysqli_close($connect);


?>
<!DOCTYPE HTML>
<html>
<head>
<script>
window.onload = function () {
 
var chart = new CanvasJS.Chart("chartContainer", {
	title: {
		text: "datum"
	},
	axisY: {

		minimum: <?php echo json_encode($min); ?>,
				maximum: <?php echo json_encode($maxx); ?>,
		title: "kilogrami"
	},
	data: [{
		type: "line",
		dataPoints: <?php echo json_encode($dataPointss, JSON_NUMERIC_CHECK); ?>
	}]
});
chart.render();
 
}
</script>
</head>
<body>
<div id="chartContainer" style="height: 370px; width: 100%;"></div>
<script src="https://canvasjs.com/assets/script/canvasjs.min.js"></script>

			</div>
							
							
							<div role="tabpanel" class="tab-pane" id="t4"></div>
						</div>

					</div>
				</div>
			</div>
		</div>
	</div>

	<script
		src="http://netdna.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
	<script type="text/javascript">
	

</script>
</body>
</html>