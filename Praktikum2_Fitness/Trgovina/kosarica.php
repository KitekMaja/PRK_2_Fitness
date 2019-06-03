<?php 
    require "../header.php";
?>

<html>
<head>
<link rel="stylesheet" type="text/css" href="reg.css">
<meta charset="UTF-8">
<title>Kosarica</title>
</head>
<body>
<a href="produkti.php">Vrni se na produkte</a>
<form method="post" action="../PHP_skripte/skripta_kosarica.php"> 
<table class="table">
  <thead>
    <tr>
      <th scope="col">Naziv</th>
      <th scope="col"></th>
      <th scope="col">Cena</th>
      <th scope="col"></th>
    </tr>
  </thead>
  <tbody>
  <?php 
      $sql="SELECT * FROM artikel WHERE idArtikel IN ("; 
      foreach($_SESSION['kosarica'] as $idArtikla => $value) 
      { 
        $sql.=$idArtikla.","; 
      } 
      $sql=substr($sql, 0, -1).") ORDER BY idArtikel ASC"; 
      $query=mysql_query($sql); 
      $skupna_cena=0; 
      while($row=mysql_fetch_array($query))
      { 
        $vmesna_cena=$_SESSION['kosarica'][$row['idArtikel']]['kolicina']*$row['cena']; 
        $skupna_cena+=$vmesna_cena; 
  ?>                      
    <tr>
      <td><?php echo $row["naziv"] ?></td>
      <td></td>
      <td><?php echo $row["cena"] ?></td>
      <td>
      	<input type="text" name="kolicina[<?php echo $row['idArtikel'] ?>]" size="5" value="<?php echo $_SESSION['kosarica'][$row['idArtikel']]['kolicina'] ?>" />
      </td>
    </tr>
    <?php             
      } 
    ?>
    <tr> 
     <td colspan="4">Koncna cena: <?php echo $skupna_cena ?></td> 
    </tr>        
  </tbody>
</table>
</br>
<button type="submit" name="submit-kosarica">Posodobi kosarico</button>
</form>
<p>Da odstranite artikel, kolicino spremenite na 0.</p>
</body>
</html>