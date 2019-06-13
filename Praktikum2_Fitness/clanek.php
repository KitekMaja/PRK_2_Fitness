<?php 
require 'header.php';
?>

<html>
<head><title>Clanek</title>
<meta charset="UTF-8"></head>

<body>
<?php

include 'PHP_skripte/baza_handler.php';
include 'PHP_skripte/baza_OOPhandler.php';
include 'sloutf.php';
// izpis podrobnosti posameznih slik    
$row = FALSE; // predvidevamo, da ni podrobnosti

if (isset($_GET['cid']) && filter_var($_GET['cid'], FILTER_VALIDATE_INT, array('min_range' => 1)) ) { // preverjanje ID slike
     // preverjanje ID slike
    
	$cid = $_GET['cid'];
	$uid = $_GET['uid'];

	// pridobivanje podatkov o sliki
	$sl = "SELECT * FROM  slike where tk_slike_clanek=$cid";
	$q = "SELECT * FROM  clanek where idClanek=$cid";
	$uporabnik = "SELECT * FROM  uporabnik where idUporabnik=$uid";
	$r = mysqli_query ($connection, $q);
	$sli = mysqli_query ($connection, $sl);
	$uq = mysqli_query ($connection, $uporabnik);
	if (mysqli_num_rows($r) == 1) { // Good to go!

	    // pridobivanje podatkov
	    $row = mysqli_fetch_array ($r, MYSQLI_ASSOC);
	    $urow = mysqli_fetch_array ($uq, MYSQLI_ASSOC);
	    $srow = mysqli_fetch_array ($sli, MYSQLI_ASSOC);

		// začetek strani HTML
		$page_title = $row['naziv'];

		// prikaz glave
		echo "<div >
		<h3 align=\"center\">{$row['naziv']}</h3> </br>
    <h5 align=\"center\">by
		{$urow['ime']}</h5><br />";
		
		echo "<br /> <h6 align=\"center\">{$row['datumVnosa']}</h6><br/>";
		
		echo "<h6 align=\"center\"><img src=\"{$srow['imeSlike']}\"  height=\"300\" width=\"300\" ></h6>";
		
		echo "<br />{$row['vsebina']}<br/>";
		
        echo "<form  method=\"POST\">
		<button type=\"submit\" align=\"center\" name=\"dodajClanek\">Dodaj Clanek v seznam</button></form>
		</div><br />";
		
	
	}
	



}
    

if (!$row) { // prikaz sporočila o napakah
	$page_title = 'Error';
	echo '<div align="center">This page has been accessed in error!</div>';
}

if (isset($_POST['dodajClanek'])){ 
    
    $cid = $_GET['cid'];
    $up = $_SESSION['id_uporabnika'];
    
    $slo = "SELECT * FROM  seznam where Uporabnik_id =$up and Clanek_id=$cid ";
    $rrr = mysqli_query ($connection, $slo);
    if (mysqli_num_rows($rrr) == 0) { // Good to go!
        
    $up = $_SESSION['id_uporabnika'];
    $query = "INSERT INTO seznam (Uporabnik_id, Clanek_id)
  			  VALUES('$up', '$cid')";
    
     mysqli_query($connection, $query);
     
     echo "<script>window.location=\"mojSeznamClankovT.php\";</script>";
    
    }else {
    echo "Imate e na seznamu";
    
    echo "<script>window.location=\"mojSeznamClankovT.php\";</script>";
    }
}

mysqli_close($connection);
?>
</body>
</html>