

<html>
<head><title>Clanek</title>
<meta charset="UTF-8"></head>

<body>
<?php

include 'PHP_skripte/baza_handler.php';
include 'PHP_skripte/baza_OOPhandler.php';
include 'sloutf.php';
// izpis podrobnosti posameznih slik
echo "<a href=\"seznamClankov.php\">seznam</a>";
$row = FALSE; // predvidevamo, da ni podrobnosti

if (isset($_GET['cid']) && filter_var($_GET['cid'], FILTER_VALIDATE_INT, array('min_range' => 1)) ) { // preverjanje ID slike
     // preverjanje ID slike
    
	$cid = $_GET['cid'];
	$uid = $_GET['uid'];

	// pridobivanje podatkov o sliki
	$q = "SELECT * FROM  clanek where idClanek=$cid";
	$uporabnik = "SELECT * FROM  uporabnik where idUporabnik=$uid";
	$r = mysqli_query ($connection, $q);
	$uq = mysqli_query ($connection, $uporabnik);
	if (mysqli_num_rows($r) == 1) { // Good to go!

	    // pridobivanje podatkov
	    $row = mysqli_fetch_array ($r, MYSQLI_ASSOC);
	    $urow = mysqli_fetch_array ($uq, MYSQLI_ASSOC);

		// zaèetek strani HTML
		$page_title = $row['naziv'];

		// prikaz glave
		echo "<div align=\"center\">
		<b>{$row['naziv']}</b> by
		{$urow['ime']}<br />";
		
		echo "<br />{$row['datumVnosa']}<br/>";
		
		echo "<br />{$row['vsebina']}<br/>";
		
        echo "<form  method=\"POST\">
		<button type=\"submit\" align=\"center\"  name=\"dodajClanek\">Dodaj Èlanek v seznam</button></form>
		</div><br />";
		
	
	}
	


	mysqli_close($connection);

}
    

if (!$row) { // prikaz sporoèila o napakah
	$page_title = 'Error';
	echo '<div align="center">This page has been accessed in error!</div>';
}

?>
</body>
</html>