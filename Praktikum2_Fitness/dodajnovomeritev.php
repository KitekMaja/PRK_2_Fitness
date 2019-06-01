<?php

require 'header.php';
        ?>
<!DOCTYPE html>
<html lang="en">
<head>

<script type="text/javascript" src="http://services.iperfect.net/js/IP_generalLib.js"></script>
    <meta charset="UTF-8">
    <title>Dodaj Clanek</title>
</head>
<body>

<form  action="" method="POST">
  Nova teza <input type="text" name="novameritev">
    <br>

			 <input type="text" name="datum" id="date1" alt="date" class="IP_calendar" title="Y/m/d" 
			 value="<?php if(isset($_POST['datum'])) echo $_POST['datum'] ?>" placeholder="Datum meritve">
			     <br>
    <button type="submit" action="uporabnik.php" name="dodajm">Dodaj</button>
	
</form>


<?php


include 'PHP_skripte/baza_handler.php';

if(isset($_POST['dodajm']) && isset ($_POST['novameritev'])){
    
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
