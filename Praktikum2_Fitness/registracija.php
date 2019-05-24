<?php
define('DB_SERVER', 'localhost:3306');
define('DB_USERNAME', 'root');
define('DB_PASSWORD', '');
define('DB_NAME', 'dsr');

/* Attempt to connect to MySQL database */
$link = new mysqli(DB_SERVER, DB_USERNAME, DB_PASSWORD, DB_NAME);

// Check connection
if ($link === false) {
    die("Napaka: povezava ni uspela! " . mysqli_connect_error());
}

// If the values are posted, insert them into the database.
if (isset($_POST['uime']) && isset($_POST['geslo']) && isset($_POST['ime']) && isset($_POST['priimek']) && isset($_POST['pgeslo'])) {
    $username = $_POST['uime'];
    $geslo = $_POST['geslo'];
    $pgeslo = $_POST['pgeslo'];
    $naziv = $_POST['ime'];
    $priimek = $_POST['priimek'];
    $id = 1;
    $query = "select id from oseba where uporabnisko_ime=?";
    $stmt = $link->prepare($query);
    $stmt->bind_param("s", $username);
    $stmt->execute();
    $stmt->store_result();
    if (strlen($geslo) < 6) {
        $obvestilo = "Geslo mora biti sestavljeno iz najmanj 6 znakov!";
    } else if ($geslo != $pgeslo) {
        $obvestilo = "Gesli se ne ujemata!";
    } else if ($stmt->num_rows != 0) {
        $obvestilo = "Uporabniskko ime ze obstaja!";
    } else if (strlen($geslo) >= 6 && $geslo === $pgeslo && $stmt->num_rows === 0) {
        $password = md5($geslo);
        $query = "INSERT INTO oseba (ime, priimek, uporabnisko_ime, geslo, tip_oseba_id) VALUES ('$naziv', '$priimek', '$username', '$password', '$id')";
        $result = mysqli_query($link, $query);
        if (! $result) {
            $obvestilo = "Poskusi se enkrat.";
        }
        session_start();
        $_SESSION['username'] = $username;
        header("location: index.php");
    }
    mysqli_close($link);
}
?>
<html>
<head>
<link rel="stylesheet" type="text/css" href="reg.css">
<meta charset="UTF-8">
<title></title>


</head>
<body>

	<form class="modal-content animate" method="post">
             <?php if(isset($obvestilo)){ ?><div style="color: red"> <?php echo $obvestilo; ?> </div><?php } ?>
   <div class="container">
   <br>
			<div class="title">Registracija</div>

			<br> <input type="text" placeholder="Vnesite ime" name="ime" required><br>
			<br> <input type="text" placeholder="Vnesite priimek" name="priimek"
				required><br> <br> <input type="text"
				placeholder="Vnesite uporabnisko ime" name="uime" required><br> <br>
			<input type="password" placeholder="Vnesite geslo" name="geslo"
				required><br> <br> <input type="password" placeholder="Potrditev gesla"
				name="pgeslo" required><br>

			<button type="submit" name="Registracija">Registracija </button>
			<br><p>Ste ze registrirani? <a href="index.php"><i>Prijavi se</i></a></p>
			
		</div>
	</form>