<?php
include("baglanti.php");
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>ALPEREN ŞEKER-Silme </title>
</head>

<body>
<?php
$id=$_GET['numara'];

echo "$id";
$sqlsorgusu="SELECT * FROM rezervasyon WHERE rezervasyon_no='$id' ";

$islem=pg_query($connect,$sqlsorgusu);
$kayit=pg_fetch_array($islem);
echo "<h1> SİLME İŞLEMİ </h1>";
echo "<h2> Kayıt Bilgi</h2>";
echo "Araç No: ".$kayit[1]."<br>";
echo "Musteri No: ".$kayit[2]."<br>";
echo "Alım Tarihi: ".$kayit[3]."<br>";
echo "Teslim Tarihi: ".$kayit[4]."<br>";
echo "Alım Firması: ".$kayit[5]."<br>";
echo "Teslim Şubesi: ".$kayit[6]."<br>";
echo "Personel No: ".$kayit[7]."<br>";
echo "Kira Rezervasyon No: ".$kayit[8]."<br>";
echo "Onay: ".$kayit[9]."<br>";

echo $kayit[0]." numaralı kaydı silmek istediğinizden emin misiniz?<br>";
echo "<h1><a href='silislem.php?num=".$kayit[0]."'> EVET   </a></h1> ";
echo "<h1><a href='listele.php'> HAYIR   </a></h1>";






?>
</body>
</html>