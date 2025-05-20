<?php 
include("d_scripts/settings.php");

$response=1;
$msg='';
page_header_start();
page_header_end();
page_sidebar();
?>
<?php 

$allowedExtensions = ['jpg', 'jpeg', 'png', 'pdf'];
if(isset($_POST['submit']) && $_POST['submit'] != ''){

	if(isset($_POST['editsno']) && $_POST['editsno']!= ''){
		$oldimgname= $_POST['old_file'];
		// old_file
		// echo "hello update";
		if($_FILES['u_file']['name']!=""){
			$newerrors = [];
			
			$newfileName=$_FILES["u_file"]["name"];
			$newfileTmpName=$_FILES["u_file"]["tmp_name"];
			$newfileSize=$_FILES["u_file"]['size'];

			if ($newfileSize > 5 * 1024 * 1024) {
				$newerrors[] = "File is too large. Maximum file size allowed is 5MB.";
			}
		
			// Allowed file extensions
			
			$newfileExtension = strtolower(pathinfo($newfileName, PATHINFO_EXTENSION));
		
			// Check if the file extension is allowed
			if (!in_array($newfileExtension, $allowedExtensions)) {
				$newerrors[] = "Only JPG, JPEG, PNG, and PDF files are allowed.";
			}
			
			if (empty($newerrors)) {
				if(move_uploaded_file($newfileTmpName,$oldimgname)){
					$msg .='<p class="alert alert-success">File Upload  Successfully </p>';   
				 }else{
					$msg .= '<h6 class="alert alert-danger">could not replace the pdf</h6>';			
				 }
			}
	
		}
		$newPrakhandselectedOptions = implode(', ', $_POST['prakhand']);
		$sql="UPDATE `uprnss_tender` SET `descr`='".$_POST['desc']."',`starting_date`='".$_POST['st-date']."',`ending_date`='".$_POST['en-date']."',`prakhand`='$newPrakhandselectedOptions',`isactive`='1' WHERE sno ='".$_POST['editsno']."'";
		
		
		execute_query( $sql);
		if(mysqli_errno($db)){
			$msg .= '<h6 class="alert alert-danger">Updation Failed</h6>' ;
		}
		else{
			$msg .= '<h6 class="alert alert-success">Data Updated</h6>' ;
			$_GET['name']  = '';
		}
		
	}
	else{
		$errors = [];
		$fileName=$_FILES["u_file"]["name"];
		$fileTmpName=$_FILES["u_file"]["tmp_name"];
		$fileSize=$_FILES["u_file"]['size'];
		$newFileName=$fileName;
		
		if ($_FILES["u_file"]["size"] > 5 * 1024 * 1024) {
			$errors[] = "File is too large. Maximum file size allowed is 5MB.";
		}
	
		// Allowed file extensions
		
		$fileExtension = strtolower(pathinfo($fileName, PATHINFO_EXTENSION));
	
		// Check if the file extension is allowed
		if (!in_array($fileExtension, $allowedExtensions)) {
			$errors[] = "Only JPG, JPEG, PNG, and PDF files are allowed.";
		}
		
		if (empty($errors)) {
			
			$PrakhandselectedOptions = implode(', ', $_POST['prakhand']);

			$sql = "INSERT INTO uprnss_tender(descr, starting_date, ending_date, prakhand, file_path, isactive) VALUES ('".$_POST['desc']."','".$_POST['st-date']."','".$_POST['en-date']."','$PrakhandselectedOptions','$newFileName','1')";

			// $sql = "INSERT INTO uprnss_tender(descr, starting_date, ending_date, prakhand, file_path, isactive) VALUES ('".$_POST['desc']."','".$_POST['st-date']."','".$_POST['en-date']."','".$_POST['prakhand']."','$newFileName','1')";
			
			$res=mysqli_query($db,$sql);
			
			$getsno=mysqli_insert_id($db);
		

			$uploadPath="tenders/".$getsno.".".$fileExtension;
			if(mysqli_errno($db)){
				$msg .= '<h6 class="alert  alert-alert">Insertion Failed.</h6>' ;
			}
			else{
				$msg .= '<h6 class="alert  alert-success">Data Inserted.</h6>' ;
				if(move_uploaded_file($fileTmpName,$uploadPath)){
					execute_query("UPDATE uprnss_tender SET file_path = '$uploadPath' where sno='$getsno'");
					$msg .='<p class="alert alert-success">File Upload  Successfully </p>';   

				 }
				 
			}
		}


	}
}

if (isset($_GET['edit'])) {
	$sql = 'select * from uprnss_tender where sno=' . $_GET['edit'];
	$data = mysqli_fetch_assoc(execute_query($sql));
}

if (isset($_GET['del']) && $_GET['del']!='') {

	if (file_exists($_GET['file_path'])) {
		if (unlink($_GET['file_path'])) {
			$msg .= '<h6 class="alert  alert-alert">file deleted done.</h6>';
		}else{
			$msg .= '<h6 class="alert  alert-alert">Could not find the file.</h6> ';
		}
	}
		// Perform the file deletion
	
		$sql = 'delete from uprnss_tender where sno=' . $_GET['del'];
		$data = execute_query( $sql);
		if(mysqli_errno($db)){
			$msg .= '<h6 class="alert alert-danger">Deletion Failed.</h6>';
		}
		else{
			$msg .= '<h6 class="alert alert-danger">Data deleted.</h6>';			
		}
	
		
		$_GET['del'] = '';
}

if(isset($_GET['status'])){
	
	$toggle="";
	if($_GET['status']==1){
		
		$toggle="UPDATE uprnss_tender SET isactive ='0' where sno='".$_GET['sno']."'";
		if(execute_query($toggle)){
			// echo "updated toggle value";
			$msg .='<p class="alert alert-danger">Post is Deactive</p>';   
		}
	}else{
		
		$toggle="UPDATE uprnss_tender SET isactive ='1' where sno='".$_GET['sno']."'";
		if(execute_query($toggle)){
			// echo "updated toggle value";
			$msg .='<p class="alert alert-success">Post is Active</p>';   
		}
	}
	
}

?>


<style>
form div.row:nth-child(odd) {
  background: #eeeeee;
  border-radius: 5px;
  margin-bottom:5px;
  margin-top:5px;
  padding:5px;
}
form div.row label{
	color:#000000;
}
</style>

<div id="container">	
		<div class="card card-body">    
        	<div class="row d-flex my-auto ">  
				<form action="<?php echo $_SERVER['PHP_SELF'];?>" class="wufoo leftLabel page1" name="" enctype="multipart/form-data" method="POST" onSubmit="" >
					<?php echo $msg.'</br>' ?>
					<div class="bg-warning text-white p-2 my-2 " style="border-radius:5px;"><h3>Add Tenders/निविदाएं</h3></div>
					
					<div class="col-md-12 mx-3 " style="width:98%!important">
						
						<div class="row my-auto">
							
							<div class="col-md-4">Description / विवरण  <br> 
								<input type="text" class="form-control" name="desc" id="description" value="<?php echo isset($_GET['edit'])?$data['descr']:'';?>" required>
							</div>

							<div class="col-md-4">Starting Date / प्रारम्भ तिथि <br> 
								<input type="date" class="form-control" name="st-date" id="st-date" value="<?php echo isset($_GET['edit'])?$data['starting_date']:'';?>" required>
							</div>

							<div class="col-md-4">Ending Date / समाप्ति तिथि <br> 
								<input type="date" class="form-control" name="en-date" id="en-date" value="<?php echo isset($_GET['edit'])?$data['ending_date']:'';?>" >
							</div>

							<div class="col-md-4">
    							<label for="prakhand" class="form-label">Division / प्रखण्ड</label>
								<?php 
									$prakhandsql="select division_name from uprnss_division order by division_name asc  ";
									$prekhandres=mysqli_query($db,$prakhandsql) or die("could not get the data from uprnss division "); 

									if(mysqli_num_rows($prekhandres)){
											$selected="";
										?>
											<select name="prakhand[]" id="prakhand"  class="form-select" style="width:100%;" multiple required>
												<option value="" disabled selected>Select--</option>
										<?php
										while($rows=mysqli_fetch_assoc($prekhandres)){
												// if(isset($_GET['edit'])){
												// 	if($data['prakhand']==$rows['division_name']){
												// 		$selected="selected";
												// 	}else{
												// 		$selected="";
												// 	}
												// }
												$selected = "";
												if (isset($_GET['edit'])) {
													// Check if the current option is selected
													$selectedOptions = explode(', ', $data['prakhand']);
													if (in_array($rows['division_name'], $selectedOptions)) {
														$selected = "selected";
													}
												}
											?>
												<option <?php echo $selected;?> value="<?php echo $rows['division_name']?>"><?php echo $rows['division_name']?></option>
											<?php
										}
										?>
											</select>
										<?php
									}
									
								?>
								<!-- <input type="text" class="form-control" name="prakhand" id="prakhand" value="<?php //echo isset($_GET['edit'])?$data['prakhand']:'';?>"> -->
							</div>
							
							<div class="col-md-4">Upload File / अपलोड फाइल  <br> <input type="file" class="form-control" name="u_file"  id="u_file" <?php echo isset($_GET['edit'])?"":"required" ?> >
							<?php 
								if(isset($_GET['edit'])){
									
									?>
									<a href="<?php echo $data['file_path'];?>" target="_blank" class="d-block text-right">Uploaded File</a>
									<input type="hidden" name="old_file" value="<?php echo $data['file_path'];?>">
									
									<input type="hidden" name="editsno" value="<?php echo $data['sno'];?>">

									<?php
								}
							
							?>
							</div>
						</div>
						<div class="col-md-4"><input type="submit" class="btn btn-warning btn" name="submit" id="submit" value="submit"></div>
					</div>
					
				</form>	
			</div>
		</div>
	
		<div class="card card-body">
			<table  class="table table-striped table-hover table-sm rounded ">
				<tr class="bg-warning text-white ">
					<th>S.No.</th>
					<th>विवरण / Description</th>
					<th>प्रखण्ड / Division</th>
					<th>Starting Date</th>
					<th>Ending Date</th>
					<th>डाऊनलोड-File </th>
					<th>Edit</th>
					<th>Delete</th>
					<th>Active</th>
					
				</tr>
				<?php
					$serial_no = 1;
					$sql = 'select * from uprnss_tender order by sno desc';
					$res = execute_query( $sql);
					if($res){
						while($row = mysqli_fetch_assoc($res)){

				?>
				<tr>
					<td><?php echo $serial_no++; ?></td>
					<td><?php echo $row['descr'] ?></td>
					<td><?php echo $row['prakhand'] ?></td>
					<td><?php echo date("d-m-Y", strtotime($row['starting_date'])); ?></td>
					<td class="text-center"><?php echo  $row['ending_date']=="0000-00-00"?"-":date("d-m-Y", strtotime($row['ending_date'])); ?></td>
					<td><a href="<?php echo $row['file_path'] ?>" target="_blank">View</a></td>
					
					<td><a href="<?php echo $_SERVER['PHP_SELF'] . '?edit=' . $row['sno']; ?>" alt="Edit" data-toggle="tooltip" title="Edit"><span class="far fa-edit" aria-hidden="true"></span></a>&nbsp;&nbsp;&nbsp;
					</td>
					<!-- <td><a href="<?php //echo $_SERVER['PHP_SELF'] . '?del=' . $row['sno']; ?>" onclick="return confirm('Are you sure?');" style="color:#f00" alt="Delete"><span class="far fa-trash-alt" aria-hidden="true" data-toggle="tooltip" title="Delete"></span></a>
					</td> -->
					<td>
						<a href="<?php echo $_SERVER['PHP_SELF'] . '?del=' . $row['sno'] . '&file_path=' .$row['file_path']; ?>" onclick="return confirm('Are you sure?');" style="color:#f00" alt="Delete">
							<span class="far fa-trash-alt" aria-hidden="true" data-toggle="tooltip" title="Delete"></span>
						</a>
					</td>
					<td>
						<?php
								if ($row['isactive'] == '1') {
									echo '<a href="'.$_SERVER['PHP_SELF'].'?status=1&sno='.$row['sno'].'"><span class="btn btn-success btn-sm">Enable</span></a>';
								} elseif ($row['isactive'] == '0') {
									echo '<a href="'.$_SERVER['PHP_SELF'].'?status=0&sno='.$row['sno'].'"><span class="btn btn-danger btn-sm">Disable</span></a>';
								}
						?>		
					</td>
					
			
				</tr>
				
				<?php 
					}
						
				}
				
				?>
			</table>	
		</div>
	</div>	
	
	
	
	
<?php 
page_footer_start(); 
page_footer_end(); 

?>