<?php 

include 'baza_handler.php';

$idu = $_SESSION['id_uporabnika'];
$cena = $_SESSION['cena'];
$datum = date("d-m-Y H:i:s");

if(!empty($_POST["proceed-payment"])) 
{
    $ime_priimek = $_POST ['imepriimek'];
    $naslov = $_POST ['naslov'];
    $kraj = $_POST ['kraj'];
    $posta = $_POST ['posta'];
    $tel_st = $_POST ['tel_st'];
    $insertOrderSQL = "INSERT INTO narocila(cena, imepriimek, tel_st, naslov, kraj, posta, order_status, naroceno_ob, uporabnik_id)
    VALUES ($cena, $ime_priimek, $tel_st, $naslov, $kraj, $posta, 'pending', $datum, $idu)";
    mysqli_query($connection, $insertOrderSQL) or die("database error:". mysqli_error($connection));
    $order_id = mysqli_insert_id($connection);
}
if($order_id)
{
    if(isset($_SESSION['kosarica']))
    {
        foreach ($_SESSION['kosarica'] as $artikel)
        {
            $insertOrderItem = "INSERT INTO narocila_artikel(narocilo_id, produkt_id, kolicina, cena)
            VALUES ('".$order_id."', '".$artikel["idArtikla"]."', '"
                . $artikel["kolicina"]."', '".$artikel["cena"]."')";
            mysqli_query($connection, $insertOrderItem);
        }
    }
}




?>