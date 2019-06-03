<?php
require 'baza_handler.php';

?>
 


<form method="POST" action="dodajVajaPHP.php" id='register-form'>
<div>
	<table align="center">

		<tr>
			<td align="right">Naziv:</td>
			<td><input type="text" name="naziv" >
		</tr>

		<tr>
			<td align="right">Opis:</td>
			<td><input type="text" name="opis" id="opis"  ></td>
		</tr>

		<tr>
		<?php
            $sql = "SELECT idKategorijaVaje, naziv FROM kategorijavaje where 1";
            $result = mysqli_query($connection, $sql);

            echo "<td align='right'>kategorija: </td><td><select name='kategorijavaje'>";
            while ($row = mysqli_fetch_array($result)) {
                 $idKategorijaVaje = $row["idKategorijaVaje"];
                 $naziv = $row["naziv"];
            echo '<option value="' . $row["idKategorijaVaje"] . '">' . $row["naziv"] . '</option>';
                    }
            echo "</select></td>";
        ?>
		</tr>

		<tr>
			<td align="right">Video link:</td>
			<td><input type="text" name="video" id="video"></td>
		</tr>
		<tr>
			<td align="right">Cas izvajanja:</td>
			<td><input type="number"  max="999" name="cas" id="cas"  ></td>
		</tr>
		<tr>
			<td align="right">Set:</td>
			<td><input type="number" max="999" name="set" id="set"></td>
		</tr>
		
		<tr>
			<td align="right">Rep:</td>
			<td><input type="number" max="999" name="rep" id="rep"></td>
		</tr>
		
		
		
		
		<tr align="center">
		<td colspan="3"><input type="submit" class="btn" name="dodaj_vajo" value="Dodaj vajo" onclick="vstavi()" /></td>
		</tr>

	</table>
	 </div>
</form>


