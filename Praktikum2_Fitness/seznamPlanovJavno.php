<?php
require 'PHP_skripte/baza_handler.php';
// include 'header.php';


// $q="select * from plan where tipPlana='public';";

$q="SELECT idPlan, naziv, opisPlana, ciljPlana, datumNastanka, tipPlana, COUNT(DISTINCT `tk_planvaja_vaja`) AS `kolikoVajInPlanu` 
FROM plan JOIN planvaja on tk_planvaja_plan=plan.idPlan WHERE tipPlana='public' GROUP BY idPlan";

$r = mysqli_query ($connection, $q);
while ($row = mysqli_fetch_array ($r, MYSQLI_ASSOC)) {
    ?>
    
    
<div class='container'>
<table id='seznam' class= table table-striped border='1'>
<tr>
<td colspan='2' align='center'><a href='prikazPlana.php?id=<?php echo $row['idPlan'] ?>'>st.vajvpanu:<?php echo $row['kolikoVajInPlanu'] ?>,<?php echo $row['naziv'] ?>, <?php echo $row['opisPlana'] ?>,<?php echo $row['ciljPlana'] ?>  , Ustvarjeno: <?php echo $row['datumNastanka'] ?></a></td>

</tr>
</table>
</div>



<?php 
}

// select * from plan join planvaja on tk_planvaja_plan=plan.idPlan where tipPlana='public'
// SELECT idPlan, COUNT(DISTINCT `tk_planvaja_vaja`) AS `tk_planvaja_vaja` FROM plan join planvaja on tk_planvaja_plan=plan.idPlan GROUP BY idPlan

?>

