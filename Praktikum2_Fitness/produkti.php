<?php 
require "header.php";
include_once "PHP_skripte/baza_handler.php";

$idu = $_SESSION['id_uporabnika'];

if(isset($_GET['action']) && $_GET['action']=="add")
{
    
    $ida=intval($_GET['idArtikel']);
    
    $sql_select = "SELECT * FROM kosarica WHERE artikel_id=$ida";
    $stmt = mysqli_query($connection, $sql_select);
    $rezultat = mysqli_num_rows($stmt);
    if ($rezultat != 0)
    {
        $st = $rezultat['kolicina'];
        $st ++;
        
        $sql_update = "UPDATE kosarica SET kolicina = $st WHERE artikel_id = $ida";
        echo $sql_update;
        if (mysqli_query($connection, $sql_update))
        {
            echo "Uspesen updejt";
        }
        else
        {
            echo "Error: " .$sql_insert."<br>".mysqli_error($connection);
        }
        
    }
    else
    {
        $sql_insert ="INSERT INTO kosarica (uporabnik_id, artikel_id, kolicina) VALUES ($idu, $ida, 1)";
        if (mysqli_query($connection, $sql_insert))
        {
            echo "Uspesen vnos";
        }
        else
        {
            echo "Error: " .$sql_insert."<br>".mysqli_error($connection);
        }
                       
            
   }
        
}
    



?>
<div class="row">
</div>
    	<section class="gallery-block cards-gallery">
	    	<div class="container">
	        	<div class="heading">
	        	</div> 
	        	<div class="row">
	        	<?php 
	        	
	        	$sql = "SELECT * FROM artikel ORDER BY idArtikel ASC";
	        	$stmt = mysqli_stmt_init($connection);
	        	if (!mysqli_stmt_prepare($stmt, $sql))
	        	{
	        	    echo "SQL statement failed.";
	        	}
	        	else
	        	{
	        	    mysqli_stmt_execute($stmt);
	        	    $result = mysqli_stmt_get_result($stmt);
	        	    
	        	    while ($row = mysqli_fetch_assoc($result))
	        	    {
	        	
  	           ?>
	       			<div class="col-md-6 col-lg-4">
                   	 	<div class="card border-0 transform-on-hover">
                        	<a class="lightbox" href="">
                        		<img src="slike/trgovina/slike_produktov/<?php echo $row["slika"] ?>" alt="Card Image" class="card-img-top img-fluid">
                        	</a>
    	                	<div class="card-body">
    	                	
    	                   	<h6><a href=""><?php echo $row["naziv"] ?></a></h6>
    	                   	
                         	<br/>
                         	<?php echo $row["cena"];?>&#8364;<br/><?php
                         	
                         	if ($row["kolicina"] == 0)
                         	{
                         	    echo '<span class="badge badge-pill badge-danger">Ni na zalogi</span>';
                         	}
                         	else if ($row["kolicina"] <= 10)
                         	{
                         	    echo '<span class="badge badge-pill badge-warning">Zadnji kosi</span>';
                         	}
                         	else
                         	{
                         	    echo '<span class="badge badge-pill badge-success">Na zalogi</span>';
                         	}
                         	
                         	?>
                         	<form method="post" action="produkti.php?action=add&idArtikel=<?php echo $row['idArtikel'] ?>">
                         		<input type="submit" value="Dodaj v kosarico" class="btn btn-success"/>
                         	</form>
                         	<br/>
    	                 	</div>
    	            	</div>
               		</div>
               		<?php 
	        	     }
	              }
	    
                ?>
                <div class="col-md-6 col-lg-4">
                <?php 
	    if(isset($_SESSION['kosarica'])){
	        
	        $sql="SELECT * FROM artikel WHERE idArtikel IN (";
	        
	        foreach($_SESSION['kosarica'] as $ida => $value) {
	            $sql.=$ida.",";
	        }
	        
	        $sql=substr($sql, 0, -1).") ORDER BY idArtikel ASC";
	        $query=mysqli_query($connection,$sql);
	        while($row=mysqli_fetch_array($query)){
	            
	            ?>
            <p><?php echo $row['naziv'] ?> x <?php echo $_SESSION['kosarica'][$row['idArtikel']]['kolicina'] ?></p> 
        <?php 
              
        } 
    ?> 
        <hr /> 
        <a href="kosarica.php">Go to cart</a> 
    <?php 
          
    }else{ 
          
        echo "<p>Vasa kosarica je prazna.</p>"; 
          
    } 
	    
	    ?>
                </div>
	    		</div>
	    	</div>
	    </section>

</body>
<?php 
    require "footer.php";
?>