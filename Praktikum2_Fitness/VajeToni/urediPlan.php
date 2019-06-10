<?php
session_start();
require 'baza_handler.php';
$planID=$_GET['id'];
echo $planID;
$_SESSION['planId']=$planID;

$sql = "SELECT idKategorijaVaje, naziv FROM kategorijavaje where 1";
$result = mysqli_query($connection, $sql);

$polje = array();
$poljeVaje=array();

// select * from vaje join kategorijavaje on vaje.tk_vaje_kategorijavaje=kategorijavaje.idKategorijaVaje

while ($row = mysqli_fetch_array($result)) {
    $idKategorijaVaje = $row["idKategorijaVaje"];
    $nazivKategorije = $row["naziv"];

    array_push($polje, $idKategorijaVaje, $nazivKategorije);
}

for ($i = 1; $i < count($polje); $i ++) {

    $sql1 = "select idVaje, vaje.naziv as nazivVaje, opis, video from vaje 
        join kategorijavaje on 
        vaje.tk_vaje_kategorijavaje=kategorijavaje.idKategorijaVaje 
        where idKategorijaVaje='$polje[$i]' or kategorijavaje.naziv='$polje[$i]';";

    $result1 = mysqli_query($connection, $sql1);

    ?>
<div>
<form  method="post">
	<table border='1'>
		<tr>
			<th><?php echo $polje[$i]?></th>
		</tr>
	</table>
	<table border='1'>

<?php
    while ($row1 = mysqli_fetch_array($result1)) {

        $id = $row1["idVaje"];
        $naziv = $row1["nazivVaje"];
        $opis = $row1["opis"];
        $video = $row1["video"];
    ?> 

  <tr >
    <th><?php echo $id?></th>
    <th><?php echo $naziv?></th>
 
    <td><?php echo $opis?></td>
    <td><?php echo $video?></td>
    <td><input type="checkbox" name="vaje[]" value='<?php echo $polje[$i-1].'-'.$id ?>' ></td>
 </tr>


 <?php
 echo $polje[$i-1]."-".$id;
    }
    
?>
 
</table>


<?php 
$i += 1;

}
?>
<input type="submit" id="submit">

</form>
</div>
<?php 
if (isset($_POST['vaje'])) 
{
    print_r($_POST['vaje']); 
     implode(',', $_POST['vaje']);
    $checkedVall= implode(',', $_POST['vaje']);
    $obkljukano= "".$checkedVall;
    
        $_SESSION['polje']=$obkljukano;
    
    header("Location: insertPlan.php");
}


?>
