<?php 
require "../header.php";
include_once "../PHP_skripte/baza_handler.php";
    
    if(isset($_GET['action']) && $_GET['action']=="add")
    { 
        $idArtikla=intval($_GET['idArtikla']); 
          
        if(isset($_SESSION['kosarica'][$idArtikla]))
        {        
            $_SESSION['kosarica'][$idArtikla]['kolicina']++; 
        }
        else
        {       
            $sql="SELECT * FROM artikel WHERE idArtikel={$idArtikla}"; 
            $query=mysqli_query($connection, $sql); 
            if(mysqli_num_rows($query)!=0)
            {
                $row = mysqli_fetch_array($query);
                $_SESSION['kosarica'][$row['idArtikel']] = array("kolicina" => 1, "cena" => $row['cena']);
            }
            else
            {
                $message="Invalid product id.";
            }
        } 
    } 
?>
<html>
<head>
<link rel="stylesheet" type="text/css" href="reg.css">
<meta charset="UTF-8">
<title>Produkti</title>
</head>
<body>
 <?php 
    if(isset($message)){ 
        echo "<h2>$message</h2>"; 
    } 
?>
<?php 

include_once '../PHP_skripte/baza_handler.php';

$sql = "SELECT * FROM artikel ORDER BY idArtikel ASC;";
$stmt = mysqli_stmt_init($connection);

if (!mysqli_stmt_prepare($stmt, $sql))
{
    echo "SQL statement failed: " . mysqli_error($connection);
}
else
{
    mysqli_stmt_execute($stmt);
    $result = mysqli_stmt_get_result($stmt);
    
?>
<a href="kosarica.php">Poglej kosarico</a>
	<table class="table">
  <thead>
    <tr>
      <th scope="col">Naziv</th>
      <th scope="col"></th>
      <th scope="col">Koda</th>
      <th scope="col">Opis</th>
      <th scope="col">Cena</th>
      <th scope="col"></th>
    </tr>
  </thead>
  <tbody>
  	<?php 
  	     while($row = mysqli_fetch_assoc($result))
  	     {
  	        ?>
                <tr>
                    <td><?php echo $row["naziv"] ?></td>
                    <td><?php echo $row["idArtikel"] ?></td>
                    <td><?php echo $row["koda"] ?></td>
                    <td><?php echo $row["opis"] ?></td>
                    <td><?php echo $row["cena"] ?></td>
                    <td>
      	             <a href="produkti.php?action=add&idArtikla=<?php echo $row['idArtikel'] ?>">Dodaj v kosarico</a>
                    </td>
                </tr>
               <?php
  	     }
  	 }
  	 ?> 
  </tbody>
	</table>
</body>
</html>