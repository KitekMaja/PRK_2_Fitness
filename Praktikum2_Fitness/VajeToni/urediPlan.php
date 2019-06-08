<?php
require 'baza_handler.php';

$sql = "SELECT idKategorijaVaje, naziv FROM kategorijavaje where 1";
$result = mysqli_query($connection, $sql);

$polje = array();

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
    <td><input type="checkbox" value="<?php $polje[$i-1].'-'.$id?>" checked></td>
 </tr>


 <?php
 echo $polje[$i-1]."-".$id;
    }
    
?>
 
</table>

</div>
<input type="submit" id="submit">
<?php 
$i += 1;

}
?>
<script type="text/javascript">
var checkboxes = document.querySelectorAll("input[type=checkbox]");
var submit = document.getElementById("submit");

function getChecked() {
  var checked = [];

  for (var i = 0; i < checkboxes.length; i++) {
    var checkbox = checkboxes[i];
    if (checkbox.checked) checked.push(checkbox.value);
  }

  return checked;
}

submit.addEventListener("click", function() {
  var checked = getChecked();
  console.log(checked);
});
</script>


