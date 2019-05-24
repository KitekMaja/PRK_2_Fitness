<!DOCTYPE html>
<html>
<body>

<?php
echo "<div class='container'>";
echo "<table class= table table-striped>";
echo "
    <tr>
        <th> </th>
        <th>Naziv filma</th>
    

                  </tr>";

class TableRows extends RecursiveIteratorIterator {
    function __construct($it) {
        parent::__construct($it, self::LEAVES_ONLY);
    }
    
    function current() {
        
        if(parent::key() == 'id') { /* Check if parent::key is what you are looking for */
            $this->id = parent::current(); /* Assign parent::current to $this->id if true */
        }
        return "<td style='width:150px;border:1px solid Silver ; bgcolor= #fdfdfd class='".parent::key()."'><a href='seznamObjav.php?id=". $this->id."'>".parent::current()."</a></td>";
    }
    
    

    function beginChildren() {
        echo "<tr>";
    }
    
    function endChildren() {
       echo "</tr>" . "\n";
    }
}

$servername = "localhost";
$username = "root";
$password = "";
$dbname = "baza";

try {
    $connect = new PDO("mysql:host=$servername;dbname=$dbname", $username, $password);
    $connect->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);
    $stmt = $connect->prepare("SELECT slika FROM  objava");
    $stmt->execute();
    
    // set the resulting array to associative
    $result = $stmt->setFetchMode(PDO::FETCH_ASSOC);
    foreach(new TableRows(new RecursiveArrayIterator($stmt->fetchAll())) as $k=>$v) {
        echo $v;
    }
    
}
catch(PDOException $e) {
    echo "Error: " . $e->getMessage();
}
$connect = null;
echo "</table>";



?>

<script type="text/javascript">
$('tr').click( function() {
    window.location = $(this).find('a').attr('href');
}).hover( function() {
    $(this).toggleClass('hover');
});
</script>
</body>
</html>