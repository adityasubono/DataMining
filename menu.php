
<div class="row-fluid">
		<img style='width:100%' src="images/hd.jpg" />
	</div>
<div class="navbar">
				<div class="navbar-inner">
					<ul class="nav">   
						<li>
							<a style='color:#fff' href="index.php"> Home Page</a>
						</li>   
						
				<?php 
					if ($_SESSION['username'] == '' AND $_SESSION['namauser'] == ''){
						echo "<li>
								<a style='color:#fff' href='login.php'> Login </a>                                
							  </li>
							 ";
					}elseif ($_SESSION['username'] != ''){
				?>
						<li>
							<a style='color:#fff' href="pemahaman_materi.php">Uji Materi</a>
						</li>
						<li>
							<a style='color:#fff' href="logout.php"> Logout</a>                                
						</li>
				<?php
					}
					
					if (empty($_SESSION['namauser'])){
					
					}else{
					
				?>		
				
						<li>
							<a style='color:#fff' href="semua-data.html"> Semua Data</a>                                
						</li>
						<li>
							<a style='color:#fff' href="data-mining.html"> Lakukan Mining C45</a>                                 
						</li>
						<li>
							<a style='color:#fff' href="perhitungan.html">Perhitungan C45</a>                                 
						</li>
						<li>
							<a style='color:#fff' href="pohon-keputusan.html">Pohon Keputusan C45</a>                                 
						</li>
					<!--	<li>
							<a style='color:#fff' href="#tab8" data-toggle="tab"> Hasil Keputusan</a>                                 
						</li>
						<li>
							<a style='color:#fff' href="laporan_akhir.php"> Laporan Hasil Akhir</a>                                 
						</li>  -->
						 <li>
							<a style='color:#fff' href="../logout.php"> Logout</a>                                
						</li> 
				<?php
					 }
				?>
					</ul>
				</div>
			</div>