<?php
include('baglanti.php');
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>Untitled Document</title>
</head>
<body>
<?php
$idnumaram=$_GET['idnumaram'];    
// post metodu ile kullanıcıdan bilgiler alındı
$asecimi=$_POST['asecimi'];
$alimtrhi=$_POST['alimtrhi'];
$teslimtrhi=$_POST['teslimtrhi'];
$afirma=$_POST['afirma'];
$vsube=$_POST['vsube'];
$spersonel=$_POST['spersonel'];
$rtipi=$_POST['rtipi'];
echo "<h1> Formdan gelen bilgiler3 </h1>";

echo "<p> $asecimi - $alimtrhi - $teslimtrhi - $afirma - $vsube - $spersonel - $rtipi</p>";
    
    
$guncellesorgu="UPDATE public.rezervasyon SET arac_no=$asecimi, alim_trh='$alimtrhi' , teslim_trh='$teslimtrhi', alim_sube=$afirma, teslim_sube=$vsube, personel_no=$spersonel, kira_rt_no=$rtipi WHERE rezervasyon_no='$idnumaram' ";

$calistir=pg_query($connect,$guncellesorgu);

if($calistir) {
	echo "<h1> $idnumaram numaralı kayıt başarı ile güncellendi </h1>";
	}else
	{
		echo "Veritabanı sorgu hatası";
	}





?>

</body>
</html>