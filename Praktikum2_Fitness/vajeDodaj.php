<?php 
// require 'PHP_skripte/baza_handler.php';

$db_server = "localhost:3306";
$db_username = "root";
$db_password = "";
$db_database = "baza";

$connection = mysqli_connect($db_server, $db_username, $db_password, $db_database);

mysqli_set_charset($connection, 'utf8');
if (!$connection)
{
    die("Povezava ni uspela: " .mysqli_connect_error());
}

?>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" type="text/css" href="style.css">
<link rel="stylesheet" type="text/css" href="index.css">
<title>vnos</title>
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


</head>
<body>

	<nav class="navbar navbar-inverse"></nav>

	<div class="left">
		<br>
		<div class="container">

			<form enctype="multipart/form-data" class="form-horizontal"
				method="POST">

				<h4>
					<b>Dodaj vaje:</b>
				</h4>
				<br>

				<div class="form-group">
					<label class="control-label col-sm-2" for="ime">Naziv: </label>
					<div class="col-sm-3">
						<input type="text" class="form-control"
							placeholder="Vnesite naziv" name="naziv">
					</div>
				</div>
				
				<!--<div class="form-group">
					<label class="control-label col-sm-2" for="ime">Kategorija: </label>
					<select>
  <option value="volvo">Volvo</option>
  <option value="saab">Saab</option>
  <option value="opel">Opel</option>
  <option value="audi">Audi</option>
</select>
				</div>
				
				-->
				
				
				
				
				<div class="form-group">
					<label class="control-label col-sm-2" for="opis">Opis: </label>
					<div class="col-sm-3">
						<input type="text" class="form-control"
							placeholder="Vnesite vsebino" name="opis">
					</div>
				</div>

				<div class="form-group">
					<label class="control-label col-sm-2" for="url">link: </label>
					<div class="col-sm-3">
						<input type="url" class="form-control" placeholder="Vnesite link"
							name="url">
					</div>
				</div>

				<div>

					<!--<label class="control-label col-sm-2" for="slika">Izberite sliko: </label>
					<input type="file" name="fileToUpload" id="fileToUpload">-->
					<button type="submit" class="btn btn-default" name="dodaj">Dodaj</button>

				</div>

				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-3"></div>
				</div>
				<div class="form-group">
					<div class="col-sm-offset-2 col-sm-10"></div>
				</div>

			</form>
		</div>
	</div>

<!-- naziv opis url tk_uporabnika -->


	
<?php


if (isset($_POST['dodaj'])) {
//     $check = getimagesize($_FILES["fileToUpload"]["tmp_name"]);
//     if ($check !== false) {
//         echo "File is an image - " . $check["mime"] . ".";
//         $uploadOk = 1;
//     } else {
//         echo "File is not an image.";
//         $uploadOk = 0;
//     }
//     $target_dir = "slike/";
//     $target_file = $target_dir . basename($_FILES["fileToUpload"]["name"]);
//     $target_filee = basename($_FILES["fileToUpload"]["name"]);
//     $uploadOk = 1;
//     $imageFileType = strtolower(pathinfo($target_file, PATHINFO_EXTENSION));
//     // Check if image file is a actual image or fake image

//     // Check file size
//     if ($_FILES["fileToUpload"]["size"] > 50000000000) {
//         echo "Sorry, your file is too large.";
//         $uploadOk = 0;
//     }
//     // Allow certain file formats
//     if ($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg" && $imageFileType != "gif") {
//         echo "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
//         $uploadOk = 0;
//     }
//     // Check if $uploadOk is set to 0 by an error
//     if ($uploadOk == 0) {
//         echo "Sorry, your file was not uploaded.";
//         // if everything is ok, try to upload file
//     } else {
//         if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file)) {
//             echo "The file " . basename($_FILES["fileToUpload"]["name"]) . " has been uploaded.";
//         } else {
//             echo "Sorry, there was an error uploading your file.";
//         }
//     }

//     $imagee = addslashes(file_get_contents($target_file));

    
    

    $query = "INSERT INTO vaje (naziv, opis, url, tk_meritve_uporabnik )
  			  VALUES('$_POST[naziv]', '$_POST[opis]', '$_POST[url]', '1')";  //,'$imagee', '$_POST[opis]'

    mysqli_query($connection, $query);
    echo $query;
    
    $connection->close();
}

?>
</body>
</html>
