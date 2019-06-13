<?php
require 'header.php';
?>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"
	integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN"
	crossorigin="anonymous"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js"
	integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q"
	crossorigin="anonymous"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"
	integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl"
	crossorigin="anonymous"></script>

<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<script src="https://apis.google.com/js/platform.js" async defer></script>
<meta name="google-signin-client_id"
	content="827290065288-ru4b8ek49rjpip3rrirpduo4obafogrr.apps.googleusercontent.com">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-2" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">


<style>
.gumb {
	margin: auto;

	padding: 18px;
}

body {
	background: #F1F3FA;
	font-family: Arial, Helvetica, sans-serif;
}

.center {
	margin: auto;
	width: 62%;
	padding: 18px;
	background: #fff;
	border-radius: 5px;
}

.bgimg {
	background-position: center;
	background-size: cover;
	background-image:
		url("https://images.unsplash.com/photo-1507924538820-ede94a04019d?ixlib=rb-1.2.1&ixid=eyJhcHBfaWQiOjEyMDd9&w=1000&q=80");
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
$uid = $_SESSION['id_uporabnika'];
$uporabnik = "SELECT * FROM  uporabnik where idUporabnik=$uid";

$uq = mysqli_query($connection, $uporabnik);

$row = mysqli_fetch_array($uq, MYSQLI_ASSOC);

if (strtolower($row['tip_uporabnika']) == strtolower("trener")) {
    ?>
	<div class="gumb">
		<?php

    echo "<a href=\"dodajClanek.php\" align=\"center\" class=\"btn btn-info\" >Dodaj Članek</a>";

    ?>
	</div>
		<?php
}
$q = "SELECT * FROM  clanek";

// izpis slik in pripadajoèih povezav URL
$r = mysqli_query($connection, $q);
while ($row = mysqli_fetch_array($r, MYSQLI_ASSOC)) {

    $uporabnik = "SELECT * FROM uporabnik where idUporabnik={$row['tk_clanek_uporabnik']}";

    $claneek = mysqli_query($connection, $uporabnik);
    $iime = mysqli_fetch_array($claneek, MYSQLI_ASSOC);

    // izpis posameznik zapisov

    echo "<div class=\"center\" align=\"center\" >

    <a href=\"clanek.php?cid={$row['idClanek']}&uid={$iime['idUporabnik']}\"><h4>{$row['naziv']}</h4></a>
    <p>Autor : <a href=\"uporabnik.php?pid={$row['tk_clanek_uporabnik']}\">{$iime['ime']}</a> </p>
    <p>{$row['datumVnosa']} </p>
    <hr>
    </div>";
}

mysqli_close($connection);
?>

</body>
</html>