<?php

if(isset($_POST['signup-submit']))
{
    require 'baza_handler.php';
    
    $ime=$_POST['ime'];
    $priimek=$_POST['priimek'];
    $e_naslov=$_POST['email'];
    $spol=$_POST['spol'];
    $tip=$_POST['tip_uporabnika'];
    $geslo=$_POST['geslo'];
    $ponovljeno_geslo=$_POST['ponovljeno_geslo'];
    
    
    if (empty($ime) || empty($priimek) || empty($e_naslov) || empty($spol) || empty($tip) || empty($geslo) || empty($ponovljeno_geslo))
    {
        header("Location: ../registracija.php?error=emptyfields");
        exit(); //da ne izvaja niè druga èe to ne uspe
    }
    else if (!filter_var($e_naslov, FILTER_VALIDATE_EMAIL))
    {
        header("Location: ../registracija.php?error=invalidemail");
        exit();
    }
    else if ($geslo != $ponovljeno_geslo)
    {
        header("Location: ../registracija.php?error=wrongpass");
        exit();
    }
    else {
        $sql = "SELECT email FROM uporabnik WHERE email=?";
        $stmt = mysqli_stmt_init($connection);
        if (!mysqli_stmt_prepare($stmt, $sql))
        {
            header("Location: ../registracija.php?error=sqlerror");
            exit();
        }
        else
        {
            mysqli_stmt_bind_param($stmt, "s", $e_naslov);
            mysqli_stmt_execute($stmt);
            mysqli_stmt_store_result($stmt); //shrani result v stmt
            $resultCheck = mysqli_stmt_num_rows($stmt); //vrne vrstice v bazi
            if($resultCheck>0)
            {
                header("Location: ../registracija.php?error=usertaken&mail=".$e_naslov);
                exit();
            }
            else
            {
                $sql = "INSERT INTO uporabnik (ime, priimek, email, geslo, spol, tip_uporabnika)
            VALUES (?,?,?,?,?,?);";
                $stmt = mysqli_stmt_init($connection);
                
                
                
                if (!mysqli_stmt_prepare($stmt, $sql))
                {
                    header("Location: ../registracija.php?error=sqlerror2");
                    exit();
                }
                else
                {
                    $zakodiranoGeslo = md5($geslo);
                    
                    mysqli_stmt_bind_param($stmt, "ssssss",$ime, $priimek, $e_naslov, $zakodiranoGeslo, $spol, $tip);
                    mysqli_stmt_execute($stmt);
                    
                    
                    
                    $last_id = mysqli_insert_id($connection);
                    // dodajanje slike
                    
                    
                    
                    $target_dir = "slikep/".rand();
                    $target_file = $target_dir . basename($_FILES["fileToUpload"]["name"]);
                    $uploadOk = 1;
                    $imageFileType = strtolower(pathinfo($target_file,PATHINFO_EXTENSION));
                    
                    if ($_FILES["fileToUpload"]["size"] > 500000) {
                        echo "Sorry, your file is too large.";
                        $uploadOk = 0;
                    }
                    // Allow certain file formats
                    if($imageFileType != "jpg" && $imageFileType != "png" && $imageFileType != "jpeg"
                        && $imageFileType != "gif" ) {
                            echo "Sorry, only JPG, JPEG, PNG & GIF files are allowed.";
                            $uploadOk = 0;
                        }
                        // Check if $uploadOk is set to 0 by an error
                        if ($uploadOk == 0) {
                            echo "Sorry, your file was not uploaded.";
                            // if everything is ok, try to upload file
                        } else {
                            if (move_uploaded_file($_FILES["fileToUpload"]["tmp_name"], $target_file)) {
                                echo "The file ". basename( $_FILES["fileToUpload"]["name"]). " has been uploaded.";
                            } else {
                                echo "Sorry, there was an error uploading your file.";
                            }
                        }
                        
                        $querry = "INSERT INTO slike (imeSlike,tk_slike_uporabnik) VALUES('$target_file','$last_id')";
                        mysqli_query($connection, $querry);
                        
                    
                    
                    
                    // POŠILJANJE NA MAIL
                    $sub = "Registracija";
                    $msg = "Registracija je bila uspešna";
                    mail($e_naslov,$sub,$msg);
                    
                  
                    
                }
            }
        }
    }
    mysqli_stmt_close($stmt);
    mysqli_close($connection);
}
else
{
    header("Location: ../registracija.php");
    exit();
}
?>
