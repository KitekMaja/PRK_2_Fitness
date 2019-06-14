<?php 

require 'header.php';

include_once 'PHP_skripte/baza_handler.php';

$idu = $_SESSION['id_uporabnika'];
$sql="SELECT artikel.*, kosarica.idKosarica, kosarica.kolicina FROM artikel, kosarica
        WHERE artikel.idArtikel = kosarica.artikel_id AND kosarica.uporabnik_id=$idu";
$result = mysqli_query($connection, $sql);
$item_quantity=0;
$total_price =0;
foreach($result as $artikel)
{ 
    $item_quantity = $item_quantity + $artikel['kolicina'];
    $total_price = $total_price + ($artikel['cena'] * $artikel['kolicina']);
}



if(!empty($_POST["checkout"])) {
    $imepriimek = $_POST ['imepriimek'];
    $naslov = $_POST ['naslov'];
    $kraj = $_POST ['kraj'];
    $posta = $_POST ['posta'];
}
$orderStatus = "pending";
$datum = date("d-m-Y H:i:s");
if (! empty ($imepriimek) && ! empty ($naslov) && ! empty ($kraj) && ! empty ($posta)) {
    
    $sql_insert ="INSERT INTO narocila (cena, imepriimek, naslov, kraj, posta, order_status, naroceno_ob, uporabnik_id) 
    VALUES ($total_price, $imepriimek, $naslov, $kraj, $posta, $orderStatus, $datum, $idu)";
    $rezultat = mysqli_query($connection, $sql_insert);
    
    if(!empty($rezultat))
    {
        if (!empty($result))
        {
            if (!empty($result))
            {
                foreach ($result as $artikel) {
                    
                    $id = $artikel['id_artikel'];
                    $kol = $artikel['kolicina'];
                    $cen = $artikel['cena'];
                    $sql_vstavi ="INSERT INTO narocila_artikel (narocilo_id, produkt_id, kolicina, cena)
    VALUES ($rezultat,$id, $kol, $cen)";
                    mysqli_query($connection, $sql_vstavi);
                }
            }
        }
    }
    
    
  
}
?>

<?php  if(!empty($rezultat)) {?>


<form name="frm_customer_detail" action="https://www.sandbox.paypal.com/cgi-bin/webscr" method="POST">
    <input type='hidden'
							name='business' value='YOUR_BUSINESS_EMAIL'> <input
							type='hidden' name='item_name' value='Cart Item'> <input
							type='hidden' name='item_number' value="<?php echo $rezultat;?>"> <input
							type='hidden' name='amount' value='<?php echo $total_price; ?>'> <input type='hidden'
							name='currency_code' value='USD'> <input type='hidden'
							name='notify_url'
							value='http://yourdomain.com/shopping-cart-check-out-flow-with-payment-integration/notify.php'> <input
							type='hidden' name='return'
							value='http://yourdomain.com/shopping-cart-check-out-flow-with-payment-integration/response.php'> <input type="hidden"
							name="cmd" value="_xclick">  <input
							type="hidden" name="order" value="<?php echo $rezultat;?>">
    <div>
        <input type="submit" class="btn-action"
                name="continue_payment" value="Continue Payment">
    </div>
    </form>
    <?php  } else {?>
    <div class="success">Problem in placing the order. Please try again!</div>
<div>
        <button class="btn-action">Back</button>
    </div>
<?php } 
?>
    



<?php  require 'footer.php'?>