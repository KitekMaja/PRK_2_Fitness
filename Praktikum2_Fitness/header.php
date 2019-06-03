<?php
session_start();
?>
<!DOCTYPE html>
<html>
<head>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
	
	<meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link rel="stylesheet" href="MojCSS/css.css">
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light ">
  <a class="navbar-brand" href="#">
  	<img class="logotip_navbar" src="Slike/logo_transparent.png" alt="logo">
  </a>
  <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarText" aria-controls="navbarText" aria-expanded="false" aria-label="Toggle navigation">
    <span class="navbar-toggler-icon"></span>
  </button>
  <div class="collapse navbar-collapse" id="navbarText">
    <ul class="navbar-nav mr-auto">
      <li class="nav-item">
        <a class="nav-link" href="domov.php">Domov<span class="sr-only"></span></a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">Vaje</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">&#268;lanki</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="Trgovina/produkti.php">Shop</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="o_nas.php">O nas</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="kontakt.php">Kontakt</a>
      </li>
    </ul>
   <?php 
   if (isset($_SESSION['id_uporabnika']))
   {
       echo '
        <span class="navbar-text"> 
            <form class="modal-content animate" method="post" action="PHP_skripte/skripta_izpis.php">
              <button class="btn btn-primary-outline" type="submit" name="logout-submit">Izpis</button>
            </form>
        </span>';
   }
   else
   {
       echo '
        <span class="navbar-text"> 
   		   <a class="nav-link" href="vpis.php">Vpis</a>
        </span>
        <span class="navbar-text">
    	   <a class="nav-link" href="registracija.php">Registracija</a>
        </span>';
   }
   ?> 
  </div>
</nav>
</body>
</html>