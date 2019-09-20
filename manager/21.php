<?php
//include"menuadmin.php";
$img = ImageCreate(800,800);
$hitam = ImageColorAllocate($img,0,0,0);
$putih = ImageColorAllocate($img,255,255,255);
ImageFill($img,0,0,$hitam);

//garis
 ImageLine($img,200,160,240,90,$putih);
 ImageLine($img,350,160,240,90,$putih);
 ImageLine($img,90,300,150,230,$putih);
 ImageLine($img,220,300,150,230,$putih);
 ImageLine($img,500,300,150,230,$putih);
 ImageLine($img,50,430,220,350,$putih);
 ImageLine($img,250,430,300,360,$putih);
 


//kotak
imageRectangle($img,300,160,420,200,$putih);

imageRectangle($img,15,430,130,470,$putih);
imageRectangle($img,600,350,450,300,$putih);



ImageRectangle($img,40,350,180,300,$putih);
ImageRectangle($img,230,430,350,470,$putih);


//buat lingkaran

ImageArc($img,150,190,140,80,360,0,$putih);
ImageArc($img,250,50,140,80,360,0,$putih);


ImageArc($img,270,320,130,100,360,0,$putih);

ImageString($img,5,110,180,"Penghasilan",$putih);
ImageString($img,5,330,180,"Ya",$putih);
ImageString($img,5,330,120,"<30",$putih);
ImageString($img,5,160,120,"=30 ",$putih);
ImageString($img,5,230,50,"Umur",$putih);
ImageString($img,5,50,250,"10-<50juta    ",$putih);
ImageString($img,5,160,250,"2,5-10juta",$putih);
ImageString($img,5,380,250,"<2,5juta",$putih);
ImageString($img,5,100,320,"Ya",$putih);
ImageString($img,5,500,320,"Tidak",$putih);
ImageString($img,5,230,300,"Pekerjaan",$putih);
ImageString($img,5,60,400,"Swasta",$putih);
ImageString($img,5,250,400,"Tani",$putih);
ImageString($img,5,50,450,"Ya",$putih);
ImageString($img,5,260,450,"Tidak",$putih);


header("Content-Type:image/jpeg");
ImageJPEG($img);

?>

