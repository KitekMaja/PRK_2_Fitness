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
						</div>

						<div id="id01" class="modal">

							
	<form class="modal-content animate" method="post" action="PHP_skripte/skripta_prijava.php">
   <div class="container">
   <br>
			<div class="title">Vpis</div>

			
			<br> <input type="text" placeholder="Vnesite email" name="email" required/> <br> 
			<br> <input type="password" placeholder="Vnesite geslo" name="geslo" required/> <br>
			<button type="submit" name="login-submit">Prijavi se </button>
			<br><p>Ali ste pozabili &nbsp<a href="index.php"><i>geslo?</i></a></p>
			
		</div>
	</form>
	
							</form>
						</div>

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
