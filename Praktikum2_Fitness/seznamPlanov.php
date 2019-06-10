<?php
require 'PHP_skripte/baza_handler.php';
include 'header.php';


$q="select * from plan ;";

$r = mysqli_query ($connection, $q);
while ($row = mysqli_fetch_array ($r, MYSQLI_ASSOC)) {
    ?>
    
    
<div class='container'>
<table id='seznam' class= table table-striped border='1'>
<tr>
<td colspan='2' align='center'><a href='urediPlan.php?id=<?php echo $row['idPlan'] ?>'><?php echo $row['naziv'] ?>  , Ustvarjeno: <?php echo $row['datumNastanka'] ?></a></td>

</tr>
</table>
</div>



<?php 
}

?>