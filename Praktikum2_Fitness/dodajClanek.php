
<?php
require 'header.php';

if(empty($_SESSION['id_uporabnika'])){
    header('Location: login.php');
} else {
            include 'PHP_skripte/baza_handler.php';
            $uid=$_SESSION['id_uporabnika'];
            $uporabnik = "SELECT * FROM  uporabnik where idUporabnik=$uid";
            
            $uq = mysqli_query ($connection, $uporabnik);
            
            $row = mysqli_fetch_array ($uq, MYSQLI_ASSOC);
            
            if ($row['tip_uporabnika'] !=strtolower("trener"))
               header('Location: seznamClankov.php');
        
    }
?>
<!DOCTYPE html>
<html lang="en">
<head><style type="text/css">
.pp{
    height:500px;
    width:500px;
  border: 1px solid #000
}.ppp{
  border: 1px solid #000
}

</style>
<meta charset="UTF-8">
<title>Dodaj Clanek</title>
</head>
<body>
<h1 align="center">Dodaj Clanek</h1><br/>
<form enctype="multipart/form-data" align="center"  action="" method="POST">
naziv <input class="ppp" type="text" name="naziv">
<br>
vsebina  <textarea  class="pp" type="text" name="vsebina"></textarea>
<br>
<label  for="ime">Izberite sliko: </label>
					 <input type="file" name="fileToUpload" id="fileToUpload">
					<br>
<button  size="16px" type="submit" action="seznamClankov.php" name="dodajj">Dodaj</button>

</form>


<?php
include 'PHP_skripte/baza_handler.php';

if(isset($_POST['dodajj']) && isset ($_POST['naziv'])){
        $check = getimagesize($_FILES["fileToUpload"]["tmp_name"]);
        if($check !== false) {
            // echo "File is an image - " . $check["mime"] . ".";
            $uploadOk = 1;
        } else {
            //echo "File is not an image.";
            $uploadOk = 0;
        }
        $target_dir = "slike/".rand();
        $target_file = $target_dir . basename($_FILES["fileToUpload"]["name"]);
        $target_filee = basename($_FILES["fileToUpload"]["name"]);
        $uploadOk = 1;
        $imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
        // Check if image file is a actual image or fake image
        
        
        /* // Check if file already exists
         if (file_exists($target_file)) {
         echo "Sorry, file already exists.";
         $uploadOk = 0;
         }*/
        // Check file size
        if ($_FILES["fileToUpload"]["size"] > 500000) {
            echo "Sorry, your file is too large.";
            $uploadOk = 0;
        }
        // Allow certain file formats
        if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
            && $imageFileType != "gif" ) {
                echo "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
                $uploadOk = 0;
            }
            // Check if $uploadOk is set to 0 by an error
            if ($uploadOk == 0) {
                echo "Sorry, your file was not uploaded.";
                // if everything is ok, try to upload file
            } else {
                if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file)) {
                    echo "The file ". basename( $_FILES["fileToUpload"]["name"]). " has been uploaded.";
                } else {
                    echo "Sorry, there was an error uploading your file.";
                }
            }
            
    
    
    
    
    
    
    
    $naziv = $_POST['naziv'];
    $vsebina = $_POST['vsebina'];
    $datum = date("Y-m-d");
    $up = $_SESSION['id_uporabnika'];
    $query = "INSERT INTO clanek (datumVnosa, naziv, vsebina,tk_clanek_uporabnik)
  			  VALUES('$datum', '$naziv', '$vsebina', '$up')";
    
    
        
    if (mysqli_query($connection, $query)){
        $last_id = mysqli_insert_id($connection);
        echo "New record created successfully. Last inserted ID is: " . $last_id;
    } else {
        echo "Error: " . $query . "<br>" . mysqli_error($connection);
    }
    
    
    echo $target_file;
    $ab = NULL;
    
    $querry = "INSERT INTO slike (imeSlike,tk_slike_clanek) VALUES('$target_file','$last_id')";
    mysqli_query($connection, $querry);
    //header("Location: seznamClankov.php");
    //die();
    
    mysqli_close($connection);
}
?> 