<?php


$connect= pg_connect("host='localhost' dbname=arac_kiralama port=5432 user=postgres password=alperen") or die ("Bağlantı Hatası".pg_last_error());

if(!$connect){
 echo "Sunucuya bağlanılamadı";
}

?>
