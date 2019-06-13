<?php
session_start();
require "PHP_skripte/baza_handler.php";
require('FPDF/fpdf.php');
// $planID=$_SESSION['planID'];
$planID=$_GET['id'];

class PDF extends FPDF
{
    // Page header
    function Header()
    {
        // Logo
        $this->SetFont('Arial','B',13);
        // Move to the right
        $this->Cell(80);
        // Title
        $this->Cell(80,10,'Vaš fitness plan',1,0,'C');
        // Line break
        $this->Ln(20);
    }
    
    // Page footer
    function Footer()
    {
        // Position at 1.5 cm from bottom
        $this->SetY(-15);
        // Arial italic 8
        $this->SetFont('Arial','I',8);
        // Page number
        $this->Cell(0,10,'Page '.$this->PageNo().'/{nb}',0,0,'C');
    }
}

// $pdf=new FPDF('P','mm','A4');
// $pdf->AddPage();
// $pdf->SetFont('Arial','B',16);



// vaje.opis as opisVaje,
// vaje.video as videoVaje,
// kategorijavaje.naziv as nazivKategorije,
// plan.naziv as nazivPlana

$sql = "SELECT
    vaje.idVaje as idVaje,
    vaje.naziv as imeVaje,
    
    cas,
    sets,
    rep
    
FROM `planvaja`
    join vaje on tk_planvaja_vaja=vaje.idVaje
    join kategorijavaje on vaje.tk_vaje_kategorijavaje=kategorijavaje.idKategorijaVaje
    join plan on tk_planvaja_plan=plan.idPlan
where `tk_planvaja_plan`=" . $planID . ";";

$sqlImena="show COLUMNS FROM `imenapdf`";

// echo $sql;
// echo "<div><table>";
$result = mysqli_query($connection, $sql);
$header = mysqli_query($connection, $sqlImena);
// while ($row = mysqli_fetch_array($r, MYSQLI_ASSOC)) {

//     $a=$row['idVaje'].", ".$row['nazivKategorije'].", ".$row['imeVaje'].", ".$row['cas'];
//     $b=$row['sets'].", ".$row['rep'].", ".$row['opisVaje'].", ".$row['idVaje'];
//     $res=$a.$b;

// //     $pdf->Cell(40,10,$res);

// }
$display_heading = array(
    'idVaje'=>'idVaje',
    'imeVaje'=> 'imeVaje',
    'cas'=> 'cas',
    'sets'=> 'sets',
    'rep'=> 'rep'
);



$pdf = new PDF('L','mm','A4');
//header
$pdf->AddPage();
//foter page
$pdf->AliasNbPages();
$pdf->SetFont('Arial','B',12);
foreach($header as $heading) {
    $pdf->Cell(40,12,$display_heading[$heading['Field']],1);
}
foreach($result as $row) {
    $pdf->Ln();
    foreach($row as $column)
        $pdf->Cell(40,12,$column,1);
}
$pdf->Output('D','fitnessPlan.pdf');
 ?>