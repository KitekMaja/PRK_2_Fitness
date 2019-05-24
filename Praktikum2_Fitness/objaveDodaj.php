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
					<b>Dodaj:</b>
				</h4>
				<br>

				<div class="form-group">
					<label class="control-label col-sm-2" for="ime">Naziv: </label>
					<div class="col-sm-3">
						<input type="text" class="form-control"
							placeholder="Vnesite ime predstave" name="naziv">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="ime">Vsebina: </label>
					<div class="col-sm-3">
						<input type="text" class="form-control"
							placeholder="Vnesite ime autora" name="vsebina">
					</div>
				</div>
				<div class="form-group">
					<label class="control-label col-sm-2" for="ime">Datum vnosa: </label>
					<div class="col-sm-3">
						<input type="date" class="form-control"
							placeholder="Vnesite datum" name="datumVnosa">
					</div>
				</div>

				<div>

					<label class="control-label col-sm-2" for="slika">Izberite sliko: </label>
					<input type="file" name="fileToUpload" id="fileToUpload">
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



	
<?php
$host = "localhost:3306";
$username = 'root';
$password = '';
$db = 'baza';

$connect = mysqli_connect($host, $username, $password, $db) or die("Ni povezave do podatkovne baze");

if (isset($_POST['dodaj'])) {
    $check = getimagesize($_FILES["fileToUpload"]["tmp_name"]);
    if ($check !== false) {
        echo "File is an image - " . $check["mime"] . ".";
        $uploadOk = 1;
    } else {
        echo "File is not an image.";
        $uploadOk = 0;
    }
    $target_dir = "slike/";
    $target_file = $target_dir . basename($_FILES["fileToUpload"]["name"]);
    $target_filee = basename($_FILES["fileToUpload"]["name"]);
    $uploadOk = 1;
    $imageFileType = strtolower(pathinfo($target_file, PATHINFO_EXTENSION));
    // Check if image file is a actual image or fake image

    /*
     * // Check if file already exists
     * if (file_exists($target_file)) {
     * echo "Sorry, file already exists.";
     * $uploadOk = 0;
     * }
     */
    // Check file size
    if ($_FILES["fileToUpload"]["size"] > 500000) {
        echo "Sorry, your file is too large.";
        $uploadOk = 0;
    }
    // Allow certain file formats
    if ($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg" && $imageFileType != "gif") {
        echo "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
        $uploadOk = 0;
    }
    // Check if $uploadOk is set to 0 by an error
    if ($uploadOk == 0) {
        echo "Sorry, your file was not uploaded.";
        // if everything is ok, try to upload file
    } else {
        if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file)) {
            echo "The file " . basename($_FILES["fileToUpload"]["name"]) . " has been uploaded.";
        } else {
            echo "Sorry, there was an error uploading your file.";
        }
    }

    $imagee = addslashes(file_get_contents($target_file));
    $query = "INSERT INTO objava (naziv, vsebina, datumVnosa, slika)
  			  VALUES('$_POST[naziv]', '$_POST[vsebina]', '$_POST[datumVnosa]','$imagee')";

    mysqli_query($connect, $query);
    // echo $query;
}

?>
</body>
</html>
