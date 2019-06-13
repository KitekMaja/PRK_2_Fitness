<?php
require 'PHP_skripte/baza_handler.php';
include 'header.php';

$planID=$_GET['id'];
// echo $planID;
$_SESSION['planId']=$planID;

$sql = "SELECT idKategorijaVaje, naziv FROM kategorijavaje where 1";
$result = mysqli_query($connection, $sql);

$polje = array();
$poljeVaje=array();


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


<div class='table-responsive'>
<form  method="post">
<table border='' class="thead-dark">
		<tr><th>	<?php echo $polje[$i]?></th></tr>
	<table  class="thead-light" border='1'>

<?php
    while ($row1 = mysqli_fetch_array($result1)) {

        $id = $row1["idVaje"];
        $naziv = $row1["nazivVaje"];
        $opis = $row1["opis"];
        $video = $row1["video"];
?>
  <tr >
  <td><input type="checkbox" name="vaje[]" value='<?php echo $polje[$i-1].'-'.$id ?>' ></td>
    <th><?php echo $id?></th>
    <th><?php echo $naziv?></th>
 
    <td><?php echo $opis?></td>
    <td><?php echo $video?></td>
    
 </tr>


<?php
//  echo $polje[$i-1]."-".$id;
    }
    
?>
 
</table>
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
    
//     exit(header("Location:insertPlan.php"));
        $checkedVall=$_SESSION['polje'];
        // $checkedVall= implode(',', $_POST['vaje']);
        // echo $checkedVall;
        $poljeX= array();
        $poljeX=explode(",",$checkedVall);
        
        $sqlPriprava=null;
        
        for ($i = 0; $i < count($poljeX); $i++) {
            //     echo "<br>".$poljeX[$i];
            list($string1, $string2) = explode('-', $poljeX[$i]);
            //     echo "-->".$string1."-".$string2;
            //     echo "<br>.VALUES ('$string1','$string2')";
            $sqlPriprava=$sqlPriprava."('$planID','$string2'),";
            
        }
        // echo "<br>";
        // echo $sqlPriprava;
        // echo "<br>";echo "<br>";
        
        $query= "INSERT INTO planvaja (tk_planvaja_plan, tk_planvaja_vaja) VALUES".$sqlPriprava.";";
        $sql= substr($query, 0, -2);
        // echo $sql."<br>";
       
        mysqli_query($connection, $sql);
        mysqli_close($connection);
        
//         header("Location: prikazPlana.php");
        echo "

            <script>
                window.location = 'prikazPlana.php?id=$planID';
            </script>

               ";
}


?>


