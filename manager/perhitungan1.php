<?php
echo "<h3>Tabel Perhitungan Dengan Menggunakan Algoritma C45</h3>
			";
    echo " <table width='100%' border='1' cellspacing='0' cellspading='0'>
           <tr style='text-transform:uppercase; background:#000; color:#fff;'>
               <th>No</th> 
			   <th>Att Gain Ratio Max</th>
               <th>Atribut</th>
               <th>Nilai Atribut</th>
               <th>Total Kasus</th>
               <th width='10%'>Ya</th>
               <th width='10%'>Tidak</th>
               <th>Entropy</th>
               <th>Gain</th>
			</tr>";
           
    
    $warna  = $warna1; 
    $sql=mysql_query("SELECT * FROM iterasi_c45");
    while ($data=mysql_fetch_array($sql)){
        if($warna == $warna1){ 
            $warna = $warna2; 
        } else { 
            $warna = $warna1; 
        } 
        echo "<tr bgcolor='$warna'>
               <td>$data[iterasi]</td>
               <td>$data[atribut_gain_ratio_max]</td>
			   <td>$data[atribut]</td>
               <td>$data[nilai_atribut]</td>
               <td>$data[jml_kasus_total]</td>
               <td>$data[jml_laris]</td>
               <td>$data[jml_tdk_laris]</td>
               <td>$data[entropy]</td>
               <td>$data[inf_gain]</td>";
        }
        echo "</tr>";
    echo"</table>";