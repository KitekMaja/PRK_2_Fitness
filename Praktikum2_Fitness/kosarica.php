<?php 
    require "header.php";
    include_once "PHP_skripte/baza_handler.php";
    
    if(isset($_POST['submit-kosarica']))
    {
        foreach($_POST['kolicina'] as $key => $val)
        {
            if($val==0)
            {
                unset($_SESSION['kosarica'][$key]);
                header("Location: kosarica.php");
            }
            else
            {
                $_SESSION['kosarica'][$key]['kolicina']=$val;
                header("Location: kosarica.php");
            }
        }
    }
?>

<body>
<a href="produkti.php">Vrni se na produkte</a>
<form method="post" action="kosarica.php"> 
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
      echo $sql;
      $query=mysqli_query($connection, $sql); 
      $skupna_cena=0; 
      while($row = mysqli_fetch_array($query))
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