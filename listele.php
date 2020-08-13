<!DOCTYPE html>
<html>
<head>
<title>Araç Kiralama</title>
</head>
<body>
<?php

include("baglanti.php");    
    

$result = pg_query($connect, "SELECT rezervasyon_no, arac_no, musteri_no, alim_trh, teslim_trh, alim_sube, teslim_sube, personel_no, kira_rt_no, onay
	FROM public.rezervasyon;");
if (!$result) {
  echo "An error occurred.\n";
  exit;
}

$sql10 = "select * from rezervasyon";

$res = pg_query($sql10);

$count = pg_num_rows($res);
    
    
?> 
    <form action="aramasonuc.php" id="form2" name="form2" method="POST" align="center" style="padding-bottom:25px;padding-top:25px;">
    
                <tr>
                    <td>Ad:</td>
                    <td><input type="text" style=";" class="" name="adi" id="" /></td>
                </tr>
                <tr>
                    <td>Soyad:</td>
                    <td><input type="text" style=";" class="" name="sadi" id=""  /></td>
                </tr>
                <tr>
                    <td><button type="reset" class="btn" >Temizle</button></td>  
                    <td><button type="submit" class="btn" onClick="uyari()">Ara</button></td> 
    </form>
    
<table border='1' align="center">
  <tr>
    <td colspan="12"><div align="center"><strong>REZERVASYON LİSTESİ</strong></div></td>
  </tr>
  <tr>
    <td>Rezervasyon no</td>
    <td>Araç No</td>
    <td>Musteri No</td>
    <td>Alım Tarihi</td>
    <td>Teslim Tarihi</td>
    <td>Alım Firması</td>
    <td>Teslim Şubesi</td>
    <td>Personel No</td>
    <td>Kira Rezervasyon No</td>
    <td>Onay</td>
    <td>Güncelle</td>
    <td>Sil</td>
  </tr>

  <?php
  $i=0;
  
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
    <td> <a href='guncelle.php?uyenumara=".$arr[0]."'> Guncelle </a>  </td>
    <td> <a href='sil.php?numara=".$arr[0]."'>  Sil </a> </td>
     </tr>
	  ";
	  $i++;
      if($i == $count) {
      break;
   }
  }

  ?> 
 </table>  
</body>
</html>
