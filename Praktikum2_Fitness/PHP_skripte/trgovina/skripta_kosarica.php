<?php 
if(isset($_POST['submit-kosarica']))
{    
    foreach($_POST['kolicina'] as $key => $val) 
    {
        if($val==0) 
        {
            unset($_SESSION['kosarica'][$key]);
            header("Location: ../Trgovina/kosarica.php");
        }
        else
        {
            $_SESSION['kosarica'][$key]['kolicina']=$val;
            header("Location: ../Trgovina/kosarica.php");
        }
    }
}
?>