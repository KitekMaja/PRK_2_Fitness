<?php
session_start();
session_unset(); //izbri�e vrednosti v session spremenljivkah
session_destroy();

header("Location: ../domov.php");
?>
