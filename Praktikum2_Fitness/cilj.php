
<?php
require 'header.php';
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
    $ime = $row['ime']; // zaèetek strani HTML
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
<title>Profile</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<link
	href="http://netdna.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
	rel="stylesheet">

<link rel="stylesheet" href="MojCSS/profile.css">

</head>
<body>

<br>
<br>

<br>
<br>


<br>

	<link
		href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
		rel="stylesheet">
	<div class="container">

		<div class="row">
			<div class="col-md-4 mb30">
				<div class="card">

					<div class="card-content pt20 pb20 profile-header">
                     <?php  echo "<p><br/>{$slika}</p>"; ?>
                    <h4 class="card-title text-center mb20"> <?php  echo "<p><br/>{$ime}  {$priimek}</p>"; ?><?php  echo "<p>{$email}</p>"; ?> </h4>

						<hr>

						<div class="profile-userbuttons">

							<a href="profil.php" class="btn btn-light btn-block">Profil</a><br>
							<a	href="planiMoji.php" class="btn btn-light btn-block">Rutine Moje</a>
							<br> <a	href="grafP.php" class="btn btn-light btn-block">Graf</a>
							<br> <a href="meritvePrikaz.php"
								class="btn btn-light btn-block">Meritve</a> <br>
								 <a href="cilj.php"
								class="btn btn-light btn-block">Cilj</a> <br> <br>
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
<html lang="en">
<head>
<meta charset="UTF-8">
<title>Dodaj meritev</title>
</head>
<body>

	<form action="" method="POST">
		teza <input type="double" name="teza"> <br> visina <input
			type="double" name="visina"> <br>

		<p>Prosim izberite svoj cilj:</p>
		<div class="form-group">
			<label class="control-label col-sm-2" for="ime">cilj</label>
			<div class="col-sm-3">
				<input type="radio" name="cilj" value="hujsanje">Hujsanje 
				<input type="radio" name="cilj" value="pridobitev">Pridobitev
				<input type="radio" name="cilj" value="zdavo">Zdravo 
			</div>
		</div>
		<button type="submit" action="dodajMeritev.php" name="dodajj">Dodaj</button>

	</form>


<?php
include 'PHP_skripte/baza_handler.php';

if (isset($_POST['dodajj']) && isset($_POST['teza'])) {

    $up = $_SESSION['id_uporabnika'];
    
    $slop = "SELECT * FROM  meritve where tk_meritve_uporabnik =$up ";
    $rrr = mysqli_query ($connection, $slop);
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
        
    }else
        echo "Imate ze zacetno meritev, lahko dodajate samo nove meritve";


    mysqli_close($connection);
}
?>

</body>
</html>
							
							
							
							
							
							
							<div role="tabpanel" class="tab-pane" id="t4">
							
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