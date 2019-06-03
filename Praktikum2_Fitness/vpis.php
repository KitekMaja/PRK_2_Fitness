<?php 
require "header.php"
?>

<html>
<head>
<meta charset="UTF-8">
<title></title>


</head>
<body>

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
	<div class="col-md-12">
               <div class="g-signin2" data-onsuccess="onSignIn">
        </div>
    </div>	
	<script type="text/javascript">
	function onSignIn(googleUser) {
	  var profile = googleUser.getBasicProfile();


      if(profile){
          $.ajax({
                type: 'POST',
                url: 'login_pro.php',
                data: {id:profile.getId(), name:profile.getName(), email:profile.getEmail()}
            }).done(function(data){
                console.log(data);
                window.location.href = 'uporabnik.php';
            }).fail(function() { 
                alert( "Posting failed." );
            });
      }


    }
</script>
	</body>
	</html>
	
	