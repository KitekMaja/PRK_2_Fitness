<?php 
require 'header.php';
include_once 'PHP_skripte/baza_handler.php';

$idu = $_SESSION['id_uporabnika'];

?>

<form action="PHP_skripte/narocilo.php" method="POST">
  <div class="form-group">
    <label for="exampleFormControlInput1">Ime in priimek</label>
    <input type="text" name="imepriimek" class="form-control" id="exampleFormControlInput1" placeholder="name@example.com"/>
    <label for="exampleFormControlInput1">Tel. st.</label>
    <input type="text" name="tel_st" class="form-control" id="exampleFormControlInput1" placeholder="name@example.com"/>
    <label for="exampleFormControlInput1">Naslov</label>
    <input type="text"  name="naslov" class="form-control" id="exampleFormControlInput1" placeholder="name@example.com"/>
    <label for="exampleFormControlInput1">Kraj</label>
    <input type="text"  name="kraj" class="form-control" id="exampleFormControlInput1" placeholder="name@example.com"/>
    <label for="exampleFormControlInput1">Postna stevilka</label>
    <input type="text"  name="posta" class="form-control" id="exampleFormControlInput1" placeholder="name@example.com"/>
    <br/>
    <input type="submit" class="btn btn-primary" name="proceed-payment" value="nadaljujte k placilu"/>
  </div>

</form>

<?php 
require 'footer.php';
?>