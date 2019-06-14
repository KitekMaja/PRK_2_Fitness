
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
    $ime = $row['ime']; // zaèetek strani HTML
    $priimek = $row['priimek'];
    $email = $row['email'];
}


if(isset($_GET['action']) && $_GET['action']=="remove"){
    
    $idk=intval($_GET['idKosarica']);
    $query = "DELETE FROM kosarica WHERE idKosarica = $idk";
    mysqli_query($connection, $query);
}
if(isset($_GET['action']) && $_GET['action']=="empty"){
    
    $query = "DELETE FROM kosarica WHERE uporabnik_id = $idu";
    mysqli_query($connection, $query);
}

if(isset($_GET['action']) && $_GET['action']=="update"){
    
    $ida=intval($_GET['idArtikla']);
    
    
    $sql_select = "SELECT * FROM kosarica WHERE artikel_id=$ida";
    $stmt = mysqli_query($connection, $sql_select);
    
    $rezultat = mysqli_num_rows($stmt);
    if ($rezultat != 0)
    {
        $row= mysqli_fetch_array($stmt, MYSQLI_ASSOC);
        
        //print_r($row);
        $st = $_POST['kolicina'];
        
        $sql_update = "UPDATE kosarica SET kolicina = $st WHERE artikel_id = $ida";
    
    }
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
							<br> <a href="kosarica.php" class="btn btn-light btn-block">Kosarica</a>
							
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
								data-toggle="tab">Kosarica</a></li>
						</ul>
			 <form method ="post" action="kosarica.php">
<table class="table">
  <thead class="thead-dark">
    <tr>
      <th scope="col"></th>
      <th scope="col">Naziv</th>
      <th scope="col">Cena</th>
      <th scope="col">Kolicina</th>
      <th scope="col">&#8364;</th>
      <th scope="col"></th>
    </tr>
  </thead>
  <tbody>

  <?php 
  
  /*$sql="SELECT * FROM artikel WHERE idArtikel IN (";
  
  foreach($_SESSION['kosarica'] as $id => $value) {
      $sql.=$id.",";
  }
  
  $sql=substr($sql, 0, -1).") ORDER BY idArtikel ASC";
  //echo $sql;
  $query=mysqli_query($connection, $sql);
  $totalprice=0;
  while($row=mysqli_fetch_array($query)){
      $subtotal=$_SESSION['kosarica'][$row['idArtikel']]['kolicina']*$row['cena'];
      $totalprice+=$subtotal;*/
  $sql="SELECT artikel.*, kosarica.idKosarica, kosarica.kolicina FROM artikel, kosarica
        WHERE artikel.idArtikel = kosarica.artikel_id AND kosarica.uporabnik_id=$idu";
  $result = mysqli_query($connection, $sql);
  $total_price =0;
 foreach($result as $artikel)
 { 
      ?>
    <tr>
      <th><img src="slike/trgovina/slike_produktov/<?php  echo $artikel['slika']?>" alt="Card Image" class="card-img-top img-fluid" style="width:50px;height:50px;"></th>
      <td><?php  echo $artikel['naziv']?></td>
      <td><?php  echo $artikel['cena']?>&#8364;</td>
      <td><input type="text" name="kolicina" size="5" value="<?php echo $artikel['kolicina']?>"/>
  		<br/>
      </td>
      <td><?php echo $artikel['kolicina']*$artikel['cena']?>&#8364;</td> 
      <td><a href="kosarica.php?action=remove&idKosarica=<?php echo $artikel['idKosarica'] ?>">Odstrani iz kosarice</a></td>
    </tr>
    <?php 
    $total_price += ($artikel["cena"] * $artikel["kolicina"]);
  }

    ?>
    <tr>
    	<td colspan="4">Cena: <?php echo $total_price ?>&#8364;</td> 
    </tr> 
  </tbody>
 <?php $_SESSION['cena'] = $total_price ?>
</table>
 <br/>
  <a href="kosarica.php?action=empty&idUporabnika=<?php echo $_SESSION['id_uporabnika']?>" style="padding-left:5px;">Sprazni kosarico</a> <br/>
</form>

  <a href="checkout.php"><button class="btn-action" name="check_out" style="padding-left:5px;">Zakljuci narocilo</button></a>

						<!-- Tab panes -->
						<div class="tab-content admin-tab-content pt30">
							<div role="tabpanel" class="tab-pane active show" id="t1"></div>
						</div>
					</div>
				</div>
				</div>
				</div>
				</div>
</body>
</html>