
<?php
require 'PHP_skripte/baza_handler.php';
require 'sloutf.php';

if (isset($_POST['izracun'])) {
    $errMsg = '';
    
    $teza = $_POST['teza'];
    $visina = $_POST['visina'];
    $rezultat;
    
    if ($teza == '')
        $errMsg = 'Vnesite vašo težo';
        if ($visina == '')
        $errMsg = 'Vnesite vašo višino';
        $prej = 0.0;
        $prej = $visina*$visina;
        $prej = $teza/$prej;
        $prej *= 100;
        $prej = $prej*100;
        
        echo round($prej);
}


?>

<html>

<head>
<title>izracun bmi</title>
<script type="text/javascript" src="http://services.iperfect.net/js/IP_generalLib.js"></script>
</head>
<body>

	<div align="center">
<?php
if (isset($errMsg)) {
    echo '<div style="color:#FF0000;text-align:center;font-size:17px;">' . $errMsg . '</div>';
}
?>
   <h1 class="register-title">BMI izraèun</h1>
		<form action="" method="post">
			<input  type="number" name="teza"
				placeholder="60 kg"
				value="<?php if(isset($_POST['teza'])) echo $_POST['teza'] ?>"
				autocomplete="off" /><br />
			 <input  type="number" name="visina"
				placeholder="170 cm"
				value="<?php if(isset($_POST['visina'])) echo $_POST['visina'] ?>"
				autocomplete="off" /><br />
			 <input type="submit" name='izracun' value="Izracunaj"/><br />
		</form>
	</div>
</body>
</html>
