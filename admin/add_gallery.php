<?php 
include("d_scripts/settings.php");

$response=1;
$msg='';
page_header_start();
page_header_end();
page_sidebar();
?>
<?php 

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
				$newerrors[] = "Only JPG, JPEG, PNG files are allowed.";
			}
			
			if (empty($newerrors)) {
				if(move_uploaded_file($newfileTmpName,$oldimgname)){
					$msg .='<p class="alert alert-success">File Upload  Successfully </p>';   
				 }else{
					$msg .= '<h6 class="alert alert-danger">could not replace the pdf</h6>';			
				 }
			}
	
		}
		
		$sql="UPDATE `add_photos` SET `remark`='".$_POST['remark']."' WHERE sno ='".$_POST['editsno']."'";
		
		
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
			$errors[] = "Only JPG, JPEG, PNG files are allowed.";
		}
		
		if (empty($errors)) {
			
		

			$sql = "INSERT INTO add_photos(remark, img_name) VALUES ('".$_POST['remark']."','$newFileName')";

			// $sql = "INSERT INTO add_photos(descr, starting_date, ending_date, prakhand, img_name, isactive) VALUES ('".$_POST['desc']."','".$_POST['st-date']."','".$_POST['en-date']."','".$_POST['prakhand']."','$newFileName','1')";
			
			$res=mysqli_query($db,$sql);
			
			$getsno=mysqli_insert_id($db);
		

			$uploadPath="gallery/".$getsno.".".$fileExtension;
			if(mysqli_errno($db)){
				$msg .= '<h6 class="alert  alert-alert">Insertion Failed.</h6>' ;
			}
			else{
				$msg .= '<h6 class="alert  alert-success">Data Inserted.</h6>' ;
				if(move_uploaded_file($fileTmpName,$uploadPath)){
					execute_query("UPDATE add_photos SET img_name = '$uploadPath' where sno='$getsno'");
					$msg .='<p class="alert alert-success">File Upload  Successfully </p>';   
                    
				 }
				 
			}
		}


	}
}

if (isset($_GET['edit'])) {
	$sql = 'select * from add_photos where sno=' . $_GET['edit'];
	$data = mysqli_fetch_assoc(execute_query($sql));
}

if (isset($_GET['del']) && $_GET['del']!='') {

	if (file_exists($_GET['img_name'])) {
		if (unlink($_GET['img_name'])) {
			$msg .= '<h6 class="alert  alert-alert">file deleted done.</h6>';
		}else{
			$msg .= '<h6 class="alert  alert-alert">Could not find the file.</h6> ';
		}
	}
		// Perform the file deletion
	
		$sql = 'delete from add_photos where sno=' . $_GET['del'];
		$data = execute_query( $sql);
		if(mysqli_errno($db)){
			$msg .= '<h6 class="alert alert-danger">Deletion Failed.</h6>';
		}
		else{
			$msg .= '<h6 class="alert alert-danger">Data deleted.</h6>';			
		}
	
		
		$_GET['del'] = '';
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
        	
				<form action="<?php echo $_SERVER['PHP_SELF'];?>" class="wufoo leftLabel page1" name="" enctype="multipart/form-data" method="POST" onSubmit="" >
					<?php echo $msg.'</br>' ?>

					<div class="bg-warning text-white p-2 my-2 w-100 " style="border-radius:5px;">
                        <h3>Add Tenders/निविदाएं</h3>
                    </div>
					
					
						
                    <div class="row mx-1">
						<div class="col-md-4">Upload File / अपलोड फाइल  <br> <input type="file" class="form-control" name="u_file"  id="u_file" required ?> 
								<?php 
									if(isset($_GET['edit'])){
										
										?>
										<a href="<?php echo $data['img_name'];?>" target="_blank" class="d-block text-right">Uploaded File</a>
										<input type="hidden" name="old_file" value="<?php echo $data['img_name'];?>">
										<input type="hidden" name="editsno" value="<?php echo $data['sno'];?>">

										<?php
									}
								
                            ?>
                        </div>
                        <div class="col-md-4">Remark   <br> 
                            <input type="text" class="form-control" name="remark" id="description" value="<?php echo isset($_GET['edit'])?$data['remark']:'';?>" >
                        </div>
                        
                        
                        <div class="col-md-4 " >
                            <input type="submit" class="btn btn-warning mt-2 " name="submit" id="submit" value="submit">
                        </div>
                    </div>
						
					
					
				</form>	
			
		</div>
	
		<div class="card card-body">
			<table  class="table table-striped table-hover table-sm rounded ">
				<tr class="bg-warning text-white ">
					<th>S.No.</th>
					<th>Remark</th>
					<th>File </th>
                    <th>View</th>
					<th>Edit</th>
					<th>Delete</th>
				</tr>
				<?php
					$serial_no = 1;
					$sql = 'select * from add_photos order by sno desc';
					$res = execute_query( $sql);
					if($res){
						while($row = mysqli_fetch_assoc($res)){

				?>
				<tr>
					<td><?php echo $serial_no++; ?></td>
					<td><?php echo $row['remark']==""?"-------------":$row['remark'] ?></td>
                    <td><img src="<?php echo $row['img_name'] ?>" alt="Gallery Image" width="" heigth="100" style="width:100px;"></td>
					<td><a href="<?php echo $row['img_name'] ?>" target="_blank">View</a></td>
					
					<td>
                        <a href="<?php echo $_SERVER['PHP_SELF'] . '?edit=' . $row['sno']; ?>" alt="Edit" data-toggle="tooltip" title="Edit"><span class="far fa-edit" aria-hidden="true"></span></a>&nbsp;&nbsp;&nbsp;
					</td>
					<td>
						<a href="<?php echo $_SERVER['PHP_SELF'] . '?del=' . $row['sno'] . '&img_name=' .$row['img_name']; ?>" onclick="return confirm('Are you sure?');" style="color:#f00" alt="Delete">
							<span class="far fa-trash-alt" aria-hidden="true" data-toggle="tooltip" title="Delete"></span>
						</a>
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