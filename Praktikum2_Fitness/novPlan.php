
<h1>ustvari nov plan:</h1>


<form method="POST" action="novPlanPHP.php" id='register-form'>
	<div>
		<table>

			<tr>
				<td align="right">Naziv plana:</td>
				<td><input type="text" name="naziv">
			
			</tr>

			<tr>
				<td align="right">Opis plana:</td>
				<td><input type="text" name="opis">
			
			</tr>

			<tr>
				<td align="right">Tip plana:</td>
				<td><select name="tip">
					<option value="privat">Zaseben</option>
					<option value="public">Javen</option>
				</select></td>
			</tr>

			<tr>
				<td align="right">Cilj plana:</td>
				<td><select name="cilj">
					<option value="hujsanje">Hujsanje</option>
					<option value="kondicija">Kondicija</option>
					<option value="pridobivanje">Pridobivanje</option>
				</select></td>			
			</tr>


			<tr>
				<td colspan="3"><input type="submit" class="btn" name="noviPlan"
					value="Ustvari nov plan" onclick="vstavi()" /></td>
			</tr>

		</table>
	</div>
</form>
