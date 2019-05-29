<?php 
require "header.php"
?>

<html>
<head>
<link rel="stylesheet" type="text/css" href="reg.css">
<meta charset="UTF-8">
<title></title>


</head>
<body>

	<form class="modal-content animate" method="post" action="PHP_skripte/skripta_prijava.php">
   <div class="container">
   <br>
			<div class="title">Vpis</div>

			
			<br> <input type="text" placeholder="Vnesite email" name="email" required/> <br> 
			<br> <input type="password" placeholder="Vnesite geslo" name="geslo" required/> <br>
			<button type="submit" name="signup-submit">Prijavi se </button>
			<br><p>Ali ste pozabili<a href="index.php"><i>geslo?</i></a></p>
			
		</div>
	</form>