<?php 

require 'navbar.php';

if(isset($_SESSION['id_uporabnika']))
    echo "vse ok";
    else 
        header('Location: index.html') ;

?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Dodaj Clanek</title>
</head>
<body>

<form  action="" method="POST">
  naziv <input type="text" name="naziv">
    <br>
  vsebina  <input type="text" name="vsebina">
    <br>
    <button type="submit" action="seznamClankov.php" name="dodajj">Dodaj</button>
	
</form>


<?php


include 'PHP_skripte/baza_handler.php';

if(isset($_POST['dodajj']) && isset ($_POST['naziv'])){
    
    $naziv = $_POST['naziv'];
    $vsebina = $_POST['vsebina'];
    $datum = date("Y-m-d");
    $up = $_SESSION['idUporabnik'];
        $query = "INSERT INTO clanek (datumVnosa, naziv, vsebina,tk_clanek_uporabnik)
  			  VALUES('$datum', '$naziv', '$vsebina', '$up')";
        
        mysqli_query($connection, $query);
        
        header("Location: seznamClankov.php");
        die();
        
        mysqli_close($connection);
}
?>

</body>
</html>
