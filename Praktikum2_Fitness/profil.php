 <?php
include ('baza.php');
$email=$_SESSION['email'];
echo "prijavljen ". $email;

$connect = mysqli_connect('localhost', 'root', '', 'baza');

$q="select * from oseba where email='".$email."';";

$r = mysqli_query ($connect, $q);

// $stmt = $connect->prepare("select * from oseba where email='.$email .'LIMIT 1');");
// $stmt->bind_param("ssssss");
$row = mysqli_fetch_array ($r, MYSQLI_ASSOC);

if ($row) {
?>

<form  action="profil.php"><!-- method="POST" -->
	<table >

		<tr>
			<td align="right">Id:</td>
			<td><input type="text" name="id" id="id" <?php echo $row[':id'] ?>"></td>
		</tr>
		<tr>
			<td align="right">Ime:</td>
			<td><input type="text" name="ime" id="ime" <?php //echo $row[':ime'] ?>"></td>
		</tr>
		 
		<tr>
			<td align="right">Priimek:</td>
			<td><input type="text" name="priimek" id="priimek"value="<?php //echo $row[':priimek'] ?>"></td>
		</tr>
		
		<tr>
			<td align="right">email:</td>
			<td><input type="text" name="email"  id="email"value="<?php //echo $row[':email'] ?>"></td>
		</tr>
		
		<tr>
			<td align="right">Datum:</td>
			<td><input type="date" name="datum"  id="datum" value="<?php //echo $row[':datum'] ?>"></td>
		</tr>
		
		<tr>
			<td align="right">Spol:</td>
			<td><input type="text" name="spol"  id="spol" value="<?php //echo $row[':spol'] ?>"></td>
		</tr>
		 
		<tr></tr>
		<tr align="center">
		<td colspan="3"><input type="submit" class="btn" name="sprememba_user"   /></td>  <!-- onclick="vstavi()" -->
		</tr>

	</table>
	 
</form>
 <?php 
}




// if(isset($_POST['sprememba_user'])){
//     $email=$_SESSION['email'];
// $firstname = mysqli_real_escape_string($connect, $_POST['ime']);
// $lastname = mysqli_real_escape_string($connect, $_POST['priimek']);
// $address = mysqli_real_escape_string($connect, $_POST['email']);
// $country = mysqli_real_escape_string($connect, $_POST['datum']);
// $typeDocu = mysqli_real_escape_string($connect, $_POST['spol']);



// if (empty(ime)) {
//     echo "Zahtevano je ime";
// }else{
    
//     $query = "UPDATE oseba
//         SET ime= '$ime'
//         WHERE email='$email'";
    
    
    
//     mysqli_query($connect, $query);
    mysqli_close($connect);
// }
// $pot = "localhost/hotel/Strani";
    
    // preusmeritev na zacetno prijavo
   // header("Location: http://localhost/hotel/strani/index.php");
// }

?>