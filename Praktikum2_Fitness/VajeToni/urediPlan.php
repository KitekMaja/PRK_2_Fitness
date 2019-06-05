<?php
require 'baza_handler.php';




$sql = "SELECT idKategorijaVaje, naziv FROM kategorijavaje where 1";
$result = mysqli_query($connection, $sql);

$polje=array();

while ($row = mysqli_fetch_array($result)) {
    $id = $row["idKategorijaVaje"];
    $naziv = $row["naziv"];

?>


<div>
<table border='1'>
<tr><th><?php echo $naziv?></th></tr>

<?php  
$sql = "SELECT * FROM vaje where 1";
$result = mysqli_query($connection, $sql);


while ($row = mysqli_fetch_array($result)) {
    $id = $row["idVaje"];
    $naziv = $row["naziv"];
    $video= $row["video"];
    $cas= $row["cas"];
    $sets= $row["sets"];
    $rep= $row["rep"];
    
    ?>



<tr>
<td><?php echo $naziv?></td>
<td><?php echo $video?></td>
<td><?php echo $cas?></td>
<td><?php echo $sets?></td>
<td><?php echo $rep?></td>
</tr>


</table>


</div>










<?php 
}
}
?>