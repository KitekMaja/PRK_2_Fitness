<?php
require 'PHP_skripte/baza_handler.php'; 
include 'header.php';



$id=$_REQUEST['id'];

echo $id;



$q="SELECT * FROM `vaje` WHERE idVaje='$id'";

$r = mysqli_query ($connection, $q);
while ($row = mysqli_fetch_array ($r, MYSQLI_ASSOC)) {
    
    ?>
  <div class='container'>  
<form method="POST" action="php?id=<?php echo $row['idVaje']?>">   
<table class= table table-striped>


<tr>
<td><?php echo $row['naziv'] ?></td>
<td><?php echo $row['opis'] ?></td>
<td><iframe src='<?php echo $row['video'] ?>'></iframe></td>
<td><?php echo $row['cas'] ?></td>
<td><?php echo $row['sets'] ?></td>
<td><?php echo $row['rep'] ?></td>

<li><a href="seznamVaj.php"> <i
									class="glyphicon glyphicon-heart-empty"></i> nazaj
							</a></li>


</tr>
</table>
</form>
</div>

<?php }?>