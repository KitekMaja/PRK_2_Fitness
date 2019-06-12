<?php 
require "header.php";

include_once "PHP_skripte/baza_handler.php";

if(isset($_GET['action']) && $_GET['action']=="add")
{
    $idArtikla=intval($_GET['idArtikla']);
    
    if(isset($_SESSION['kosarica'][$idArtikla]))
    {
        $_SESSION['kosarica'][$idArtikla]['kolicina']++;
    }
    else
    {
        $sql="SELECT * FROM artikel WHERE idArtikel={$idArtikla}";
        $query=mysqli_query($connection, $sql);
        if(mysqli_num_rows($query)!=0) //preveri èe je produkt s tem id-jem
        {
            $row = mysqli_fetch_array($query);
            
            
            
            $_SESSION['kosarica'][$row['idArtikel']] = array("kolicina" => 1, "cena" => $row['cena']);
        }
        else
        {
            $message="Invalid product id.";
        }
    }
}


?>
<div class="row">
</div>

    	<section class="gallery-block cards-gallery">
	    	<div class="container">
	        	<div class="heading">
	          		<h2>Galerija</h2>
	        	</div>
	        	<div class="row">
	        	<?php 
	        	$sql = "SELECT * FROM artikel ORDER BY idArtikel ASC;";
	        	$stmt = mysqli_stmt_init($connection);
	        	
	        	if (!mysqli_stmt_prepare($stmt, $sql))
	        	{
	        	    echo "SQL statement failed: " . mysqli_error($connection);
	        	}
	        	else
	        	{
	        	    mysqli_stmt_execute($stmt);
	        	    $result = mysqli_stmt_get_result($stmt);
	        	    
  	                while($row = mysqli_fetch_assoc($result))
  	                {
  	           ?>
	       			<div class="col-md-6 col-lg-4">
                   	 	<div class="card border-0 transform-on-hover">
                        	<a class="lightbox" href="">
                        		<img src="slike/trgovina/slike_produktov/rsn.jpg" alt="Card Image" class="card-img-top" style="width:350px; height: 350px;">
                        	</a>
    	                	<div class="card-body">
    	                   	<h6><a href="#"></a><?php echo $row["naziv"] ?></h6>
                         	<br/>
                         	<?php echo $row["cena"] ?>
                         	<br/>
    	                 	</div>
      	            		 <a href="produkti.php?action=add&idArtikla=<?php echo $row['idArtikel'] ?>">Dodaj v kosarico</a>
    	            	</div>
               		</div>
               		 <?php
  	                 }
  	              }
  	          ?> 
	    		</div>
	    	</div>
	    </section>
<a href="kosarica.php">Poglej kosarico</a>

</body>
<?php 
    require "footer.php";
?>