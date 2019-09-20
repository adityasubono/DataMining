<head>
<title>Data Pinjaman</title>
</head>
<body onLoad="window.print()">
<?php 
  include "../config/koneksi.php";
	echo "<table width=100%>
			<center><h3>LAPORAN DATA PINJAMAN PADA KOPERASI PASAMAN BARAT <br/>
			 </h3></center><hr/>";
       echo "<table width='100%'  border='1' cellspacing='0' cellpadding='3'>
          <tr style='text-transform:uppercase; background:#e3e3e3; color:#000;'>
              <th>No</th>
              <th>No Rekening</th>
              <th>Umur</th>
              <th>Penghasilan</th>
              <th>Pekerjaan</th>
              <th>Pinjaman</th>
              <th>Status</th>
          </tr>";
        $warna  = $warna1; 
        $no = 1; 
        $sql=mysql_query("SELECT * FROM data_survey ORDER BY id ASC");
        while ($data=mysql_fetch_array($sql)){
            if($warna == $warna1){ 
                $warna = $warna2; 
            } else { 
                $warna = $warna1; 
            } 
            echo "<tr bgcolor='$warna'>
                  <td>$no</td>
                  <td>$data[kode_barang]</td>
                  <td>$data[umur]</td>
                  <td>$data[penghasilan]</td>
                  <td>$data[pekerjaan]</td>
                  <td>$data[harga]</td>
                  <td><b>$data[status]</b></td>
                  </tr>";
            $no++;
        }
        echo"</table>";
?>