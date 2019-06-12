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
	
	<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
	<script src="https://apis.google.com/js/platform.js" async defer></script>
	<meta name="google-signin-client_id" content="827290065288-ru4b8ek49rjpip3rrirpduo4obafogrr.apps.googleusercontent.com" >
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-2" />
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    
    <link rel="stylesheet" href="MojCSS/css.css">
	<link rel="stylesheet" href="MojCSS/homepage.css">    
	<link rel="stylesheet" href="MojCSS/footer.css">
	<link rel="stylesheet" href="MojCSS/shop/productPage.css">
	
    <!-- LOGIN -->
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="MojCSS/login/images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="MojCSS/login/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="MojCSS/login/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="MojCSS/login/fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="MojCSS/login/vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="MojCSS/login/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="MojCSS/login/vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="MojCSS/login/vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="MojCSS/login/vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="MojCSS/login/CSS/util.css">
	<link rel="stylesheet" type="text/css" href="MojCSS/login/CSS/main.css">
<!--===============================================================================================-->
	<script src="MojCSS/login/vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="MojCSS/login/vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="MojCSS/login/vendor/bootstrap/js/popper.js"></script>
	<script src="MojCSS/login/vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="MojCSS/login/vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="MojCSS/login/vendor/daterangepicker/moment.min.js"></script>
	<script src="MojCSS/login/vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="MojCSS/login/vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="MojCSS/login/js/main.js"></script>

    
    
</head>
<body>
	<nav class="navbar navbar-expand-lg navbar-light bg-light">
  <a class="navbar-brand" href="#"> 
  	<img src="slike/header.png" alt="logo" style="width: 70px;">
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
        <a class="nav-link" href="seznamVaj.php">Vaje</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="plani.php">Plani</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="#">&#268;lanki</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="produkti.php">Shop</a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="o_nas.php">O nas</a>
      </li>
    </ul>
   <?php 
   if (isset($_SESSION['id_uporabnika']))
   {
       echo '
        <span class="navbar-text"> 
            <form class="modal-content animate" method="post" action="PHP_skripte/skripta_izpis.php">
              <button class="btn link" type="submit" name="logout-submit">Izpis</button>
            </form>
        </span>
        <span class="navbar-text"> 
   		   <a class="nav-link" href="profil.php">Profil</a>
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