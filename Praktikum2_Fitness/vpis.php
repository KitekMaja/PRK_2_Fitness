<?php 
require "header.php"
?>

<html>
<head>
<meta charset="UTF-8">
<title></title>
</head>
<body>
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-form-title" style="background-image: url(MojCSS/login/images/vpis.jpg);">
					<span class="login100-form-title-1">
						Prijava
					</span>
				</div>

				<form class="login100-form validate-form" method="post" action="PHP_skripte/skripta_prijava.php">
					<div class="wrap-input100 validate-input m-b-26" data-validate="Vpi&#353;ite e-naslov!">
						<span class="label-input100">E-naslov</span>
						<input class="input100" type="text" name="email" placeholder="E-naslov">
						<span class="focus-input100"></span>
					</div>
					<div class="wrap-input100 validate-input m-b-18" data-validate="Vpi&#353;ite geslo">
						<span class="label-input100">Geslo</span>
						<input class="input100" type="password" name="geslo" placeholder="Geslo">
						<span class="focus-input100"></span>
					</div>
					<div class="flex-sb-m w-full p-b-30">

						<div>
							<a href="pozabljeno_geslo.php" class="txt1">
								Pozabljeno geslo?
							</a>
						</div>
					</div>

					<div class="container-login100-form-btn">
						<button class="login100-form-btn" type="submit" name="login-submit">
							Prijavi se
						</button>
					</div>
				</form>
			</div>
		</div>
</body>
</html>
	
	