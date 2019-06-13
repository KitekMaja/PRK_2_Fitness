<?php 
require 'header.php';
?>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8" name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" type="text/css" href="style.css">
<link rel="stylesheet" type="text/css" href="index.css">
  <title>Seznam Člankov</title>
   	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
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
            $uid=$_SESSION['id_uporabnika'];
            $uporabnik = "SELECT * FROM  uporabnik where idUporabnik=$uid";
            
            $uq = mysqli_query ($connection, $uporabnik);
            
            $row = mysqli_fetch_array ($uq, MYSQLI_ASSOC);
            
             if (strtolower($row['tip_uporabnika']) ==strtolower("trener")){		 
echo "<a href=\"dodajClanek.php\">dodaj Članek</a>";
			 }
$q = "SELECT * FROM  clanek";
     
// izpis slik in pripadajoèih povezav URL
$r = mysqli_query ($connection, $q);
while ($row = mysqli_fetch_array ($r, MYSQLI_ASSOC)) {
    
    $uporabnik = "SELECT * FROM uporabnik where idUporabnik={$row['tk_clanek_uporabnik']}";
    
    $claneek = mysqli_query ($connection, $uporabnik);
    $iime = mysqli_fetch_array($claneek, MYSQLI_ASSOC);
    
	// izpis posameznik zapisov
    
    $vsebina = substr($row['vsebina'], 0, 50). "...";
    echo "<div align=\"center\" class=\"w3-container\">
    <a href=\"clanek.php?cid={$row['idClanek']}&uid={$iime['idUporabnik']}\"><h2>{$row['naziv']}</h2></a>
    <p>$vsebina</p>
    <p>Autor : <a href=\"uporabnik.php?pid={$row['tk_clanek_uporabnik']}\">{$iime['ime']}</a> </p>
    <p> Datum vnosa {$row['datumVnosa']} </p>
    <hr>
    </div>";
    
	
}

mysqli_close($connection);
?>

</body>
</html>