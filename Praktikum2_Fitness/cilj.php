
<?php
require 'head.php';
include 'PHP_skripte/baza_handler.php';
include 'PHP_skripte/baza_OOPhandler.php';
include 'sloutf.php';
// izpis podrobnosti posameznih slik
$row = FALSE; // predvidevamo, da ni podrobnosti

$idu = $_SESSION['id_uporabnika'];

// pridobivanje podatkov o sliki
$q = "SELECT * FROM  uporabnik where idUporabnik=$idu";
$ss = "SELECT * FROM  meritve where tk_meritve_uporabnik=$idu";

$slikica = "Select * From slike where tk_slike_uporabnik=$idu";
$sslikica = mysqli_query($connection, $slikica);

if (mysqli_num_rows($sslikica) == 1) { // Good to go!
    $slikarow = mysqli_fetch_array($sslikica, MYSQLI_ASSOC);
    $slika = $slikarow['imeSlike'];
}

$r = mysqli_query($connection, $q);

$sss = mysqli_query($connection, $ss);

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
<meta charset="utf-8">
<!--  This file has been downloaded from https://bootdey.com  -->
<!--  All snippets are MIT license https://bootdey.com/license -->
<title>Moj cilj</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
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
						<div class="profile-userpic img">
                     <?php

                    echo "<img src=\"PHP_skripte/$slika\"  class=\"mx-auto d-block\" style=\"width:65%\"  >";
                    ?></div>
						<h4 class="card-title text-center mb20"> <?php  echo "<p><br/>{$ime}  {$priimek}</p>"; ?><?php  echo "<p>{$email}</p>"; ?> </h4>

						<hr>

						<div class="profile-userbuttons">

							<a href="profil.php" class="btn btn-light btn-block">Profil</a> <br>
							<a href="planiMoji.php" class="btn btn-light btn-block">Moje
								rutine</a> <br> <a href="bmiP.php"
								class="btn btn-light btn-block">BMI</a> <br> <a
								href="meritvePrikaz.php" class="btn btn-light btn-block">Meritve</a>
							<br> <a href="cilj.php" class="btn btn-light btn-block">Cilj</a>
							<br> <a href="kosarica.php" class="btn btn-light btn-block">Košarica</a>
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
								data-toggle="tab">Cilj</a></li>
						</ul>

						<!-- Tab panes -->
						<div class="tab-content admin-tab-content pt30">
							<div role="tabpanel" class="tab-pane active show" id="t1">


								<!DOCTYPE html>
							
<head>
<meta charset="UTF-8">
<title>Dodaj meritev</title>
</head>
<body>



								<div class="container">

									<form action="" method="post">

										<div class="form-group">
											<label for="teza">Teža:</label> <input type="number"
												class="form-control" id="teza" name="teza"
												placeholder="Vnesite kilograme" />
										</div>
										<div class="form-group">
											<label for="visina">Višina:</label> <input type="number"
												class="form-control" id="visina" name="visina"
												placeholder="Vnesite visinu" />
										</div>
										<label for="teza">Cilj:</label>
										    <div class="form-check">
      <label class="form-check-label" for="radio1">
        <input type="radio" class="form-check-input"  name="cilj" value="hujsanje" checked>Hujšanje
      </label>
    </div>
    										    <div class="form-check">
      <label class="form-check-label" for="radio1">
        <input type="radio" class="form-check-input" name="cilj" value="pridobitev" checked>Pridobitev mase
      </label>
    </div>
    										    <div class="form-check">
      <label class="form-check-label" for="radio1">
        <input type="radio" class="form-check-input" name="cilj" value="zdravo" checked>Zdrav stil življenja
      </label>
    </div>
    <br>
				<div class="form-group">
				
										<button type="submit" class="btn btn-primary" name='dodajj'>Dodaj</button>
										</div>



	</form>


<?php
include 'PHP_skripte/baza_handler.php';

if (isset($_POST['dodajj']) && isset($_POST['teza'])) {

    $up = $_SESSION['id_uporabnika'];

    $slop = "SELECT * FROM  meritve where tk_meritve_uporabnik =$up ";
    $rrr = mysqli_query($connection, $slop);
    if (mysqli_num_rows($rrr) == 0) { // Good to go!

        $teza = $_POST['teza'];
        $visina = $_POST['visina'];
        $cilj = $_POST['cilj'];
        echo $_POST['cilj'];
        $datum = date("Y-m-d");
        $up = $_SESSION['id_uporabnika'];
        $query = "INSERT INTO meritve (teza, visina, datumVnosa, tk_meritve_uporabnik, cilj)
  			  VALUES('$teza', '$visina', '$datum',  '$up', '$cilj')";

        mysqli_query($connection, $query);
    } else
        echo "Imate ze zacetno meritev, lahko dodajate samo nove meritve";

    mysqli_close($connection);
}
?>

</body>
								</html>






								<div role="tabpanel" class="tab-pane" id="t4"></div>
							</div>

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