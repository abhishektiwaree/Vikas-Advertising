<?php 
include("d_scripts/settings.php");

$response=1;
$msg='';

$allowedExtensions = ['jpg', 'jpeg', 'png'];
$maxFileSize = 5 * 1024 * 1024; // 5MB

if (isset($_POST['submit']) && !empty($_POST['submit'])) {
    $msg = '';

    // Function to validate uploaded file
    function validateFile($file, $allowedExtensions, $maxFileSize)
    {
        $errors = [];
        if ($file['size'] > $maxFileSize) {
            $errors[] = "File is too large. Maximum file size allowed is 5MB.";
        }

        $fileExtension = strtolower(pathinfo($file['name'], PATHINFO_EXTENSION));
        if (!in_array($fileExtension, $allowedExtensions)) {
            $errors[] = "Only JPG, JPEG, PNG files are allowed.";
        }

        return $errors;
    }

    // Function to handle file upload
    function uploadFile($fileTmpName, $destination)
    {
        return move_uploaded_file($fileTmpName, $destination);
    }

    if (!empty($_POST['editsno'])) {
        // Update existing record
        $editsno = $_POST['editsno'];
        $oldImgName = $_POST['old_file'];
        $remark = $_POST['remark'];

        if (!empty($_FILES['u_file']['name'])) {
            $file = $_FILES['u_file'];
            $fileErrors = validateFile($file, $allowedExtensions, $maxFileSize);

            if (empty($fileErrors)) {
                if (uploadFile($file['tmp_name'], $oldImgName)) {
                    $msg .= '<p class="alert alert-success">File uploaded successfully.</p>';
                } else {
                    $msg .= '<h6 class="alert alert-danger">Could not replace the file.</h6>';
                }
            } else {
                foreach ($fileErrors as $error) {
                    $msg .= '<h6 class="alert alert-danger">' . $error . '</h6>';
                }
            }
        }

        $sql = "UPDATE `add_hero` SET `remark` = ? WHERE `sno` = ?";
        $stmt = $db->prepare($sql);
        $stmt->bind_param('si', $remark, $editsno);
        if ($stmt->execute()) {
            $msg .= '<h6 class="alert alert-success">Data updated successfully.</h6>';
        } else {
            $msg .= '<h6 class="alert alert-danger">Updation failed.</h6>';
        }
    } else {
        // Insert new record
        $remark = $_POST['remark'];
        $file = $_FILES['u_file'];

        $fileErrors = validateFile($file, $allowedExtensions, $maxFileSize);
        if (empty($fileErrors)) {
            $fileExtension = strtolower(pathinfo($file['name'], PATHINFO_EXTENSION));
            $sql = "INSERT INTO `add_hero` (`remark`, `img_name`) VALUES (?, '')";
            $stmt = $db->prepare($sql);
            $stmt->bind_param('s', $remark);

            if ($stmt->execute()) {
                $getsno = $stmt->insert_id;
                $uploadPath = "master_images/hero_img/" . $getsno . "." . $fileExtension;

                if (uploadFile($file['tmp_name'], $uploadPath)) {
                    $updateSql = "UPDATE `add_hero` SET `img_name` = ?, `order_img` = ? WHERE `sno` = ?";
                    $updateStmt = $db->prepare($updateSql);
                    $updateStmt->bind_param('sii', $uploadPath, $getsno, $getsno);
                    $updateStmt->execute();

                    $msg .= '<p class="alert alert-success">File uploaded successfully.</p>';
                }
                $msg .= '<h6 class="alert alert-success">Data inserted successfully.</h6>';
            } else {
                $msg .= '<h6 class="alert alert-danger">Insertion failed.</h6>';
            }
        } else {
            foreach ($fileErrors as $error) {
                $msg .= '<h6 class="alert alert-danger">' . $error . '</h6>';
            }
        }
    }
    //echo $msg;
}

if (isset($_GET['edit'])) {
	$sql = 'select * from add_hero where sno=' . $_GET['edit'];
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
	
		$sql = 'delete from add_hero where sno=' . $_GET['del'];
		$data = execute_query( $sql);
		if(mysqli_errno($db)){
			$msg .= '<h6 class="alert alert-danger">Deletion Failed.</h6>';
		}
		else{
			$msg .= '<h6 class="alert alert-danger">Data deleted.</h6>';			
		}
	
		
		$_GET['del'] = '';
}

// $swapMsg="";
// $swapError="";

if(isset($_GET['uporderid']) && isset($_GET['upsno'])){
	// echo "up";
	$curruporderid=$_GET['uporderid'];
	$currupsno=$_GET['upsno'];

	$nextsql="SELECT sno,order_img FROM `add_hero` WHERE order_img = (SELECT MIN(order_img) FROM add_hero WHERE order_img > '$curruporderid')";
	$nextres=mysqli_query($db,$nextsql);
	if($nextres){
		if(mysqli_num_rows($nextres)>=1){
			// 
			$nextrow=mysqli_fetch_assoc($nextres);
			$nextorder= $nextrow['order_img'];
			$nextsno=$nextrow['sno'];
			$swapSql1="UPDATE add_hero SET order_img='$nextorder' WHERE sno=$currupsno";
			$swapSql2="UPDATE add_hero SET order_img='$curruporderid' WHERE sno=$nextsno";
			$swapres1=mysqli_query($db,$swapSql1);
			$swapres2=mysqli_query($db,$swapSql2);
			if($swapres1 && $swapres2){
				$msg .='<p class="alert alert-success">SWAPPING Images Done</p>'; 
				header('location: ' . $_SERVER['PHP_SELF']);
				exit(); // Make sure to exit after calling header
				// 
			}else{
				$msg.='<p class="alert alert-danger">Could not Swap value</p>';
			}
		}else{
			$msg .='<p class="alert alert-danger">Already on the TOP</p>'; 
		}
		// 
	}
	
}

if(isset($_GET['downorderid']) && isset( $_GET['downsno'])){
	// echo "Down";
	$currdownorderid=$_GET['downorderid'];
	$currdownsno=$_GET['downsno'];

	$prevsql="SELECT sno,order_img FROM `add_hero` WHERE order_img = (SELECT MAX(order_img) FROM add_hero WHERE order_img < '$currdownorderid')";
	$prevres=mysqli_query($db,$prevsql);
	if($prevres){
		if(mysqli_num_rows($prevres)==1){
			
			$prevrow=mysqli_fetch_assoc($prevres);
			$prevorder= $prevrow['order_img'];
			$prevsno=$prevrow['sno'];
			$prevswapSql1="UPDATE add_hero SET order_img='$prevorder' WHERE sno=$currdownsno";
			$prevswapSql2="UPDATE add_hero SET order_img='$currdownorderid' WHERE sno=$prevsno";
			$prevswapres1=mysqli_query($db,$prevswapSql1);
			$prevswapres2=mysqli_query($db,$prevswapSql2);
			if($prevswapres1 && $prevswapres2){
				$msg .='<p class="alert alert-success">SWAPPING Images Done</p>';
				header('location: ' . $_SERVER['PHP_SELF']);
				exit(); // Make sure to exit after calling header   
				
			}else{
				$msg.='<p class="alert alert-danger">SWAPPING Images Not Done</p>';   
			}
	}else{
		$msg .='<p class="alert alert-danger">Already on the Bottom</p>'; 
	}
		
	}
}

page_header_start();
page_header_end();
page_sidebar();

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
                        <h3>Add Banner Image</h3>
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
					<th>Order</th>
				</tr>
				<?php
					$serial_no = 1;
					$sql = 'select * from add_hero order by order_img desc';
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
					<td>
						<a href="<?php echo $_SERVER['PHP_SELF'].'?uporderid='.$row['order_img'].'&upsno='.$row['sno']?>" class="btn btn-warning btn-sm"><i class="fa-solid fa-angle-up"></i></a>
						<a href="<?php echo $_SERVER['PHP_SELF'].'?downorderid='.$row['order_img'].'&downsno='.$row['sno']?>" class="btn btn-warning btn-sm"><i class="fa-solid fa-angle-down"></i></a>
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