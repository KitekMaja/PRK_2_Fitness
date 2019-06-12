<?php
if (isset($_POST['login-submit']))
{
  require 'baza_handler.php';
  $email = $_POST['email'];
  $geslo = md5($_POST['geslo']);
  if (empty($email) || empty($geslo))
  {
    header("Location: ../domov.php?error=emptyfields");
    exit();
  }
  else
  {
      $sql = "SELECT * FROM uporabnik WHERE email=?;";
      $stmt = mysqli_stmt_init($connection);
      if(!mysqli_stmt_prepare($stmt, $sql))
      {
        header("Location: ../profil.php?error=sqlerror");
        exit();
      }
      else
      {
        mysqli_stmt_bind_param($stmt, "s", $email);
        mysqli_stmt_execute($stmt);
        $rezultat = mysqli_stmt_get_result($stmt);
        if ($vrstica = mysqli_fetch_assoc($rezultat))
        {
          $preverjenoGeslo = $vrstica['geslo'];
          if($preverjenoGeslo != $geslo)
          {
            header("Location: ../profil.php?error=wrongpassword");
            exit();
          }
          else if ($preverjenoGeslo == $geslo)
          {
             session_start();
             $_SESSION['id_uporabnika']=$vrstica['idUporabnik'];
             $_SESSION['email_uporabnika']=$vrstica['email'];
            header("Location: ../profil.php?login=success");
            exit();
          }
          else // èe je sluèajno string ali kaj druga
          {
            header("Location: ../profil.php?error=wrongpassword2");
            exit();
          }
        }
        else
        {
          header("Location: ../profil.php?error=nouser");
          exit();
        }
      }
  }
}
else
{
    header("Location: ../profil.php");
    exit();
}
 ?>
