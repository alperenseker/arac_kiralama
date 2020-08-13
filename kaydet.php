<!DOCTYPE html>
<html>
<head>
<title>Araç Kiralama</title>
</head>
<body>
</body>
</html>
<?php

include("baglanti.php");

$id=$_POST['id'];
$adi=$_POST['adi'];
$sadi=$_POST['sadi'];
$message=$_POST['message'];
$dtarihi=$_POST['dtarihi'];
$email=$_POST['email'];
$tel=$_POST['tel'];
$ealimtarihi=$_POST['ealimtarihi'];
$ehliyetno=$_POST['ehliyetno'];
$tcno=$_POST['tcno'];
$ilplakano=$_POST['ilplakano'];

echo "<h1> Formdan gelen bilgiler </h1>";

echo "<p> $id - $adi - $sadi - $message - $dtarihi - $email - $tel - $ealimtarihi - $ehliyetno - $tcno - $ilplakano </p>";

$sql="INSERT INTO public.musteri(
	musteri_no, musteri_adi, musteri_soyadi, musteri_adres, musteri_d_trh, e_posta, telefon, ehliyet_alim_trh, ehliyet_no, tc_no, il_plaka_no) VALUES($id,'$adi','$sadi','$message','$dtarihi','$email','$tel','$ealimtarihi','$ehliyetno',$tcno,$ilplakano)";

$kontrol=pg_query($connect, $sql);

if(!$kontrol){
 echo "Veriler kaydedilirken bir hata oluştu.";
}else{
echo "Veriler kayıt edildi.";
} 






$asecimi=$_POST['asecimi'];
$alimtrhi=$_POST['alimtrhi'];
$teslimtrhi=$_POST['teslimtrhi'];
$afirma=$_POST['afirma'];
$vsube=$_POST['vsube'];
$spersonel=$_POST['spersonel'];
$rtipi=$_POST['rtipi'];
echo "<h1> Formdan gelen bilgiler2 </h1>";

echo "<p> $asecimi - $alimtrhi - $teslimtrhi - $afirma - $vsube - $spersonel  </p>";

$sql2="INSERT INTO public.rezervasyon(
	rezervasyon_no, arac_no, musteri_no, alim_trh, teslim_trh, alim_sube, teslim_sube, personel_no, kira_rt_no, onay)
	VALUES ( $id , $asecimi , $id , '$alimtrhi' , '$teslimtrhi' , $afirma , $vsube , $spersonel , $rtipi  , B'1' )";
$kontrol=pg_query($connect, $sql2);

if(!$kontrol){
 echo "Veriler kaydedilirken bir hata oluştu.";
}else{
echo "Veriler kayıt edildi.";
} 


$sql3="INSERT INTO public.kira(
	kira_no, arac_no, musteri_no, alim_trh, teslim_trh, teslim_sube, personel_no, kira_rt_no, alim_sube)
	VALUES ($id, $asecimi , $id, '$alimtrhi', '$teslimtrhi', $vsube, $spersonel, $rtipi, $afirma)";

$kontrol=pg_query($connect, $sql3);

if(!$kontrol){
 echo "Veriler kaydedilirken bir hata oluştu.";
}else{
echo "Veriler kayıt edildi.";
} 

$otipi=$_POST['otipi'];


$sql4="INSERT INTO public.fatura(
	fatura_no, kira_no, toplam_fiyat, odeme_turu_no) VALUES ($id, $id, NULL, $otipi)";
$kontrol=pg_query($connect, $sql4);

if(!$kontrol){
 echo "Veriler kaydedilirken bir hata oluştu.";
}else{
echo "Veriler kayıt edildi.";
} 


$ekhizm=$_POST['ekhizm'];

$sql5="INSERT INTO public.kira_ek_hizmet(
	kira_eh_no, kira_no, ek_hizmet_no) VALUES ($id, $id, $ekhizm)";
$kontrol=pg_query($connect, $sql5);

if(!$kontrol){
 echo "Veriler kaydedilirken bir hata oluştu.";
}else{
echo "Veriler kayıt edildi.";
} 
?>