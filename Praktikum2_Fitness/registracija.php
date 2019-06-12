<?php
require 'head.php';

?>
<body>
	<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-form-title" style="background-image: url(MojCSS/login/images/registracija.jpg);">
					<span class="login100-form-title-1">
						Registracija
					</span>
				</div>
				<form enctype="multipart/form-data" class="login100-form validate-form" method="post" action="PHP_skripte/skripta_registracija.php">
					<div class="wrap-input100 validate-input m-b-26" data-validate="Vpi&#353;ite e-naslov!">
						<span class="label-input100">Ime</span>
						<input class="input100" type="text" name="ime" placeholder="Ime">
						<span class="focus-input100"></span>
					</div>
					<div class="wrap-input100 validate-input m-b-18" data-validate = "Vpi&#353;ite is required">
						<span class="label-input100">Priimek</span>
						<input class="input100" type="text" name="priimek" placeholder="Priimek">
						<span class="focus-input100"></span>
					</div>
					<div class="wrap-input100 validate-input m-b-26" data-validate="Vpi&#353;ite e-naslov!">
						<span class="label-input100">Spol</span>
						<input class="input100" type="text" name="spol" placeholder="(M/&#381;)">
						<span class="focus-input100"></span>
					</div>
					<div class="wrap-input100 validate-input m-b-26" data-validate="Vpi&#353;ite e-naslov!">
						<span class="label-input100">Tip</span>
						<input class="input100" type="text" name="tip_uporabnika" placeholder="(navadni/trener)">
						<span class="focus-input100"></span>
					</div>
					<div class="wrap-input100 validate-input m-b-26" data-validate="Vpi&#353;ite e-naslov!">
						<span class="label-input100">E-naslov</span>
						<input class="input100" type="text" name="email" placeholder="E-naslov">
						<span class="focus-input100"></span>
					</div>
					<div class="wrap-input100 validate-input m-b-26" data-validate="Vpi&#353;ite e-naslov!">
						<span class="label-input100">Geslo</span>
						<input class="input100" type="password" name="geslo" placeholder="Geslo">
						<span class="focus-input100"></span>
					</div>
					<div class="wrap-input100 validate-input m-b-26" data-validate="Vpi&#353;ite e-naslov!">
						<span class="label-input100">Ponovljeno geslo</span>
						<input class="input100" type="password" name="ponovljeno_geslo" placeholder="Ponovljeno geslo">
						<span class="focus-input100"></span>
					</div>
					
					<div class="wrap-input100 validate-input m-b-26" data-validate="Vpi&#353;ite e-naslov!">
						<span class="label-input100">Izberite sliko</span>
					 <input class="input100" type="file" name="fileToUpload" id="fileToUpload">
						<span class="focus-input100"></span>
					</div>
					<div class="container-login100-form-btn">
						<button class="login100-form-btn" type="submit" name="signup-submit">
							Registriraj se
						</button>
					</div>
				</form>
			</div>
		</div>

<label  for="ime">Izberite sliko: </label>
					<br>