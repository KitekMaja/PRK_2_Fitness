<br>
<br>
<br>
<br>
<br>
<head>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<?php
require 'PHP_skripte/baza_handler.php';
include 'head.php';

// $planID=$_SESSION['planId'];
$planID = $_GET['id'];
$_SESSION['planID']=$planID;
?>
<a href='pdfPlan.php?id=<?php echo $planID?>' class="btn btn-primary  btn-block" role="button" target='_blank'>Shrani v PDF</a>
<br>

<?php 
// echo $planID;
// imeVaje opisVaje videoVaje cas sets rep nazivKategorije nazivPlana

$sql = "SELECT 
    vaje.idVaje as idVaje, 
    vaje.naziv as imeVaje, 
    vaje.opis as opisVaje, 
    vaje.video as videoVaje, 
    cas, 
    sets, 
    rep, 
    kategorijavaje.naziv as nazivKategorije, 
    plan.naziv as nazivPlana
FROM `planvaja` 
    join vaje on tk_planvaja_vaja=vaje.idVaje
    join kategorijavaje on vaje.tk_vaje_kategorijavaje=kategorijavaje.idKategorijaVaje 
    join plan on tk_planvaja_plan=plan.idPlan
where `tk_planvaja_plan`=" . $planID . ";";

// echo $sql;
// echo "<div><table>";
$r = mysqli_query($connection, $sql);
while ($row = mysqli_fetch_array($r, MYSQLI_ASSOC)) {
    ?>

<div class='container' style="overflow-x:auto;">
	<table id='seznam' class=table table-striped>
		<tr>

			<th colspan='2' scope="col"><a
				href='vajaInfo.php?id=<?php echo $row['idVaje'] ?>'>
					<h6><?php echo $row['nazivKategorije']?></h6>
					<h3><?php echo $row['imeVaje'] ?></h3>
			</a></th>

		</tr>

		<tbody>
			<tr>
				<td colspan="2">&Ccaron;as izvajanja: <?php echo $row['cas'] ?> min,  &Scaron;tevilo rund: <?php echo $row['sets'] ?>,  &Scaron;tevilo ponovitev: <?php echo $row['rep'] ?></td>

			</tr>

			<tr>
				<td><?php echo $row['opisVaje'] ?></td>

				<td><iframe width="100%" height="100%"
						src='<?php echo $row['videoVaje'].'?controls=0' ?>'></iframe>
					<p>
						<a href='<?php echo $row['videoVaje'] ?>'></a>
					</p></td>

			</tr>
		</tbody>




	</table>
</div>

<?php
}

?>

<a href='pdfPlan.php?id=<?php echo $planID?>' class="btn btn-primary  btn-block" role="button" target='_blank'>Shrani v PDF</a>

<br><br><br><br>


<!-- 
    
    
	<tr><td>ime:<?php echo $row['imeVaje'] ?></td></tr>
	<tr><td>Opis:<?php echo $row['opisVaje'] ?></td></tr>
	<tr><td>video:<?php echo $row['videoVaje'] ?></td></tr>
	<tr><td>cas:<?php echo $row['cas'] ?></td></tr>
	<tr><td>sets:<?php echo $row['sets'] ?></td></tr>
	<tr><td>rep<?php echo $row['rep'] ?></td></tr>
	<tr><td>kategorija:<?php echo $row['nazivKategorije'] ?></td></tr>
	<tr><td>imeplana:<?php echo $row['nazivPlana'] ?></td></tr>
	<tr><td>================</td></tr>
	
    echo "
            <script>
                window.location = 'prikazPlana.php?id=$planID';
            </script>

               ";
     -->


<style>
body {
  font-family: "Open Sans", sans-serif;
  line-height: 1.25;
}

table {
  border: 1px solid #ccc;
  border-collapse: collapse;
  margin: 0;
  padding: 0;
  width: 100%;
  table-layout: fixed;
}

table caption {
  font-size: 1.5em;
  margin: .5em 0 .75em;
}

table tr {
  background-color: #f8f8f8;
  border: 1px solid #ddd;
  padding: .35em;
}

table th,
table td {
  padding: .625em;
  text-align: center;
}

table th {
  font-size: .85em;
  letter-spacing: .1em;
  text-transform: uppercase;
}

@media screen and (max-width: 600px) {
  table {
    border: 0;
  }

  table caption {
    font-size: 1.3em;
  }
  
  table thead {
    border: none;
    clip: rect(0 0 0 0);
    height: 1px;
    margin: -1px;
    overflow: hidden;
    padding: 0;
    position: absolute;
    width: 1px;
  }
  
  table tr {
    border-bottom: 3px solid #ddd;
    display: block;
    margin-bottom: .625em;
  }
  
  table td {
    border-bottom: 1px solid #ddd;
    display: block;
    font-size: .8em;
    text-align: right;
  }
  
  table td::before {
    /*
    * aria-label has no advantage, it won't be read inside a table
    content: attr(aria-label);
    */
    content: attr(data-label);
    float: left;
    font-weight: bold;
    text-transform: uppercase;
  }
  
  table td:last-child {
    border-bottom: 0;
  }
}
</style>
