
<?php
require 'navbar.php';
include 'PHP_skripte/baza_handler.php';
include 'PHP_skripte/baza_OOPhandler.php';
include 'sloutf.php';
// izpis podrobnosti posameznih slik
$row = FALSE; // predvidevamo, da ni podrobnosti

$idu = $_SESSION['id_uporabnika'];

// pridobivanje podatkov o sliki
$q = "SELECT * FROM  uporabnik where idUporabnik=$idu";
$ss = "SELECT * FROM  meritve where tk_meritve_uporabnik=$idu";
$r = mysqli_query($connection, $q);

$sss = mysqli_query($connection, $ss);

if (mysqli_num_rows($r) == 1) { // Good to go!

    // pridobivanje podatkov
    $row = mysqli_fetch_array($r, MYSQLI_ASSOC);
    $rowm = mysqli_fetch_array($sss, MYSQLI_ASSOC);
    $ime = $row['ime']; // za�etek strani HTML
    $priimek = $row['priimek'];
    $email = $row['email'];
}
?>
<!DOCTYPE html>
<html>
<head>
<title>Izpis</title>
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<link rel="stylesheet" href="MojCSS/profile.css">

<link rel="stylesheet" href="MojCSS/izpis.css">
<!------ Include the above in your HEAD tag ---------->
</head>
<body>

	<div class="container">
		<div class="row profile">
			<div class="col-md-3">
				<div class="profile-sidebar">
					<!-- SIDEBAR USERPIC -->
					<div class="profile-userpic">
						 <?php  echo "<p><br/>{$slika}</p>"; ?>
					</div>
					<!-- END SIDEBAR USERPIC -->
					<!-- SIDEBAR USER TITLE -->
					<div class="profile-usertitle">
					 <?php  echo "<p><br/>{$ime}</p>"; ?>
						<div class="profile-usertitle-name"></div>
						<?php  echo "<p><br/>{$priimek}</p>";  ?>
						<div class="profile-usertitle-job"><?php  echo "<p><br/>{$email}</p>";?></div>
					</div>
					<!-- END SIDEBAR USER TITLE -->
					<!-- SIDEBAR BUTTONS -->
					<div class="profile-userbuttons">
						<a href="dodajnovomeritev.php" class="btn btn-info">Meritve</a>

					</div>

					<!-- END SIDEBAR BUTTONS -->
					<!-- SIDEBAR MENU -->
					<div class="profile-usermenu">
						<ul class="nav">
							<li class="active"><a href="#"> <i
									class="glyphicon glyphicon-home"></i> Profil
							</a></li>
							<li><a href="#"> <i class="glyphicon glyphicon-user"></i> Uredi
							</a></li>
							<li><a href="grafP.php"> <i class="glyphicon glyphicon-stats"></i>
									Graf
							</a></li>
							<li><a href="dodajnovomeritev.php"> <i
									class="glyphicon glyphicon-heart-empty"></i> Vaje
							</a></li>
							<li><a href="dodajnovomeritev.php"> <i
									class="glyphicon glyphicon-list-alt"></i> Objave
							</a></li>


						</ul>


						</ul>
					</div>
					<!-- END MENU -->
				</div>
			</div>
			<div class="col-md-9">
				<div class="profile-content">
					<link rel="stylesheet"
						href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
					<script
						src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
					<script
						src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

					<link rel="stylesheet" href="MojCSS/izpis.css">

					</head>
					<body>

<div class="container">

  <form class="form-horizontal" action="/action_page.php">
    <div class="form-group">
      <label class="control-label col-sm-2" for="email">Email:</label>
      <div class="col-sm-4">
        <input type="email" class="form-control" id="email" placeholder="Enter email" name="email">
      </div>
    </div>
    <div class="form-group">
      <label class="control-label col-sm-2" for="pwd">Password:</label>
      <div class="col-sm-4">          
        <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pwd">
      </div>
    </div>
    
    <div class="form-group">        
      <div class="col-sm-offset-2 col-sm-4">
        <button type="submit" class="btn btn-default">Submit</button>
      </div>
    </div>
  </form>
</div>
<?php

include 'PHP_skripte/baza_handler.php';

if (isset($_POST['dodajm']) && isset($_POST['novameritev'])) {

    $teza = $_POST['novameritev'];
    $datum = $_POST['datum'];
    $up = $_SESSION['id_uporabnika'];
    $query = "INSERT INTO meritev (teza, datum, tk_uporabnik)
  			  VALUES('$teza', '$datum', '$up')";

    mysqli_query($connection, $query);

    header("Location: uporabnik.php");
    die();

    mysqli_close($connection);
}
?>




</body>
</html>