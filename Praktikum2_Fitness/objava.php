<?php
// Start the session
session_start();
$id_objava = '';
if (isset($_GET['id'])) {
    $id_objava = $_GET['id'];
}
$_SESSION['idObjava'] = $id_objava;
?>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="style.css">
<link rel="stylesheet" type="text/css" href="index.css">
<title>Objava</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
<link rel="stylesheet"
	href="https://fonts.googleapis.com/css?family=Inconsolata">
<?php

$servername = "localhost:3306";
$username = "root";
$password = "";
$dbname = "baza";

$conn = new mysqli($servername, $username, $password, $dbname);
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}
$kveri = $sql = "SELECT * FROM objava WHERE objava.id='$id_objava'";

$result = $conn->query($sql);

if ($result->num_rows > 0) { 
    while ($row = $result->fetch_assoc()) {
        ?>

	<table style="width: 50%" class="form-horizontal">

	<tr>
		<th>
			<h2>
				<?php echo $row["naziv"] ?>
				</h2>
		</th>
	</tr>
</table>

<?php
    }
} else {
    echo "Niii!";
}
$conn->close();
?>

</head>

</body>
</html>