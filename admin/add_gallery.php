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
function resize_image($file, $new_width, $new_height) {
    list($width, $height) = getimagesize($file);
    $image_p = imagecreatetruecolor($new_width, $new_height);
    $image = imagecreatefromjpeg($file); // Use imagecreatefrompng() for PNG files
    imagecopyresampled($image_p, $image, 0, 0, 0, 0, $new_width, $new_height, $width, $height);
    return $image_p;
}

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
			
			// Resize the image to reduce its size
			$image = resize_image($fileTmpName, 800, 600); // Adjust dimensions as needed
			$uploadPath = "gallery/" . $fileName; // Adjust the upload path as needed
			imagejpeg($image, $uploadPath); // Save resized image as JPEG
			imagedestroy($image); // Free up memory

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

<link rel="stylesheet" type="text/css" href="images/gallery/fancybox.min.css">

<style>
    /* Add any custom styles here */
    form div.row:nth-child(odd) {
        background: #eeeeee;
        border-radius: 5px;
        margin-bottom: 5px;
        margin-top: 5px;
        padding: 5px;
    }

    form div.row label {
        color: #000000;
    }
</style>

<div id="container">    
    <div class="card card-body">    
        <form action="<?php echo $_SERVER['PHP_SELF']; ?>" class="wufoo leftLabel page1" name="" enctype="multipart/form-data" method="POST" onSubmit="">
            <?php echo $msg.'</br>' ?>
            <div class="bg-warning text-white p-2 my-2 w-100 " style="border-radius:5px;">
                <h3>Add Gallery</h3>
            </div>
            <div class="row mx-1">
                <div class="col-md-4">
                    Upload Gallery Photos <br> 
                    <input type="file" class="form-control" name="u_file"  id="u_file" required ?> 
                    <?php 
                        if(isset($_GET['edit'])){
                    ?>
                    <a href="<?php echo $data['img_name'];?>" data-fancybox="gallery" class="d-block text-right">Uploaded File</a>
                    <input type="hidden" name="old_file" value="<?php echo $data['img_name'];?>">
                    <input type="hidden" name="editsno" value="<?php echo $data['sno'];?>">
                    <?php
                        }
                    ?>
                </div>
                <div class="col-md-4">
                    Remark   <br> 
                    <input type="text" class="form-control" name="remark" id="description" value="<?php echo isset($_GET['edit'])?$data['remark']:'';?>" >
                </div>
                <div class="col-md-4">
                    <input type="submit" class="btn btn-warning mt-2 " name="submit" id="submit" value="Submit">
                </div>
            </div>
        </form>    
    </div>
    
    <div class="card card-body">
        <table class="table table-striped table-hover table-sm rounded">
            <tr class="bg-warning text-white">
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
                $res = execute_query($sql);
                if($res){
                    while($row = mysqli_fetch_assoc($res)){
            ?>
            <tr>
                <td><?php echo $serial_no++; ?></td>
                <td><?php echo $row['remark']==""?"-------------":$row['remark'] ?></td>
                <td>
                    <a class="gallery-link" href="<?php echo $row['img_name']; ?>" data-fancybox="gallery">
                        <img loading="lazy" src="<?php echo $row['img_name']; ?>" alt="Gallery Image" width="100" height="100">
                    </a>
                </td>
                <td><a href="<?php echo $row['img_name'] ?>" target="_blank">View</a></td>
                <td>
                    <a href="<?php echo $_SERVER['PHP_SELF'] . '?edit=' . $row['sno']; ?>" alt="Edit" data-toggle="tooltip" title="Edit">
                        <span class="far fa-edit" aria-hidden="true"></span>
                    </a>&nbsp;&nbsp;&nbsp;
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

<!-- Include Fancybox JS -->
<script src="images/gallery/jquery-3.6.4.min.js"></script>
<script src="images/gallery/jquery.fancybox.min.js"></script>

<?php 
page_footer_start(); 
page_footer_end(); 
?>