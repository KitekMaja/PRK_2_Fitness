
<?php
require 'header.php';
include 'PHP_skripte/baza_handler.php';
include 'PHP_skripte/baza_OOPhandler.php';
include 'sloutf.php';
// izpis podrobnosti posameznih slik
$row = FALSE; // predvidevamo, da ni podrobnosti

$idu = $_SESSION['id_uporabnika'];
// echo "<br>".$idu."<br>";
$_SESSION['id_uporabnika']= $idu;

// pridobivanje podatkov o sliki
$q = "SELECT * FROM  uporabnik where idUporabnik=$idu";
$ss = "SELECT * FROM  meritve where tk_meritve_uporabnik=$idu";
$r = mysqli_query($connection, $q);

$sss = mysqli_query($connection, $ss);

if (mysqli_num_rows($r) == 1) { // Good to go!

    // pridobivanje podatkov
    $row = mysqli_fetch_array($r, MYSQLI_ASSOC);
    $rowm = mysqli_fetch_array($sss, MYSQLI_ASSOC);
    $ime = $row['ime']; // zaèetek strani HTML
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
						<a href="meritvePrikaz.php" class="btn btn-info">Meritve</a>

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
							<li><a href="VajeToni/seznamVaj.php"> <i
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
				
				
				</div>
			</div>
		</div>
	</div>

	<br>
	<br>

	<br>
</body>
</html>