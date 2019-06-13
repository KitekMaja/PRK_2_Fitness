<?php 
require 'header.php';
?>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="style.css">
<link rel="stylesheet" type="text/css" href="index.css">
  <title>Seznam Clankov</title>
   
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Inconsolata">
<style>
body, html {
    height: 100%;
    font-family: "Inconsolata", sans-serif;
}
.bgimg {
    background-position: center;
    background-size: cover;
    background-image: url("https://images.unsplash.com/photo-1507924538820-ede94a04019d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80");
    min-height: 75%;
}
.menu {
    display: none;
}

</style>

</head>
<body>

<?php
require ('PHP_skripte/baza_handler.php');
require 'sloutf.php';

echo "<a href=\"dodajClanek.php\">dodaj Èlanek</a>";

$q = "SELECT * FROM  clanek";
    

echo '<table class= table table-striped">
	<tr>
		<td align="left" width="20%"><b>Naziv</b></td>
		<td align="left" width="20%"><b>Uporabnik</b></td>
		<td align="left" width="40%"><b>Vsebina</b></td>
		<td align="left" width="20%"><b>Datum Vnosa</b></td>
	</tr>';
	
// izpis slik in pripadajoèih povezav URL
$r = mysqli_query ($connection, $q);
while ($row = mysqli_fetch_array ($r, MYSQLI_ASSOC)) {
    
    $uporabnik = "SELECT * FROM uporabnik where idUporabnik={$row['tk_clanek_uporabnik']}";
    
    $claneek = mysqli_query ($connection, $uporabnik);
    $iime = mysqli_fetch_array($claneek, MYSQLI_ASSOC);
    
	// izpis posameznik zapisov
	echo "\t<tr>
	<td align=\"left\"><a href=\"clanek.php?cid={$row['idClanek']}&uid={$iime['idUporabnik']}\">{$row['naziv']}</a></td>
		<td align=\"left\"><a href=\"uporabnik.php?pid={$row['tk_clanek_uporabnik']}\">{$iime['ime']}</a></td>
		<td align=\"left\">{$row['vsebina']}</td>
		<td align=\"left\">{$row['datumVnosa']}</td>
	</tr>\n";
	
}

echo '</table>';
mysqli_close($connection);
?>

</body>
</html>