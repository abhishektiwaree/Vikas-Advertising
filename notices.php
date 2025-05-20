<?php
include("includes/function_inc.php");
loadHeader();
?>


	
	<!-- <div id="banner-area" class="banner-area" style="background-image:url(image/banner1.jpg)">
		<div class="banner-text">
     		<div class="container">
	        	<div class="row">
	        		<div class="col-xs-12">
	        			<div class="banner-heading">
	        				<h1 class="border-title border-left">कार्य कलाप </h1>
	        				<ol class="breadcrumb">
	        					<li>मुख्य पृष्ट</li>
	        					<li><a href="notices.php">सूचना पट</a></li>
	        				</ol>
	        			</div>
	        		</div>
	        	</div>
       		</div>
    	</div>
	</div> -->


	<section id="main-container" class="main-container">
		<div class="container">

			<div class="row">

				<div class="col-md-12">
			

					<h1 class="border-title border-left">सूचना पट </h1>
					<?php $i=1; 
							include('admin/d_scripts/settings_dbase.php');
							$serial_no = 1;
							$sql = 'select * from add_notice where isactive="1" order by starting_date desc,sno desc';
							$res = execute_query( $sql);
							if(mysqli_num_rows($res)>0){
								?>
								<table class="table table-striped table-bordered table-responsive ">
								<thead>
									<tr>
										<th>क्रम.</th>
										<th>विवरण</th>
										<th>प्रारम्भ तिथि</th>
										<th>डाऊनलोड</th>
									</tr>
								
								<?php
								$imgcount=1;
								while($row = mysqli_fetch_assoc($res)){

						?>
							
									<tr>
										<td><?php echo $serial_no++; ?></td>
										<td><?php echo $row['descr'] ?> <?php echo $imgcount++<5?'<img src="image/new_gif.gif" alt="" height="25px;">':'';?>  </td>
										<td><?php echo date("d-m-Y", strtotime($row['starting_date'])); ?></td>
										<td><a href="admin/<?php echo $row['file_path'] ?>" target="_blank">View</a></td>
									</tr>
									
									<?php 
								}				
							}else{
								?>
									<h4 class=''>No Records Found</h4>
								<?php
							}
									?>
								</thead>								
							</table>
					</div><!--/ Col end -->
					<!--/ Col end -->

				</div><!-- Content row 1 -->

			<div class="gap-20"></div><!-- Content row 2 -->

		</div><!-- Container end -->
	</section><!-- Main container end -->
 <?php
    include("includes/config_inc.php");
    getFooter();
    ?>
?>