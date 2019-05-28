<?php 
if (isset($_POST['signup-submit'])) 
    {
        require 'baza_handler.php';
        
        $ime = $_POST['ime'];
        $priimek = $_POST['priimek'];
        $email = $_POST['email'];
        $geslo = $_POST['geslo'];
        $ponovljeno_geslo = $_POST['ponovljeno_geslo'];
        $spol = $_POST['spol'];
        $tip_uporabnika = $_POST['tip_uporabnika'];
        
        if (empty($ime) || empty($priimek) || empty($email) || 
            empty($geslo) || empty($ponovljeno_geslo) ||
            empty($spol) || empty($tip_uporabnika))
        {
            header("Location: ../registracija.php?error=emptyfields");
            exit(); //da ne izvaja niè druga èe to ne uspe
        }
        else if(!filter_var($email, FILTER_VALIDATE_EMAIL))
        {
            header("Location: ../registracija.php?error=invalidemail");
            exit();
        }
        else if ($geslo != $ponovljeno_geslo)
        {
            header("Location: ../registracija.php?error=passwordsnotmatching");
            exit();
        }
        else 
        {
            $sql_query = "SELECT email FROM uporabnik WHERE email=?"; //sql povpraševanje
            $sql_statement = mysqli_stmt_init($connection); //inicializiramo povpraševanje
            if(!mysqli_stmt_prepare($sql_statement, $sql_query)) //èe je kaj narobe s querijem javi ta error
            {
                header("Location: ../registracija.php?error=sqlstatementerror");
                exit();
            }
            else 
            {
                mysqli_stmt_bind_param($sql_statement, "s", $email); //tu gor bindamo podatke, s --> za string, ce bi zeleli dat not integer daš i
                mysqli_stmt_execute($sql_statement); //izvedemo povprasevanje
                mysqli_stmt_store_result($sql_statement); //shrani result v stmt
                $obstojeci_uporabniki = mysqli_stmt_num_rows($sql_statement); //vrne vrstice v bazi
                if($obstojeci_uporabniki>0) // preverjam ce ze obstaja uporabnik s tem emailom
                {
                    header("Location: ../registracija.php?error=emailtaken=".$email);
                    exit();
                }
                else
                {
                    $sql_query="INSERT INTO uporabnik(ime, priimek, email, geslo, spol, tip_uporabnika) 
                    VALUES (?,?,?,?,?,?);"; //spet pripravimo statement
                    $sql_statement = mysqli_stmt_init($connection); //vzpostavimo povezavo z bazo in inicializirmo statement
                    if (!mysqli_stmt_prepare($sql_query, $sql_statement)) //èe gre kaj narobe pri vstavljanju je tu error
                    {
                        header("Location: ../registracija.php?error=sqlerror-problemvstavljanja");
                        exit();
                    }
                    else
                    {
                        $zakodirano_geslo = md5($geslo); //zakodiramo geslo
                        
                        mysqli_stmt_bind_param($sql_statement, "ssssss",$ime, $priimek, $email, $zakodirano_geslo, $spol, $tip_uporabnika); //vstavimo v tabelo, 6xs je za to, ker mamo 6 stringov ki jih vstavljamo
                        mysqli_stmt_execute($sql_statement); //executamo statement
                        header("Location: ../vpis.php?signup=success"); //header nas vrne oziroma preusmeri na želeno lokacijo
                        exit();
                    }
                }
            }
        }
        mysqli_stmt_close($sql_statement);
        mysqli_close($connection);
    }
    else
    {
        header("Location: ../registracija.php");
        exit();
    }
?>