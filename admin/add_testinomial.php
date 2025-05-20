<?php 
include("d_scripts/settings.php");

$response=1;
$msg='';
page_header_start();
page_header_end();
page_sidebar();

function test_input($data) {
	$data = trim($data);
	$data = stripslashes($data);
	$data = htmlspecialchars($data);
	return $data;
  }

$allowedExtensions = ['jpg', 'jpeg', 'png'];
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

		$name=test_input($_POST['name']);
		$desig=test_input($_POST['desig']);
		$date=test_input($_POST['date']);
		$msgs=test_input($_POST['msgs']);
		$editid=test_input($_POST['editsno']);
			
		
		$sql="UPDATE `testinomial` SET `name`='".$name."',`designation`='".$desig."',`msg`='".$msgs."',`date`='".$date."' ,`edited_by`='{$_SESSION['username']}',`edition_time`='".date("d-m-Y H:i:s")."' WHERE sno ='$editid'";
		
		
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
			
			$name=test_input($_POST['name']);
			$desig=test_input($_POST['desig']);
			$date=test_input($_POST['date']);
			$msgs=test_input($_POST['msgs']);
			


			$sql = "INSERT INTO `testinomial`(`name`, `designation`, `date`, `msg`, `file_path`, `created_by`, `creation_time`) VALUES ('{$name}','{$desig}','{$date}','{$msgs}','$newFileName','{$_SESSION['username']}','".date("d-m-Y H:i:s")."')";


			$res=mysqli_query($db,$sql);
			
			$getsno=mysqli_insert_id($db);
		
			$folderpath="upload/testinomial/";
			if (!is_dir($folderpath)) {
				// Create the folder if it doesn't exist
				mkdir($folderpath, 0777, true); // The third parameter 'true' creates parent directories if they don't exist
			}

			$uploadPath="upload/testinomial/".$getsno.".".$fileExtension;
			if(mysqli_errno($db)){
				$msg .= '<h6 class="alert  alert-alert">Insertion Failed.</h6>' ;
			}
			else{
				$msg .= '<h6 class="alert  alert-success">Data Inserted.</h6>' ;
				if(move_uploaded_file($fileTmpName,$uploadPath)){
					execute_query("UPDATE testinomial SET file_path = '$uploadPath' where sno='$getsno'");
					$msg .='<p class="alert alert-success">File Upload  Successfully </p>';   

				 }
				 
			}
		}


	}
}

if (isset($_GET['edit'])) {
	$sql = 'select * from testinomial where sno=' . $_GET['edit'];
	$data = mysqli_fetch_assoc(execute_query($sql));
}

if (isset($_GET['del']) && $_GET['del']!='') {

	if (file_exists($_GET['file_path'])) {
		if (unlink($_GET['file_path'])) {
			$msg .= '<h6 class="alert  alert-danger">file deleted done.</h6>';
		}else{
			$msg .= '<h6 class="alert  alert-danger">Could not find the file.</h6> ';
		}
	}
		// Perform the file deletion
		$getid=test_input($_GET['del']);
		$sql = "delete from testinomial where sno={$getid}";
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
		
		$toggle="UPDATE testinomial SET isactive ='0' where sno='".$_GET['sno']."'";
		if(execute_query($toggle)){
			// echo "updated toggle value";
			$msg .='<p class="alert alert-danger">Post is Deactive</p>';   
		}
	}else{
		
		$toggle="UPDATE testinomial SET isactive ='1' where sno='".$_GET['sno']."'";
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
				<form action="<?php echo $_SERVER['PHP_SELF'];?>" class="w-100" name="" enctype="multipart/form-data" method="POST" onSubmit="" >
					<?php echo $msg.'</br>' ?>
					<div class="bg-warning text-white p-2 my-2 " style="border-radius:5px;"><h3>Add Testinomials</h3></div>
					
					<div class="col-md-12 mx-3 " style="width:98%!important">
						
						<div class="row my-auto">
							
							<div class="col-md-4">Name  <br> 
								<input type="text" class="form-control" name="name" id="name" value="<?php echo isset($_GET['edit'])?$data['name']:'';?>" required>
							</div>
							<div class="col-md-4">Designation  <br> 
								<input type="text" class="form-control" name="desig" id="desig" value="<?php echo isset($_GET['edit'])?$data['designation']:'';?>" required>
							</div>
							<div class="col-md-4">Date <br> 
								<input type="date" class="form-control" name="date" id="date" value="<?php echo isset($_GET['edit'])?$data['date']:'';?>" required>
							</div>
						</div>
						<div class="row">
							<div class="col-md4">
								Message <br>
								<textarea name="msgs" id="msgs" cols="50" rows="3" class="form-control"><?php echo isset($_GET['edit'])?$data['msg']:'';?></textarea>
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
					<th>Name </th>
					<th>Designaiton </th>
					<th>Date</th>
					<th>Message</th>
					<th>Image</th>
					<th>Edit</th>
					<th>Delete</th>
					<th>Active</th>
					
				</tr>
				<?php
					$serial_no = 1;
					$sql = 'select * from testinomial ';
					$res = execute_query( $sql);
					if($res){
						while($row = mysqli_fetch_assoc($res)){

				?>
				<tr>
					<td><?php echo $serial_no++; ?></td>
					<td><?php echo $row['name'] ?></td>
					<td><?php echo $row['designation'] ?></td>
					<td><?php echo date("d-m-Y", strtotime($row['date'])); ?></td>
					<td><?php echo $row['msg'] ?></td>
					<td><img src="<?php echo $row['file_path'] ?>" alt="Image" width="100"></td>
					<td><a href="<?php echo $_SERVER['PHP_SELF'] . '?edit=' . $row['sno']; ?>" alt="Edit" data-toggle="tooltip" title="Edit"><span class="far fa-edit" aria-hidden="true"></span></a>&nbsp;&nbsp;&nbsp;
					</td>
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