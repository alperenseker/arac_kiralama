<?php
include('baglanti.php');
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>***ÜYE GÜNCELLEME FORMU***</title>
</head>
<body>
<?php
$uyelik=$_GET['uyenumara'];

$secsorgu="SELECT *FROM rezervasyon WHERE rezervasyon_no='$uyelik' ";
$sorgu=pg_query($connect,$secsorgu);
$satir=pg_fetch_array($sorgu);

/*echo "<h1> $satir[0] - $satir[1] - $satir[2] - $satir[3] - $satir[4] - $satir[5] - $satir[6] - $satir[7] - $satir[8] - $satir[9]</h1> ";
*/


?>
<form id="form1" name="form1" method="post" action="guncelleislem.php?idnumaram=<?php echo $satir[0]; ?>">
  <table width="340" height="276" border="1" align="center">
    <tr>
      <td colspan="2">REZERVASYON GÜNCELLEME FORMU</td>
    </tr>
    <tr>
      <td width="106">Alınacak Araç</td>
      <td width="199">
          <select name="asecimi" id="">
                            <option value="0" selected="selected">Seçiniz</option>
                            <option value="1">Renault , Symbol</option>
                            <option value="2">Lamborghini , Urus</option>
                            <option value="3">Opel , Corsa</option>
                            <option value="4">Volkswagen , Touareg</option>
                            <option value="5">Renault , Egea</option>   
                            <option value="6">Renault , Megane</option>                         
                </select>
        </td>
    </tr>
    <tr>
      <td>Alım Tarihi</td>
      <td><input type="date" id="" class="" name="alimtrhi">
    </tr>
    <tr>
      <td>Teslim Tarihi</td>
      <td><input type="date" id="" class="" name="teslimtrhi"></td>
    </tr>
    <tr>
      <td>Alınacak Firma</td>
      <td><select name="afirma" id="">
                            <option value="0" selected="selected">Seçiniz</option>
                            <option value="1">Vınn Rent A Car , İstanbul</option>
                            <option value="2">Garenta Rent A Car, Ankara</option>
                            <option value="3">Avis Rent A Car , İzmir</option>
                            <option value="4">Budget Rent A Car , Balıkesir</option>
                            <option value="5">Yolcu360 Rent A Car , Bursa</option>                  
                </select></td>
    </tr>
    <tr>
      <td>Teslim Edilecek Şube</td>
      <td><select name="vsube" id="">
                            <option value="0" selected="selected">Seçiniz</option>
                            <option value="1">Merkez Şube</option>
                            <option value="2">İlçe Şubesi</option>
                </select></td>
    </tr>    
    <tr>
      <td>Görevlendirilen Personel</td>
      <td><select name="spersonel" id="">
                            <option value="0" selected="selected">Seçiniz</option>
                            <option value="1">Servet Akça</option>
                            <option value="2">Nüket Aksan</option>
                            <option value="3">Bünyamin Tan</option>
                            <option value="4">Nuran Turan</option>
                            <option value="5">İlbey Bınar</option>
                            <option value="6">Oğuzhan Yenidere</option>
                            <option value="7">Çağrı Şeker</option>
                            <option value="8">Servet Turan</option>   
                            <option value="9">Ahmet Barkan</option>                         
                            <option value="10">Furkan Türk</option>
                </select></td>
    </tr>
    <tr>
      <td>Rezervasyon Tipi</td>
      <td><select name="rtipi" id="">
                            <option value="0" selected="selected">Seçiniz</option>
                            <option value="1">Yüzyüze</option>
                            <option value="2">Telefon</option>
                            <option value="3">İnternet</option>                        

                </select></td>
    </tr>
      
    <tr>
      <td><div align="center">
        <input type="reset" name="button2" id="button2" value="Temizle" />
      </div></td>
      <td><div align="center">
        <input type="submit" name="button" id="button" value="Bilgileri Güncelle" />
      </div></td>
    </tr>
  </table>
</form>
<?php
pg_close();
?>

</body>
</html>