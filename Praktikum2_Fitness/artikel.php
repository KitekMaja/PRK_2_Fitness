<?php 
    require "header.php";
    include_once "PHP_skripte/baza_handler.php";
    
    $sql = "SELECT * FROM artikel WHERE idArtikel=?";
    $stmt = mysqli_stmt_init($connection);
    if (!mysqli_stmt_prepare($stmt, $sql))
    {
        echo "SQL statement failed.";
    }
    else
    {
        mysqli_stmt_bind_param($stmt, "i", $_GET['artikel_id']);
        mysqli_stmt_execute($stmt);
        $result = mysqli_stmt_get_result($stmt);
        $row = mysqli_fetch_assoc($result);
    }
    ?>

	<div class="container-fluid">
		<div class="row">
			<div class="col-sm-2">
			</div>
			<div class="col-sm-5"><br/>
				<h1><?php  echo $row["naziv"]?></h1>
				<img src="slike/trgovina/slike_produktov/<?php echo $row["slika"]?>" alt="Card Image" class="card-img-top img-fluid">
			</div>
			<div class="col-sm-3">
			<br/><br/>
				<p><?php echo $row["opis"]?></p>
				<h5><?php echo $row["cena"]?></h5>
			</div>
			<div class="col-sm-2">
			</div>
		</div>
	</div>

<?php 
    require "footer.php";
?>