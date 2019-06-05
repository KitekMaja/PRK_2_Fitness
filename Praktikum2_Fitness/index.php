<?php
require "head.php"
?>
<div class="main app form" id="main">
	<div class="hero-section">
		<div class="container nopadding">
			<div class="col-md-12">
				<div class="hero-content text-center">
					<h1 class="wow fadeInUp" data-wow-delay="0.1s">ZDRAVA PREHRANA IN FITNESS NA ENEM MESTU</h1>
					<button onclick="document.getElementById('id01').style.display='block'" 
					class="btn btn-action wow fadeInUp"
					style="visibility: visible; animation-name: fadeInUp;">Prijavi se</button>
					<button onclick="document.getElementById('id02').style.display='block'"
					class="btn btn-action wow fadeInUp"
					style="visibility: visible; animation-name: fadeInUp;">Registriaj se</button>
				</div>
				<div id="id01" class="modal">
   	<br>
	<span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-form-title" style="background-image: url(MojCSS/login/images/domov1.jpg);">
					<span class="login100-form-title-1">Prijava</span>
				</div>
			<form class="login100-form validate-form" method="post" action="PHP_skripte/skripta_prijava.php">
				<div class="wrap-input100 validate-input m-b-26" data-validate="E-naslov je obvezen!">
					<span class="label-input100">E-naslov</span>
					<input class="input100" type="text" name="username" placeholder="Vpisite e-naslov">
					<span class="focus-input100"></span>
				</div>
				<div class="wrap-input100 validate-input m-b-18" data-validate = "Geslo je obvezno!">
					<span class="label-input100">Geslo</span>
					<input class="input100" type="password" name="pass" placeholder="Vpisite geslo">
					<span class="focus-input100"></span>
				</div>
				<div class="flex-sb-m w-full p-b-30">
					<div>
						<a href="#" class="txt1">Pozabljeno geslo?</a>
					</div>
				</div>
				<div class="container-login100-form-btn">
					<button class="login100-form-btn">Vpis</button>
				</div>
			</form>
			</div>
		</div>
	</div>
</div>

	
<div id="id02" class="modal">
	<br>
	<span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal">&times;</span>
	<div class="limiter">
	<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-form-title" style="background-image: url(MojCSS/login/images/domov1.jpg);">
					<span class="login100-form-title-1">Prijava</span>
				</div>
				<form class="login100-form validate-form" method="post" action="PHP_skripte/skripta_registracija.php">
					<div class="wrap-input100 validate-input m-b-26" data-validate="Ime je obvezno!">
						<span class="label-input100">Ime</span>
						<input class="input100" type="text" name="username" placeholder="Vnesite ime">
						<span class="focus-input100"></span>
					</div>
					<div class="wrap-input100 validate-input m-b-18" data-validate = "Priimek je obvezen!">
						<span class="label-input100">Priimek</span>
						<input class="input100" type="text" name="pass" placeholder="Vnesite priimek">
						<span class="focus-input100"></span>
					</div>
					<div class="wrap-input100 validate-input m-b-26" data-validate="Spol je obvezen!">
						<span class="label-input100">Spol(M/Z)</span>
						<input class="input100" type="text" name="username" placeholder="Vnesite spol">
						<span class="focus-input100"></span>
					</div>
					<div class="wrap-input100 validate-input m-b-26" data-validate="E-naslov je obvezen!">
						<span class="label-input100">E-naslov</span>
						<input class="input100" type="text" name="username" placeholder="Vnesite e-naslov">
						<span class="focus-input100"></span>
					</div>
					<div class="wrap-input100 validate-input m-b-26" data-validate="Geslo je obvezno!">
						<span class="label-input100">Geslo</span>
						<input class="input100" type="password" name="username" placeholder="Vnesite geslo">
						<span class="focus-input100"></span>
					</div>
					<div class="flex-sb-m w-full p-b-30">
						<div>
							<a href="#" class="txt1">Pozabljeno geslo?</a>
						</div>
					</div>
					<div class="container-login100-form-btn">
						<button class="login100-form-btn">Vpis</button>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
			</div>
		</div>
	</div>
</div>
</body>
</html>
