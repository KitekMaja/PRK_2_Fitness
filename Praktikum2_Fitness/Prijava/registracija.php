<?php
require '../header.php';
/*define('DB_SERVER', 'localhost:3306');
define('DB_USERNAME', 'root');
define('DB_PASSWORD', '');
define('DB_NAME', 'dsr');

$link = new mysqli(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_NAME);

// Check connection
if ($link === false) {
    die("Napaka: povezava ni uspela! " . mysqli_connect_error());
}

// If the values are posted, insert them into the database.
if (isset($_POST['uime']) && isset($_POST['geslo']) && isset($_POST['ime']) && isset($_POST['priimek']) && isset($_POST['pgeslo'])) {
    $username = $_POST['uime'];
    $geslo = $_POST['geslo'];
    $pgeslo = $_POST['pgeslo'];
    $naziv = $_POST['ime'];
    $priimek = $_POST['priimek'];
    $id = 1;
    $query = "select id from oseba where uporabnisko_ime=?";
    $stmt = $link->prepare($query);
    $stmt->bind_param("s", $username);
    $stmt->execute();
    $stmt->store_result();
    if (strlen($geslo) < 6) {
        $obvestilo = "Geslo mora biti sestavljeno iz najmanj 6 znakov!";
    } else if ($geslo != $pgeslo) {
        $obvestilo = "Gesli se ne ujemata!";
    } else if ($stmt->num_rows != 0) {
        $obvestilo = "Uporabniskko ime ze obstaja!";
    } else if (strlen($geslo) >= 6 && $geslo === $pgeslo && $stmt->num_rows === 0) {
        $password = md5($geslo);
        $query = "INSERT INTO oseba (ime, priimek, uporabnisko_ime, geslo, tip_oseba_id) VALUES ('$naziv', '$priimek', '$username', '$password', '$id')";
        $result = mysqli_query($link, $query);
        if (! $result) {
            $obvestilo = "Poskusi se enkrat.";
        }
        session_start();
        $_SESSION['username'] = $username;
        header("location: index.php");
    }
    mysqli_close($link);
}*/
?>
<html>
<head>
<link rel="stylesheet" type="text/css" href="reg.css">
<meta charset="UTF-8">
<title></title>


</head>
<body>

	<form class="modal-content animate" method="post" action="PHP_skripte/skripta_registracija.php">
   <div class="container">
   <br>
			<div class="title">Registracija</div>

			<br> <input type="text" placeholder="Vnesite ime" name="ime" required/> <br>
			<br> <input type="text" placeholder="Vnesite priimek" name="priimek" required/> <br> 
			<br> <input type="text" placeholder="Vnesite spol" name="spol" required/> <br> 
			<br> <input type="text" placeholder="Vnesite tip uporabnika(trener/navadni)" name="tip_uporabnika" required/> <br> 
			<br> <input type="text" placeholder="Vnesite email" name="email" required/> <br> 
			<br> <input type="password" placeholder="Vnesite geslo" name="geslo" required/> <br>
			<br> <input type="password" placeholder="Ponovno vnesite geslo" name="ponovljeno_geslo" required/> <br>

			<button type="submit" name="signup-submit">Registracija </button>
			<br><p>Ste ze registrirani? <a href="index.php"><i>Prijavi se</i></a></p>
			
		</div>
	</form>