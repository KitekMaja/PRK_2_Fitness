<!DOCTYPE html>
<html lang="en">
<head>

<script type="text/javascript"
	src="http://services.iperfect.net/js/IP_generalLib.js"></script>
<meta charset="utf-8">
<!--  This file has been downloaded from https://bootdey.com  -->
<!--  All snippets are MIT license https://bootdey.com/license -->
<title>Profile</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.10.2/jquery.min.js"></script>
<link
	href="http://netdna.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css"
	rel="stylesheet">

<link rel="stylesheet" href="MojCSS/profile.css">
<link
	href="https://maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css"
	rel="stylesheet">


<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
<script src="http://services.iperfect.net/js/IP_generalLib.js"></script>
</head>

<body>


	<div class="container">

		<form method="POST" action="novPlanPHP.php" id='register-form'>

			<div class="form-group">
				<label for="teza">Naziv plana:</label> <input type="text"
					class="form-control" id="naziv" name="naziv"
					placeholder="Vnesite naziv" />
			</div>

			<div class="form-group">
				<label for="teza">Opis plana:</label> <input type="text"
					class="form-control" id="opis" name="opis"
					placeholder="Vnesite opis" />
			</div>



 			<div class="form-group">
			<label for="tip">Tip plana:</label> 
			<select class="form-control"
				id="tip" name="tip">
				<option value="Javen">Javen</option>
				<option value="Zaseben">Zaseben</option>
			</select> 
			</div>
			
			<div class="form-group">
			<label for="cilj">Cilj plana</label> <select
				class="form-control" id="cilj" name="cilj">
				<option value="Izguba kilogramov">Izguba kilogramov</option>
				<option value="Kondicija">Kondicija</option>
				<option value="Pridobivanje kilogramov">Pridobivanje kilogramov</option>
			</select>
			</div>





		<div class="form-group">
				<td colspan="3">
				<input type="submit" class="btn btn-primary" name="noviPlan"
					value="Ustvari nov plan" onclick="vstavi()" /></td>
			</div>

			
	
	</div>
	</form>