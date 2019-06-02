

<html>
<head>
<title>Clanek</title>
<meta charset="UTF-8">
</head>

<body>
<?php
require 'header.php';
include 'PHP_skripte/baza_handler.php';
include 'PHP_skripte/baza_OOPhandler.php';
include 'sloutf.php';
// izpis podrobnosti posameznih slik
echo "<a href=\"seznamClankov.php\">seznam</a>";
$row = FALSE; // predvidevamo, da ni podrobnosti

$idu = $_SESSION['id_uporabnika'];

// pridobivanje podatkov o sliki
$q = "SELECT * FROM  uporabnik where idUporabnik=$idu";
$ss = "SELECT * FROM  meritve where tk_meritve_uporabnik=$idu";
$r = mysqli_query($connection, $q);

$sss = mysqli_query($connection, $ss);
if (mysqli_num_rows($r) == 1 && mysqli_num_rows($sss) == 1) { // Good to go!

    // pridobivanje podatkov
    $row = mysqli_fetch_array($r, MYSQLI_ASSOC);
    $rowm = mysqli_fetch_array($sss, MYSQLI_ASSOC);

    
    
    
    // zaèetek strani HTML
    $page_title = $row['ime'];

    // prikaz glave
    echo "<div align=\"center\">
		<b>{$row['ime']} {$row['priimek']}<br />";

    echo "<br />{$row['email']}<br/>";

    echo "<br />{$rowm['teza']}<br/>";
    echo "<br />{$rowm['visina']}<br/>";
    echo "<br />{$rowm['cilj']}<br/>";

    echo "<a href=\"dodajnovomeritev.php\">dodaj novo meritev</a></br>";
    echo "<a href=\"graf.php\">izrisi graf</a>";
}

mysqli_close($connection);

if (! $row) { // prikaz sporoèila o napakah
    $page_title = 'Error';
    echo '<div align="center">This page has been accessed in error!</div>';
}

?>
</body>
</html>