<?php
if (isset($_POST['login-submit']))
{
  require 'baza_handler.php';
  $vpisne_informacije = $_POST['email'];
  $geslo = md5($_POST['geslo']);
  if (empty($vpisne_informacije) || empty($geslo))
  {
    header("Location: ../index.php?error=emptyfields");
    exit();
  }
  else
  {
      $sql = "SELECT * FROM uporabnik WHERE email=?;";
      $stmt = mysqli_stmt_init($connection);
      if(!mysqli_stmt_prepare($stmt, $sql))
      {
        header("Location: ../izpis.php?error=sqlerror");
        exit();
      }
      else
      {
        mysqli_stmt_bind_param($stmt, "s", $vpisne_informacije);
        mysqli_stmt_execute($stmt);
        $rezultat = mysqli_stmt_get_result($stmt);
        if ($vrstica = mysqli_fetch_assoc($rezultat))
        {
          $preverjenoGeslo = $vrstica['geslo'];
          if($preverjenoGeslo != $geslo)
          {
            header("Location: ../izpis.php?error=wrongpassword");
            exit();
          }
          else if ($preverjenoGeslo == $geslo)
          {
             session_start();
             $_SESSION['id_uporabnika']=$vrstica['idUporabnik'];
             $_SESSION['email_uporabnika']=$vrstica['email'];
            header("Location: ../izpis.php?login=success");
            exit();
          }
          else // èe je sluèajno string ali kaj druga
          {
            header("Location: ../izpis.php?error=wrongpassword2");
            exit();
          }
        }
        else
        {
          header("Location: ../izpis.php?error=nouser");
          exit();
        }
      }
  }
}
else
{
    header("Location: ../izpis.php");
    exit();
}
 ?>
