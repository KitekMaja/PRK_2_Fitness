<?php
require 'baza_handler.php';



$q="select * from vaja where Uporabnik_id='2';";

$r = mysqli_query ($connection, $q);
while ($row = mysqli_fetch_array ($r, MYSQLI_ASSOC)) {
    
    echo "
<div class='container'>
<table id='seznam' class= table table-striped border='1'>
<tr>
<th colspan='2' align='center'><a href='vajaInfo.php?id={$row['id']}'>{$row['naziv']}</a></th>
<tr><td>{$row['opis']}</td></tr>
<tr><td>{$row['video']}?controls=0</td>
<td>{$row['cas']}</td></tr>
<tr><td>{$row['set']}</td>
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

