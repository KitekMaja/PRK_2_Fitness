<?php
require "head.php"
?>
		<div class="main app form" id="main">
			<!-- Main Section-->
			<div class="hero-section">
				<div class="container nopadding">
					<div class="col-md-12">
						<div class="hero-content text-center">
							<h1 class="wow fadeInUp" data-wow-delay="0.1s">ZDRAVO
								PREHRANA IN FITNES NA ENOM MESTU</h1>
							<p class="wow fadeInUp" data-wow-delay="0.2s">Donesi odluku i
								registrijaj se</p>

							<button
								onclick="document.getElementById('id01').style.display='block'"
								class="btn btn-action wow fadeInUp"
								style="visibility: visible; animation-name: fadeInUp;">Prijavi se</button>
								<button
								onclick="document.getElementById('id02').style.display='block'"
								class="btn btn-action wow fadeInUp"
								style="visibility: visible; animation-name: fadeInUp;">Registriaj se</button>
						</div>

						<div id="id01" class="modal">

							
	<form class="modal-content animate" method="post" action="PHP_skripte/skripta_prijava.php">
   <div class="container">
   <br>
			<div class="title">Vpis</div>

			      <span onclick="document.getElementById('id01').style.display='none'" class="close" title="Close Modal">&times;</span>
			
			<br> <input type="text" placeholder="Vnesite email" name="email" required/> <br> 
			<br> <input type="password" placeholder="Vnesite geslo" name="geslo" required/> <br>
			<button type="submit" name="login-submit">Prijavi se </button>
			<br><p>Se niste registrirani, registriraj se! &nbsp<a href="registracija.php"><i>geslo?</i></a></p>
			
		</div>
	</form>
	
							</form>
						</div>

					</div>
				</div>
			</div>

		</div>
	</div>
	
	
		<div id="id02" class="modal">

							
	<form class="modal-content animate" method="post" action="PHP_skripte/skripta_registracija.php">
      <span onclick="document.getElementById('id02').style.display='none'" class="close" title="Close Modal">&times;</span>

   	<br> <input type="text" placeholder="Vnesite ime" name="ime" required/> <br>
			<br> <input type="text" placeholder="Vnesite priimek" name="priimek" required/> <br> 
			<br> <input type="text" placeholder="Vnesite spol" name="spol" required/> <br> 
			<br> <input type="text" placeholder="Vnesite tip uporabnika(trener/navadni)" name="tip_uporabnika" required/> <br> 
			<br> <input type="text" placeholder="Vnesite email" name="email" required/> <br> 
			<br> <input type="password" placeholder="Vnesite geslo" name="geslo" required/> <br>
			<br> <input type="password" placeholder="Ponovno vnesite geslo" name="ponovljeno_geslo" required/> <br>

			<button type="submit" name="signup-submit">Registracija </button>
			<br><p>Ste ze registrirani? <a href="index.php"><i>Prijavi se</i></a></p>
			

	</form>
						</div>

					</div>
				</div>
			</div>

		</div>

	<!-- Jquery and Js Plugins -->
	<script type="text/javascript" src="temp/js/modal.js"></script>
	<script type="text/javascript" src="temp/js/jquery-2.1.1.js"></script>
	<script type="text/javascript" src="temp/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="temp/js/plugins.js"></script>
	<script type="text/javascript" src="temp/js/menu.js"></script>
	<script type="text/javascript" src="temp/js/custom.js"></script>
	<script src="temp/js/jquery.subscribe.js"></script>
</body>
</html>
