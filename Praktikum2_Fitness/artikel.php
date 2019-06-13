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
				<?php 
				
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
				<img src="slike/trgovina/slike_produktov/<?php echo $row["slika"]?>" alt="Card Image" class="card-img-top img-fluid">
			</div>
			<div class="col-sm-3">
			<br/><br/>
				<p><?php echo $row["opis"]?></p>
				<h5><?php echo $row["cena"]?></h5>
				
				<?php 
				if ($row["kolicina"] > 0)
				{
				    echo '<a href="#" class="btn btn-default btn-sm">Dodaj v kosarico</a>';
				}
				?>
			</div>
			<div class="col-sm-2">
			</div>
		</div>
	</div>
	
<?php 
    require "footer.php";
?>