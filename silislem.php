<?php
include("baglanti.php");
?>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Silme İşlemi</title>
</head>

<body>
<?php

$kno=$_GET['num'];

$sil_sorgu_cumlesi="DELETE FROM rezervasyon WHERE rezervasyon_no='$kno'";

$sil=pg_query($connect,$sil_sorgu_cumlesi);

if($sil) { echo "<h1> Kayıt başarı ile silindi </h1>";} else echo "Vt Hatası";


?>
</body>
</html>