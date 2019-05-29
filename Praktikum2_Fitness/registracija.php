<?php
require 'head.php';

?>
<html>
<head>
<link rel="stylesheet" type="text/css" href="reg.css">
<meta charset="UTF-8">
<title></title>


</head>
<body>

	<form class="modal-content animate" method="post" action="PHP_skripte/skripta_registracija.php">

   <br>
			<br> <input type="text" placeholder="Vnesite ime" name="ime" required/> <br>
			<br> <input type="text" placeholder="Vnesite priimek" name="priimek" required/> <br> 
			<br> <input type="text" placeholder="Vnesite spol" name="spol" required/> <br> 
			<br> <input type="text" placeholder="Vnesite tip uporabnika(trener/navadni)" name="tip_uporabnika" required/> <br> 
			<br> <input type="text" placeholder="Vnesite email" name="email" required/> <br> 
			<br> <input type="password" placeholder="Vnesite geslo" name="geslo" required/> <br>
			<br> <input type="password" placeholder="Ponovno vnesite geslo" name="ponovljeno_geslo" required/> <br>

			<button type="submit" name="signup-submit">Registracija </button>
			<br><p>Ste ze registrirani? <a href="index.php"><i>Prijavi se</i></a></p>
			

	</form>