<?php


	session_start();
	
	$_SESSION["id"] = $_POST["idUporabnik"];
	$_SESSION["email"] = $_POST["email"];

    include_once "PHP_skripte/baza_handler.php";
    
    $sql = "SELECT * FROM uporabnik WHERE email='".$_POST["email"]."'";
	$stmt = $mysqli->query($sql);


	if(!empty($result->fetch_assoc())){
		$sql2 = "UPDATE uporabnik SET google_id='".$_POST["id"]."' WHERE email='".$_POST["email"]."'";
	}else{
		$sql2 = "INSERT INTO users (email, google_id) VALUES ('".$_POST["email"]."', '".$_POST["id"]."')";
	}


	$mysqli->query($sql2);


	echo "Updated Successful";
?>