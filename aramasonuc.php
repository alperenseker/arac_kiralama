<!DOCTYPE html>
<html>
<head>
<title>Araç Kiralama</title>
</head>
<body>
<?php

include("baglanti.php");

    
$adi=$_POST['adi'];
$sadi=$_POST['sadi'];
    
$result = pg_query($connect, "SELECT * FROM   musteri WHERE   musteri_adi='$adi' AND musteri_soyadi='$sadi' ");
if (!$result) {
  echo "An error occurred.\n";
  exit;
}

$sql10 = "SELECT * FROM   musteri WHERE   musteri_adi='$adi' AND musteri_soyadi='$sadi' ";

$res = pg_query($sql10);

$count = pg_num_rows($res);
    
    
?> 


<table border='1' align="center">
  <tr>
    <td colspan="12"><div align="center"><strong>ÜYE LİSTESİ</strong></div></td>
  </tr>
  <tr>
    <td>Musteri no</td>
    <td>Musteri Adi</td>
    <td>Musteri Soyadi</td>
    <td>Musteri Adres</td>
    <td>Musteri Doğum Tarihi</td>
    <td>E Posta</td>
    <td>Telefon</td>
    <td>Ehliyet Alım Tarihi</td>
    <td>Ehliyet No</td>
    <td>TC No</td>
    <td>İl Plaka No</td>
  </tr>

  <?php
  $i=0;
  if($count>0){
  while($arr = pg_fetch_array($result))
  {
	  echo "
	  <tr>
    <td> ".$i."  </td>
    <td> ".$arr[1]." </td>
    <td> ".$arr[2]." </td>
    <td> ".$arr[3]." </td>
    <td> ".$arr[4]." </td>
    <td> ".$arr[5]." </td>
    <td> ".$arr[6]." </td>
    <td> ".$arr[7]." </td>
    <td> ".$arr[8]."</td>
    <td> ".$arr[9]."</td>
    <td> ".$arr[10]."</td>
     </tr>
	  ";
	  $i++;
      if($i == $count) {
      break;
   }
  }
  }
    else{
        
        
   echo "Arattığınız kriterlere uygun veri bulunamadı";       
        
    }
  ?> 
 </table>  
</body>
</html>
