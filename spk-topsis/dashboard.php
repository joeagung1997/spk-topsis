
      <div>
        &nbsp;&nbsp;<h4 class="heading"><?php
	    $tgl=date("d-m-Y");
		$tglIndo=region($tgl);
		echo"Selamat Datang di Aplikasi Topsis Pemilihan Lokasi - Tanggal Sekarang :$tgl";
		
		?></h4>
 

        
      </div>

      <br>

      <div class="row">

        <div class="col-sm-6 col-md-3">
          <div class="row-stat">
            <p class="row-stat-label">Total Analisis</p>
            <h3 class="row-stat-value">3</h3>
           
          </div> <!-- /.row-stat -->
        </div> <!-- /.col -->

        <div class="col-sm-6 col-md-3">
          <div class="row-stat">
            <p class="row-stat-label">Total Alternatif</p>
            <h3 class="row-stat-value"><?php
            $alternatif=mysql_query("SELECT * FROM talternatif");
			$al=mysql_num_rows($alternatif);
			echo"$al";
			?></h3>
          
          </div> <!-- /.row-stat -->
        </div> <!-- /.col -->

        <div class="col-sm-6 col-md-3">
          <div class="row-stat">
            <p class="row-stat-label">Total Kriteria</p>
            <h3 class="row-stat-value"><?php
            $kriteria=mysql_query("SELECT * FROM tkriteria");
			$kr=mysql_num_rows($kriteria);
			echo"$kr";
			?></h3>
       
          </div> <!-- /.row-stat -->
        </div> <!-- /.col -->

        <div class="col-sm-6 col-md-3">
          <div class="row-stat">
            <p class="row-stat-label">Total Alternatif Kriteria</p>
            <h3 class="row-stat-value"><?php
            $alk=mysql_query("SELECT * FROM talternatif_kriteria");
			$a=mysql_num_rows($alk);
			echo"$a";
			?></h3>
           
          </div> <!-- /.row-stat -->
        </div> <!-- /.col -->
        
      </div> <!-- /.row -->


      <br>



        <div class="row">

        <div class="col-md-9">

          <div class="row">

            <div class="col-md-4 col-sm-5">

              <div class="thumbnail">
              <?php
			  if(isset($_SESSION['foto'])){
				  echo"<img src='gambar/pengguna_img/height/$_SESSION[foto]'>";
				  }else{
					  
					echo"
					<img src='./img/avatars/avatar-large-1.jpg' alt='Profile Picture' />";  
					  }
				  
			  ?>
              
               
              </div> <!-- /.thumbnail -->

              <br />

              <div class="list-group">  

                <a href="?loadPage=ganti-password" class="list-group-item">
                  <i class="fa fa-asterisk"></i> &nbsp;&nbsp; Ganti Pasword

                  <i class="fa fa-chevron-right list-group-chevron"></i>
                </a> 

                <a href="?loadPage=pengguna&action=edit&id=<?php echo" $_SESSION[kdPengguna]";?>" class="list-group-item">
                  <i class="fa fa-book"></i> &nbsp;&nbsp;Edit

                  <i class="fa fa-chevron-right list-group-chevron"></i>
                 
                </a> 

               
              </div> <!-- /.list-group -->

            </div> <!-- /.col -->


            <div class="col-md-8 col-sm-7">

              <h2><?php echo"$_SESSION[nmLengkap]";?></h2>

              <h4><?php echo"$_SESSION[username]";?></h4>

              <hr />

             

              <ul class="icons-list">
                <li><i class="icon-li fa fa-envelope"></i> <?php echo"$_SESSION[email]";?></li>
                <li><i class="icon-li fa fa-globe"></i> <?php echo"$_SESSION[kontak]";?></li>
                <li><i class="icon-li fa fa-map-marker"></i> <?php echo"$_SESSION[alamat]";?></li>
              </ul>

              <br />

            
              <br />



            

            
        </div> <!-- /.col -->


      </div> <!-- /.row -->