
<?php
//index.php

require 'header.php';

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
</body>
</html>               