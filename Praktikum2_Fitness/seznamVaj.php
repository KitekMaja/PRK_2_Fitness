<br><br><br><br><br>
<head>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.0/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</head>
<?php
require 'PHP_skripte/baza_handler.php';
include 'head.php';

$q = 
"
SELECT 
vaje.naziv as 'nazivVaje',
vaje.opis as 'opisVaje',
vaje.video as 'videoVaje',
vaje.cas as 'casVaje',
vaje.sets as 'setsVaje',
vaje.rep as 'repVaje',
kategorijavaje.naziv as 'nazivKategorije' 
FROM `vaje` 
join kategorijavaje on `tk_vaje_kategorijavaje`=kategorijavaje.idKategorijaVaje 
ORDER BY `vaje`.`idVaje` 
ASC
";

$r = mysqli_query($connection, $q);
while ($row = mysqli_fetch_array($r, MYSQLI_ASSOC)) {
    ?>
    

<div class='container' style="overflow-x:auto;">
	<table id='seznam' class=table table-striped >
		<tr>

			<th colspan='2' scope="col"><a
				href='vajaInfo.php?id=<?php echo $row['idVaje'] ?>'>
				<h6><?php echo $row['nazivKategorije']?></h6><h3><?php echo $row['nazivVaje'] ?></h3></a></th>

		</tr>
		
		<tbody>
		<tr >
			<td colspan="2">&Ccaron;as izvajanja: <?php echo $row['casVaje'] ?> min,  &Scaron;tevilo rund: <?php echo $row['setsVaje'] ?>,  &Scaron;tevilo ponovitev: <?php echo $row['repVaje'] ?></td>
			
		</tr>
		
		<tr>
			<td ><?php echo $row['opisVaje'] ?></td>
		
			<td>
			<iframe width="100%" height="100%" src='<?php echo $row['videoVaje'].'?controls=0' ?>'></iframe>
			<p><a href='<?php echo $row['videoVaje'] ?>'></a></p>
			</td>
		
		</tr>
		</tbody>




	</table>
</div>



<?php
}

?>

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

