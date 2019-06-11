



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

<script type="text/javascript"
	src="http://services.iperfect.net/js/IP_generalLib.js"></script>
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
							<a href="profil.php" class="btn btn-light btn-block">Profil</a> 
							<br> <a	href="planiMoji.php" class="btn btn-light btn-block">Rutine Moje</a><br>
							<a href="grafP.php" class="btn btn-light btn-block">Graf</a> <br>
							<a href="meritvePrikaz.php" class="btn btn-light btn-block">Meritve</a>
							<br> <a href="cilj.php" class="btn btn-light btn-block">Cilj</a>
							<br> <br>
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
								data-toggle="tab">Rutine</a></li>
						</ul>

						<!-- Tab panes -->
						<div class="tab-content admin-tab-content pt30">
							<div role="tabpanel" class="tab-pane active show" id="t1">
									<?php  require 'novPlan.php';?>
									<?php
									
                                    $q = "select * from plan where tk_plan_uporabnik='$idu';";
                                    $r = mysqli_query($connection, $q);
                                    while ($row = mysqli_fetch_array($r, MYSQLI_ASSOC)) {
                                    ?>


							<div class='container'>
								<table id='seznam' class=table table-striped border='1'>
									<tr>
										<td colspan='2' align='center'><a href='urediPlan.php?id=<?php echo $row['idPlan'] ?>'><?php echo $row['naziv'] ?>, 
										<?php echo $row['opisPlana'] ?>,<?php echo $row['ciljPlana'] ?> ,<?php echo $row['tipPlana'] ?> , Ustvarjeno: <?php echo $row['datumNastanka'] ?></a></td>
										

									</tr>
								</table>
							</div>



							<?php 
                                }
                                
                               
                                
                                ?>
                                
                                

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

include 'PHP_skripte/baza_handler.php';

if (isset($_POST['dodajm']) && isset($_POST['novameritev'])) {

    $teza = $_POST['novameritev'];
    $datum = $_POST['datum'];

    $up = $_SESSION['id_uporabnika'];
    $query = "INSERT INTO meritev (teza, datum, tk_meritev_uporabnik)
  			  VALUES('$teza', '$datum', '$up')";

    mysqli_query($connection, $query);

    mysqli_close($connection);
}
?>