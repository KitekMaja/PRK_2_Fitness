
<?php
require 'head.php';
include 'PHP_skripte/baza_handler.php';
include 'PHP_skripte/baza_OOPhandler.php';
include 'sloutf.php';
// izpis podrobnosti posameznih slik



$row = FALSE; // predvidevamo, da ni podrobnosti

$idu = $_SESSION['id_uporabnika'];

// pridobivanje podatkov o sliki
$ss = "SELECT * FROM  meritve where tk_meritve_uporabnik=$idu";

$slikica = "Select * From slike where tk_slike_uporabnik=$idu";
$sslikica = mysqli_query($connection, $slikica);

if (mysqli_num_rows($sslikica) == 1) { // Good to go!
    $slikarow = mysqli_fetch_array($sslikica, MYSQLI_ASSOC);
    $slika = $slikarow['imeSlike'];
}
// pridobivanje podatkov o sliki
$q = "SELECT * FROM  uporabnik where idUporabnik=$idu";
$clanek = "SELECT * FROM  meritve where tk_meritve_uporabnik=$idu";
$r = mysqli_query($connection, $q);

$sss = mysqli_query($connection, $clanek);

if (mysqli_num_rows($r) == 1) { // Good to go!

    // pridobivanje podatkov
    $row = mysqli_fetch_array($r, MYSQLI_ASSOC);
    $rowm = mysqli_fetch_array($sss, MYSQLI_ASSOC);
    $ime = $row['ime']; // začetek strani HTML
    $priimek = $row['priimek'];
    $email = $row['email'];
}
?>
<!DOCTYPE html>
<html lang="en">
<head>

<script type="text/javascript"
	src="http://services.iperfect.net/js/IP_generalLib.js"></script>
<meta charset="utf-8">
<!--  This file has been downloaded from https://bootdey.com  -->
<!--  All snippets are MIT license https://bootdey.com/license -->
<title>Profile</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body, html {
	height: 100%;
	font-family: "Inconsolata", sans-serif;
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


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<link
	href="http://netdna.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
	rel="stylesheet">

<link rel="stylesheet" href="MojCSS/profile.css">
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet">


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src="http://services.iperfect.net/js/IP_generalLib.js"></script>
</head>
<body>

	<br>
	<br>
	<br>
	<br>

	<div class="container">

		<div class="row">
			<div class="col-md-4 mb30">
				<div class="card">

					<div class="card-content pt20 pb20 profile-header">
                     <?php   echo "<img src=\"PHP_skripte/$slika\"  class=\"mx-auto d-block\" style=\"width:65%\"  >";
                    ?>
                    <h4 class="card-title text-center mb20"> <?php  echo "<p><br/>{$ime}  {$priimek}</p>"; ?><?php  echo "<p>{$email}</p>"; ?> </h4>

						<hr>

						<div class="profile-userbuttons">

							
							<a href="profil.php" class="btn btn-light btn-block">Profil</a> <br>
							<a href="planiMoji.php" class="btn btn-light btn-block">Moje
								rutine</a> <br> <a href="bmiP.php"
								class="btn btn-light btn-block">BMI</a> <br> <a
								href="meritvePrikaz.php" class="btn btn-light btn-block">Meritve</a>
							<br> <a href="cilj.php" class="btn btn-light btn-block">Cilj</a>
							<br> <a href="cilj.php" class="btn btn-light btn-block">Kosarica</a>
							<br> <a href="mojSeznamClankovT.php" class="btn btn-light btn-block">Moj seznam Člankov</a>
							<br>
						</div>
					</div>
					<!--content-->

				</div>
			</div>
			<div class="col-md-8 mb30">
				<div class="card">
					<div>

						<!-- Nav tabs -->
						<ul class="nav tabs-admin" role="tablist">
							<li role="presentation" class="nav-item"><a
								class="nav-link active" href="#t1" aria-controls="t1" role="tab"
								data-toggle="tab">Moj seznam Clankov</a></li>
						</ul>

						<!-- Tab panes -->
						<div class="tab-content admin-tab-content pt30">
							<div role="tabpanel" class="tab-pane active show" id="t1">





								<div class="container">

									<form action="" method="post">

										<div class="form-group">
<?php
        $up = $_SESSION['id_uporabnika'];
        $queeery = "Select * from seznam where Uporabnik_id=$up";
        $uporabnikr = mysqli_query($connection, $queeery);

        // privzet SQL stavek

        // zaèetek tabele
        echo '<table class= table table-striped">
	<tr>
		<td align="left" width="20%"><b>Naziv</b></td>
		<td align="left" width="20%"><b>Uporabnik</b></td>
		<td align="left" width="40%"><b>Vsebina</b></td>
		<td align="left" width="20%"><b>Datum Vnosa</b></td>
	</tr>';

        while ($roww = mysqli_fetch_array($uporabnikr, MYSQLI_ASSOC)) {
            echo "aaa";

            $clanek = "SELECT * FROM clanek where idClanek={$roww['Clanek_id']}";

            $claneek = mysqli_query($connection, $clanek);
            $claanek = mysqli_fetch_array($claneek, MYSQLI_ASSOC);

            $uporabnik = "SELECT * FROM uporabnik where idUporabnik={$claanek['tk_clanek_uporabnik']}";

            $uporabnikk = mysqli_query($connection, $uporabnik);
            $uuporabnik = mysqli_fetch_array($uporabnikk, MYSQLI_ASSOC);
            // izpis posameznik zapisov
            
            $vsebina = substr($claanek['vsebina'], 0, 30). "...";
            echo "\t<tr>
	<td align=\"left\"><a href=\"clanek.php?cid={$claanek['idClanek']}&uid={$uuporabnik['idUporabnik']}\">{$claanek['naziv']}</a></td>
		<td align=\"left\">{$uuporabnik['ime']}</a></td>
		<td align=\"left\">{$vsebina}</td>
		<td align=\"left\">{$claanek['datumVnosa']}</td>
	</tr>\n";
            
        }

        echo '</table>';
        mysqli_close($connection);
        ?>
										
										
										
										
										</div>
										<button type="submit" class="btn btn-primary" name='dodajm'>Dodaj
											nove Clanke</button>


									</form>


									<div role="tabpanel" class="tab-pane" id="t4"></div>
								</div>

							</div>
						</div>
					</div>
				</div>
			</div>


			<script
				src="http://netdna.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js"></script>
			<script type="text/javascript">
	

</script>

</body>
</html>


<?php

if (isset($_POST['dodajm'])) {
    echo "<script>window.location=\"seznamClankovTest.php\";</script>";
}
?>