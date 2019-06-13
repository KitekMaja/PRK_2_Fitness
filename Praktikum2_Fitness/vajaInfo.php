<?php
require 'PHP_skripte/baza_handler.php';
include 'header.php';

$id = $_REQUEST['id'];

$q = "SELECT * FROM `vaje` WHERE idVaje='$id'";

$r = mysqli_query($connection, $q);
while ($row = mysqli_fetch_array($r, MYSQLI_ASSOC)) {

    ?>
<br>
<div class='container' style="overflow-x: auto;">
	<table id='seznam' class=table table-striped>
		<tr>

			<th colspan='2' scope="col"><a
				href='vajaInfo.php?id=<?php echo $row['idVaje'] ?>'>
					<h3><?php echo $row['naziv'] ?></h3>
			</a></th>

		</tr>

		<tbody>
			<tr>
				<td colspan="2">&Ccaron;as izvajanja: <?php echo $row['cas'] ?> min,  &Scaron;tevilo rund: <?php echo $row['sets'] ?>,  &Scaron;tevilo ponovitev: <?php echo $row['rep'] ?></td>

			</tr>

			<tr>
				<td><?php echo $row['opis'] ?></td>

				<td><iframe width="100%" height="100%"
						src='<?php echo $row['video'].'?controls=0' ?>'></iframe>
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

table th, table td {
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
		clip: rect(0, 0, 0, 0);
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

<!-- 



  <div class='container'>  
<form method="POST" action="php?id=<?php echo $row['idVaje']?>">   
<table class= table table-striped>


<tr>
<td><?php echo $row['naziv'] ?></td>
<td><?php echo $row['opis'] ?></td>
<td><iframe src='<?php echo $row['video'] ?>'></iframe></td>
<td><?php echo $row['cas'] ?></td>
<td><?php echo $row['sets'] ?></td>
<td><?php echo $row['rep'] ?></td>

<td><li><a href="seznamVaj.php"> <i
									class="glyphicon glyphicon-heart-empty"></i> nazaj
							</a></li></td>


</tr>
</table>
</form>
</div>

 -->