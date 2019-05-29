<?php
require 'baza.php';

    ?>

<html>
<head><title>Objava</title>
<meta charset="UTF-8"></head>

<body>
<?php
// izpis podrobnosti posameznih slik

$row = FALSE; // predvidevamo, da ni podrobnosti

if (isset($_GET['pid']) && filter_var($_GET['pid'], FILTER_VALIDATE_INT, array('min_range' => 1)) ) { // preverjanje ID slike
     // preverjanje ID slike
    
	$pid = $_GET['pid'];

	// pridobivanje podatkov o sliki
	require ('baza.php');
	$q = "SELECT * FROM  objava where id=$pid";
	$r = mysqli_query ($dbc, $q);
	if (mysqli_num_rows($r) == 1) { // Good to go!

		// pridobivanje podatkov
	    $row = mysqli_fetch_array ($r, MYSQLI_ASSOC);
	    $rezerva = $row['rezerva'];

		// zaèetek strani HTML
		$page_title = $row['naziv'];

		// prikaz glave
		echo "<div align=\"center\">
		<b>{$row['naziv']}</b> ";



		echo "<br />{$row['jezik']}<br/>
        Rezervirano = $rezerva <br/>";
		if($rezerva=="NE"){
        echo "<form  method=\"POST\">
		<button type=\"submit\" align=\"center\"  name=\"rezerviraj\">Rezerviraj</button></form>
		</div><br />";
		}else{echo "</div><br />";}

		// pridobitev podatkov o slik in izpis slike
		
		    $db = mysqli_connect("localhost","root","","dsrdb"); //keep your db name
		    $sql = "SELECT id, slika FROM knjiga WHERE id=$pid";
		    $sth = $db->query($sql);
		    $result=mysqli_fetch_array($sth);
		    echo "<div align=\"center\">";
		    echo '<img src="data:image/jpeg;base64,'.base64_encode( $result['slika'] ).'"/>';
		    echo "</div>";
		    
	
	}
	
	if (isset($_POST['rezerviraj']) && $row['rezerva'] !== "DA"){
	   
	    $host="localhost";
	    $username='root';
	    $password='';
	    $db='dsrdb';
	    $rez = "DA";
	    
	    $connect=mysqli_connect($host,$username,$password, $db) or die("Ni povezave do podatkovne baze");
	    
	    $query = "UPDATE knjiga SET rezerva='$rez' WHERE id='$pid'";
	    
	    mysqli_query($connect, $query);
	    //header('Location: '."dashboard.php");
	}
	if (isset($_POST['rezerviraj']) && $row['rezerva'] !== "NE"){
	   
	    $host="localhost";
	    $username='root';
	    $password='';
	    $db='dsrdb';
	    $rez = "NE";
	    
	    $connect=mysqli_connect($host,$username,$password, $db) or die("Ni povezave do podatkovne baze");
	    
	    $query = "UPDATE knjiga SET rezerva='$rez' WHERE id='$pid'";
	    
	    mysqli_query($connect, $query);
	    //header('Location: '."dashboard.php");
	}

	mysqli_close($dbc);

}else
if (isset($_GET['ime']) && filter_var($_GET['ime']) ) {
    
    $pid = $_GET['ime'];
   
    
    // pridobivanje podatkov o sliki
    require ('baza.php');
    $q = "SELECT * FROM  knjiga where naslov='$pid'";
    $r = mysqli_query ($dbc, $q);
    if (mysqli_num_rows($r) == 1) { // Good to go!
        
        // pridobivanje podatkov
        $row = mysqli_fetch_array ($r, MYSQLI_ASSOC);
        
        // zaèetek strani HTML
        $page_title = $row['naslov'];
        $rezerva = $row['rezerva'];
        
        
        // prikaz glave
        echo "<div align=\"center\">
		<b>{$row['naslov']}</b> by
		{$row['avtor']}<br />";
		
		
		echo "<br />{$row['jezik']}<br/>
        Rezervirano = $rezerva <br/>";
		if($rezerva=="NE"){
		    echo "<form  method=\"POST\">
		<button type=\"submit\" align=\"center\"  name=\"rezerviraj\">Rezerviraj</button></form>
		</div><br />";
		}else{echo "</div><br />";}
		
		
		$db = mysqli_connect("localhost","root","","dsrdb"); //keep your db name
		$sql = "SELECT id, slika FROM knjiga WHERE naslov='$pid'";
		$sth = $db->query($sql);
		$result=mysqli_fetch_array($sth);
		echo "<div align=\"center\">";
		echo '<img src="data:image/jpeg;base64,'.base64_encode( $result['slika'] ).'"/>';
		echo "</div>";
		
    }
    
    if (isset($_POST['rezerviraj']) && $row['rezerva'] !== "DA"){
      
        $host="localhost";
        $username='root';
        $password='';
        $db='dsrdb';
        $rez = "DA";
        
        $connect=mysqli_connect($host,$username,$password, $db) or die("Ni povezave do podatkovne baze");
        
        $query = "UPDATE knjiga SET rezerva='$rez' WHERE naslov='$pid'";
        
        mysqli_query($connect, $query);
        //header('Location: '."dashboard.php");
    }
    if (isset($_POST['rezerviraj']) && $row['rezerva'] !== "NE"){
      
        $host="localhost";
        $username='root';
        $password='';
        $db='dsrdb';
        $rez = "NE";
        
        $connect=mysqli_connect($host,$username,$password, $db) or die("Ni povezave do podatkovne baze");
        
        $query = "UPDATE knjiga SET rezerva='$rez' WHERE naslov='$pid'";
        
        mysqli_query($connect, $query);
        //header('Location: '."dashboard.php");
    }
    
   
    
    mysqli_close($dbc);
    
}
    

if (!$row) { // prikaz sporoèila o napakah
	$page_title = 'Error';
	echo '<div align="center">This page has been accessed in error!</div>';
}

?>
</body>
</html>