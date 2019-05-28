 
<?php
require 'baza.php';

require 'sloutf.php';

if (isset($_POST['dodaj'])) {
    $errMsg = '';
    
    $naziv = $_POST['ime'];
    $priimek = $_POST['priimek'];
    $email = $_POST['email'];
    $datumVnosa = $_POST['datum'];
    $vsebina = $_POST['spol'];
    
    if ($naziv == '')
        $errMsg = 'Vnesite vaše ime';
    if ($priimek == '')
        $errMsg = 'Vnesite priimek';
    if ($email == '')
        $errMsg = 'Vnesite email';
    if ($email == '')
            $errMsg = 'Vnesite email';
    if ($email == '')
            $errMsg = 'Vnesite email';

    if ($errMsg == '') {
        try {
            
            $stmt = $connect->prepare('INSERT INTO uporabnik (ime, priimek, email, datum, spol) VALUES (:ime, :priimek,:email,:datum,:spol)');
            $stmt->execute(array(
                ':ime' => $naziv,
                ':priimek' => $priimek,
                ':email' => $email,
                ':datum' => $datumVnosa,
                ':spol' => $vsebina
            ));
            header('Location: dodajOsebo.php?action=joined');
            exit();
        } catch (PDOException $e) {
            echo $e->getMessage();
        }
    }
}

if (isset($_GET['action']) && $_GET['action'] == 'joined') {
    $errMsg = 'Oseba bila uspešno shranjena v bazo <a href="index.php">na zaèetek</a>';
}
?>

<html>

<head>
<title>Dodaj osebo</title>
<script type="text/javascript" src="http://services.iperfect.net/js/IP_generalLib.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-2" />
</head>
<body>

	<div align="center">
<?php
if (isset($errMsg)) {
    echo '<div style="color:#FF0000;text-align:center;font-size:17px;">' . $errMsg . '</div>';
}
?>
   <h1 class="register-title">Welcome</h1>
		<form action="" method="post">
			<input  type="text" name="ime"
				placeholder="ime"
				value="<?php if(isset($_POST['ime'])) echo $_POST['ime'] ?>"
				autocomplete="off" /><br />
			 <input  type="text" name="priimek"
				placeholder="priimek"
				value="<?php if(isset($_POST['priimek'])) echo $_POST['priimek'] ?>"
				autocomplete="off" /><br />
			 <input  type="text" name="email"
				placeholder="Email"
				value="<?php if(isset($_POST['email'])) echo $_POST['email'] ?>"
				autocomplete="off" /><br />
		
				
			 <input  type="text" name="spol"
				placeholder="vaš spol"
				value="<?php if(isset($_POST['spol'])) echo $_POST['spol'] ?>"
				autocomplete="off" /><br />
			 <input type="submit" name='dodaj' value="Dodaj"/><br />
			 <input type="text" name="datum" id="date1" alt="date" class="IP_calendar" title="Y/m/d" 
			 value="<?php if(isset($_POST['datum'])) echo $_POST['datum'] ?>" placeholder="Datum Rojstva">
		</form>
	</div>
</body>
</html>
