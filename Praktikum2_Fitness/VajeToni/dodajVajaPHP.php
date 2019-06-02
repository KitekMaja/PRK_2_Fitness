<?php
require 'baza_handler.php';
// $db = mysqli_connect('localhost:3307', 'root', '', 'hotel');
// $connection = mysqli_connect($db_server, $db_username, $db_password, $db_database);


$naziv = mysqli_real_escape_string($connection, $_POST['naziv']);
$opis = mysqli_real_escape_string($connection, $_POST['opis']);
$kategorijavaje = mysqli_real_escape_string($connection, $_POST['kategorijavaje']);
$video =getYoutubeEmbedUrl( mysqli_real_escape_string($connection, $_POST['video']) );
$cas = mysqli_real_escape_string($connection, $_POST['cas']);
$set = mysqli_real_escape_string($connection, $_POST['set']);
$rep = mysqli_real_escape_string($connection, $_POST['rep']);


//od kje?-->   https://stackoverflow.com/questions/19050890/find-youtube-link-in-php-string-and-convert-it-into-embed-code
function getYoutubeEmbedUrl($url)
{
    $shortUrlRegex = '/youtu.be\/([a-zA-Z0-9_-]+)\??/i';
    $longUrlRegex = '/youtube.com\/((?:embed)|(?:watch))((?:\?v\=)|(?:\/))([a-zA-Z0-9_-]+)/i';
    
    if (preg_match($longUrlRegex, $url, $matches)) {
        $youtube_id = $matches[count($matches) - 1];
    }
    
    if (preg_match($shortUrlRegex, $url, $matches)) {
        $youtube_id = $matches[count($matches) - 1];
    }
    return 'https://www.youtube.com/embed/' . $youtube_id ;
}





if(isset($_POST['dodaj_vajo'])){
    if(empty($naziv) || empty($opis)){
        if (empty($naziv)) {  echo "naziv is required"; }
        
        if (empty($opis)) { echo "opis is required"; }
        
      
    }else{
       
       
            
            
            $query = "INSERT INTO `vaja`
(`naziv`, `opis`, `video`, `cas`, `set`, `rep` , `KategorijaVaje_id`, `Uporabnik_id`) 
  			  VALUES('$naziv', '$opis', '$video', '$cas','$set','$rep', '$kategorijavaje', 2);";
            
            
            mysqli_query($connection, $query);
            mysqli_close($connection);
            
            echo $query;
            
            header("Location: seznamVaj.php");
        }
        
    }


    //INSERT INTO `vaja`(`id`, `naziv`, `opis`, `video`, `cas`, `set`, `rep`, `KategorijaVaje_id`, `Uporabnik_id`) 
    //VALUES ([value-1],[value-2],[value-3],[value-4],[value-5],[value-6],[value-7],[value-8],[value-9])
    //https://www.youtube.com/embed/tgbNymZ7vqY
    //https://www.youtube.com/watch?v=xtjrYPPrNZE
?>
