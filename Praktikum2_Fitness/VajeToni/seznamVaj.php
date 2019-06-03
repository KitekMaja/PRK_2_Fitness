<?php
require 'baza_handler.php';



$q="select * from vaje where tk_vaje_uporabnik='1';";

$r = mysqli_query ($connection, $q);
while ($row = mysqli_fetch_array ($r, MYSQLI_ASSOC)) {
    
    echo "
<div class='container'>
<table id='seznam' class= table table-striped border='1'>
<tr>
<th colspan='2' align='center'><a href='vajaInfo.php?id={$row['idVaje']}'>{$row['naziv']}</a></th>
<tr><td>{$row['opis']}</td></tr>
<tr><td>{$row['video']}?controls=0</td>
<td>{$row['cas']}</td></tr>
<tr><td>{$row['sets']}</td>
<td>{$row['rep']}</td></tr>


<tr>
<iframe 
src='{$row['video']}'>
</iframe>
</tr>
</tr>
<br><br><br>
</table>
</div>

";
}

?>

