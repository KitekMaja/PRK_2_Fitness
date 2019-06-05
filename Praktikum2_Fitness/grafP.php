
<?php
require 'navbar.php';
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
<html>
<head>
<title>Izpis</title>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link rel="stylesheet" href="MojCSS/profile.css">

<link rel="stylesheet" href="MojCSS/izpis.css">
<!------ Include the above in your HEAD tag ---------->
</head>
<body>

	<div class="container">
		<div class="row profile">
			<div class="col-md-3">
				<div class="profile-sidebar">
					<!-- SIDEBAR USERPIC -->
					<div class="profile-userpic">
						 <?php  echo "<p><br/>{$slika}</p>"; ?>
					</div>
					<!-- END SIDEBAR USERPIC -->
					<!-- SIDEBAR USER TITLE -->
					<div class="profile-usertitle">
					 <?php  echo "<p><br/>{$ime}</p>"; ?>
						<div class="profile-usertitle-name"></div>
						<?php  echo "<p><br/>{$priimek}</p>";  ?>
						<div class="profile-usertitle-job"><?php  echo "<p><br/>{$email}</p>";?></div>
					</div>
					<!-- END SIDEBAR USER TITLE -->
					<!-- SIDEBAR BUTTONS -->
					<div class="profile-userbuttons">
						<a href="dodajnovomeritev.php" class="btn btn-info">Meritve</a>

					</div>

					<!-- END SIDEBAR BUTTONS -->
					<!-- SIDEBAR MENU -->
					<div class="profile-usermenu">
						<ul class="nav">
							<li ><a href="#"> <i
									class="glyphicon glyphicon-home"></i> Profil
							</a></li>
							<li><a href="#"> <i class="glyphicon glyphicon-user"></i> Uredi
							</a></li>
							<li class="active"><a href="graf.php"> <i class="glyphicon glyphicon-stats"></i>
									Graf
							</a></li>
							<li><a href="dodajnovomeritev.php"> <i
									class="glyphicon glyphicon-heart-empty"></i> Vaje
							</a></li>
							<li><a href="dodajnovomeritev.php"> <i
									class="glyphicon glyphicon-list-alt"></i> Objave
							</a></li>


						</ul>


						</ul>
					</div>
					<!-- END MENU -->
				</div>
			</div>
			<div class="col-md-9">
				
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
		</div>
	

	<br>
	<br>

	<br>
</body>
</html>