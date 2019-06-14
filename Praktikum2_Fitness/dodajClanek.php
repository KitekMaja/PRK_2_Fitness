<?php
require 'header.php';
if (empty($_SESSION['id_uporabnika'])) {
    header('Location: login.php');
} else {
    include 'PHP_skripte/baza_handler.php';
    $uid = $_SESSION['id_uporabnika'];
    $uporabnik = "SELECT * FROM  uporabnik where idUporabnik=$uid";
    $uq = mysqli_query($connection, $uporabnik);
    $row = mysqli_fetch_array($uq, MYSQLI_ASSOC);
    // if ($row['tip_uporabnika'] !=strtolower("trener"))
    // header('Location: seznamClankov.php');
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
<style type="text/css">
body {
	background: #F1F3FA;
	font-family: Arial, Helvetica, sans-serif;
}

.center {
	margin: auto;
	width: 62%;
	padding: 18px;
	background: #fff;
	border-radius: 5px;
}
.pp {
	height: 500px;
	width: 500px;
	border: 1px solid #000
}
.ppp {
	border: 1px solid #000
}
.button {
	padding: 5px 5px;
	font-size: 15px;
	border: 1px solid black;
	display: inline-block;
}
</style>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Dodaj Članek</title>
</head>
<body>
<br>
<div class="center">
	<h2 align="center">Dodaj Članek</h2>
	<br />
	<div>
		<div>
			<br>
										
				<div><h5>Text: </h5>
				<br>
			<div>
				<div>
					<button class="btn btn-outline-primary" onclick="myFunction(this.id);" id="b1"
						type="button">
						<h1>header1</h1>
					</button>
					<button class="btn btn-outline-primary" onclick="myFunction(this.id);" id="b2"
						type="button">
						<h2>header2</h2>
					</button>
					<button class="btn btn-outline-primary" onclick="myFunction(this.id);" id="b3"
						type="button">
						<h3>header3</h3>
					</button>
					<button class="btn btn-outline-primary" onclick="myFunction(this.id);" id="b4"
						type="button">
						<h4>header4</h4>
					</button>
					<button class="btn btn-outline-primary" onclick="myFunction(this.id);" id="b5"
						type="button">
						<h5>header5</h5>
					</button>
					<button class="btn btn-outline-primary" onclick="myFunction(this.id);" id="b6"
						type="button">
						<h6>header6</h6>
					</button>
					
					
					<button class="btn btn-outline-primary" onclick="myFunction(this.id);" id="p1"
						type="button">
					<p>paragraf</p>
					</button>
					<button class="btn btn-outline-primary" onclick="myFunction(this.id);" id="p2"
						type="button">
						<u>podčrtano</u>
					</button>
					<button class="btn btn-outline-primary" onclick="myFunction(this.id);" id="p3"
						type="button">
						<b>bold</b>
					</button>
					<button class="btn btn-outline-primary" onclick="myFunction(this.id);" id="p4"
						type="button">
						<strong>Strong</strong>
					</button>
					<button class="btn btn-outline-primary" onclick="myFunction(this.id);" id="p5"
						type="button">
						<i>italic</i>
					</button>
					<button class="btn btn-outline-primary" onclick="myFunction(this.id);" id="p6"
						type="button">
						<em>emphasized</em>
					</button>
					<button class="btn btn-outline-primary" onclick="myFunction(this.id);" id="p7"
						type="button">
						<mark>mark</mark>
					</button><button class="btn btn-outline-primary" onclick="myFunction(this.id);" id="p8"
						type="button">
						<small>small</small></button>
						
						
					<button class="btn btn-outline-primary" onclick="myFunction(this.id);" id="p9"
						type="button">
						<small>link</small></button>

				</div>
				<br>
										
				<div><h5>Daj v sredino: </h5>
				<br>
					<button class="btn btn-outline-success" onclick="myFunction(this.id);" id="c1"
						type="button">
						<h1>header1</h1>
					</button>
					<button class="btn btn-outline-success" onclick="myFunction(this.id);" id="c2"
						type="button">
						<h2>header2</h2>
					</button>
					<button class="btn btn-outline-success" onclick="myFunction(this.id);" id="c3"
						type="button">
						<h3>header3</h3>
					</button>
					<button class="btn btn-outline-success" onclick="myFunction(this.id);" id="c4"
						type="button">
						<h4>header4</h4>
					</button>
					<button class="btn btn-outline-success" onclick="myFunction(this.id);" id="c5"
						type="button">
						<h5>header5</h5>
					</button>
					<button class="btn btn-outline-success" onclick="myFunction(this.id);" id="c6"
						type="button">
						<h6>header6</h6>
					</button>
					
					
					<button class="btn btn-outline-success" onclick="myFunction(this.id);" id="g1"
						type="button">
					<p>paragraf</p>
					</button>
					<button class="btn btn-outline-success" onclick="myFunction(this.id);" id="g2"
						type="button">
						<u>podčrtano</u>
					</button>
					<button class="btn btn-outline-success" onclick="myFunction(this.id);" id="g3"
						type="button">
						<b>bold</b>
					</button>
					<button class="btn btn-outline-success" onclick="myFunction(this.id);" id="g4"
						type="button">
						<strong>Strong</strong>
					</button>
					<button class="btn btn-outline-success" onclick="myFunction(this.id);" id="g5"
						type="button">
						<i>italic</i>
					</button>
					<button class="btn btn-outline-success" onclick="myFunction(this.id);" id="g6"
						type="button">
						<em>emphasized</em>
					</button><button class="btn btn-outline-success" onclick="myFunction(this.id);" id="g7"
						type="button">
						<mark>mark</mark>
					</button>
					<button class="btn btn-outline-success" onclick="myFunction(this.id);" id="g8"
						type="button">
						<small>small</small></button>
						
					<button class="btn btn-outline-success" onclick="myFunction(this.id);" id="g9"
						type="button">
						<small>link</small></button>
			</div></div>
		</div>

		<div>
		</div>
	</div>
	
	<br>
	<div class="container">
	<form enctype="multipart/form-data" align="center" action=""
		method="POST">
		
		
		 <div class="form-group">
		Naziv: <input class="form-control" type="text" id="na" name="naziv" placeholder="Vnesite naziv"> <br> 
		</div>
		
			 <div class="form-group">
		Vsebina:
		<textarea id="ta" class="form-control" type="text"  name="vsebina" placeholder="Vnesite vsebino"></textarea>
		<br> <label for="ime">
		
			</div>
		
		
		Izberite sliko: </label> <input type="file"
			name="fileToUpload" id="fileToUpload"> <br>
			<br>
			
			<button class="btn btn-success" size="16px" type="submit" action="seznamClankov.php"
			 name="dodajj">Ustvari Članek</button><br>
			 <br>
	</form><div align="center">
	<button class="btn btn-info" onclick="myFunction2();" size="16px" name="predogled">Predogled</button>
		</div>
	<form align="center" method="POST">
	</form>
	<div class="center">
	<div ></br>
		<h3 id="h3" align="center">Testni naslov</h3> </br>
    <h5 align="center">by
		Ime</h5><br />
		
		  
		   
		   <br /> <h6 id="dat" align="center">Fri Jun 14 2019 08:19:41 GMT+0200 (Central European Summer Time) </h6><br/>
		   
		       <br /><div id="di">Tu bo vaš text se žačel</div><br/>
		       
		      </div>
		      </div>
	<script>
	function myFunction2() {
	    var x = document.getElementById("ta").value;
	    var y = document.getElementById("na").value;
		
        document.getElementById("h3").innerHTML = y;
        document.getElementById("dat").innerHTML = new Date();
        document.getElementById("di").innerHTML = x;
        document.getElementById("ta").value = x;
        document.getElementById("na").value = y;
	}
	</script>
	<br> <br>
	<div class="btn">
	</div>
	<script>
function myFunction(id) {
	var items = [
		  ["b1", "<h1>text</h1>"],
		  ["b2", "<h2>text</h2>"],
		  ["b3", "<h3>text</h3>"],
		  ["b4", "<h4>text</h4>"],
		  ["b5", "<h5>text</h5>"],
		  ["b6", "<h6>text</h6>"],
		  ["p1", "<p>text</p>"],
		  ["p2", "<u>text</u>"],
		  ["p3", "<b>text</b>"],
		  ["p4", "<strong>text</strong>"],
		  ["p5", "<i>text</i>"],
		  ["p6", "<em>text</em>"],
		  ["p7", "<mark>text</mark>"],
		  ["p8", "<small>text</small>"],
		  ["p9", "<a href=\"www.imestrani.com \">text</a>"],
		  ["c1", "<h1 align=\"center\">text</h1>"],
		  ["c2", "<h2 align=\"center\">text</h2>"],
		  ["c3", "<h3 align=\"center\">text</h3>"],
		  ["c4", "<h4 align=\"center\">text</h4>"],
		  ["c5", "<h5 align=\"center\">text</h5>"],
		  ["c6", "<h6 align=\"center\">text</h6>"],
		  ["g1", "<p align=\"center\">text</p>"],
		  ["g2", "<u align=\"center\">text</u>"],
		  ["g3", "<b align=\"center\">text</b>"],
		  ["g4", "<strong align=\"center\">text</strong>"],
		  ["g5", "<i align=\"center\">text</i>"],
		  ["g6", "<em align=\"center\">text</em>"],
		  ["g7", "<mark align=\"center\">text</mark>"],
		  ["g8", "<small align=\"center\">text</small>"],
		  ["g9", "<a align=\"center\" href=\"www.imestrani.com \">text</a>"],
		];
	document.getElementById("ta").focus();
	
	for (var i=0;i<items.length;i++){
	if (items[i][0]===id){
    var x = document.getElementById("ta").value;
        document.getElementById("ta").value = x+items[i][1];
        break;
	}
	}
        
}
</script>
<?php
include 'PHP_skripte/baza_handler.php';
if (isset($_POST['dodajj']) && isset($_POST['naziv'])) {
    $check = getimagesize($_FILES["fileToUpload"]["tmp_name"]);
    if ($check !== false) {
        // echo "File is an image - " . $check["mime"] . ".";
        $uploadOk = 1;
    } else {
        // echo "File is not an image.";
        $uploadOk = 0;
    }
    $target_dir = "slike/" . rand();
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
    $naziv = $_POST['naziv'];
    $vsebina = $_POST['vsebina'];
    $datum = date("Y-m-d");
    $up = $_SESSION['id_uporabnika'];
    $query = "INSERT INTO clanek (datumVnosa, naziv, vsebina,tk_clanek_uporabnik)
  			  VALUES('$datum', '$naziv', '$vsebina', '$up')";
    if (mysqli_query($connection, $query)) {
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