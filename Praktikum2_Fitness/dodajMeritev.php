

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
require 'navbar.php';
include 'PHP_skripte/baza_handler.php';

if (isset($_POST['dodajj']) && isset($_POST['teza'])) {

    $teza = $_POST['teza'];
    $visina = $_POST['visina'];
    $cilj = $_POST['cilj'];
    echo $_POST['cilj'];
    $datum = date("Y-m-d");
    $up = $_SESSION['id_uporabnika'];
    $query = "INSERT INTO meritve (teza, visina, datumVnosa, tk_meritve_uporabnik, cilj)
  			  VALUES('$teza', '$visina', '$datum',  '$up', '$cilj')";

    mysqli_query($connection, $query);

    header("Location: dodajMeritev.php");
    die();

    mysqli_close($connection);
}
?>

</body>
</html>

