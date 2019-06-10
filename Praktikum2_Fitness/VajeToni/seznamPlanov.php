<?php

require 'baza_handler.php';


$q="select * from plan where tk_plan_uporabnik='1';";

$r = mysqli_query ($connection, $q);
while ($row = mysqli_fetch_array ($r, MYSQLI_ASSOC)) {
    
    echo "
<div class='container'>
<table id='seznam' class= table table-striped border='1'>
<tr>
<th colspan='2' align='center'><a href='urediPlan.php?id={$row['idPlan']}'>{$row['naziv']}, {$row['datumNastanka']}</a></th>

<br>
</table>
</div>

";
}

?>