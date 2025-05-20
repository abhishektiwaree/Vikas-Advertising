<?php 
include("d_scripts/settings.php");

$response=1;
$msg='';
page_header_start();
page_header_end();
page_sidebar();
?>
<?php 


if(isset($_POST['submit']) && $_POST['submit'] != ''){

	if(isset($_POST['editsno']) && $_POST['editsno']!= ''){
		
		$sql="UPDATE `add_index_notice` SET `notice`='".$_POST['notice']."' WHERE sno ='".$_POST['editsno']."'";
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
			$sql = "INSERT INTO add_index_notice(notice) VALUES ('".$_POST['notice']."')";
			$res=mysqli_query($db,$sql);
			if(mysqli_errno($db)){
				$msg .= '<h6 class="alert  alert-alert">Insertion Failed.</h6>' ;
			}
			else{
				$msg .= '<h6 class="alert  alert-success">Data Inserted.</h6>' ;
			}
	}
}

if (isset($_GET['edit'])) {
	$sql = 'select * from add_index_notice where sno=' . $_GET['edit'];
	$data = mysqli_fetch_assoc(execute_query($sql));
}

if (isset($_GET['del']) && $_GET['del']!='') {
		// Perform the file deletion
		$sql = 'delete from add_index_notice where sno=' . $_GET['del'];
		$data = execute_query( $sql);
		if(mysqli_errno($db)){
			$msg .= '<h6 class="alert alert-danger">Deletion Failed.</h6>';
		}
		else{
			$msg .= '<h6 class="alert alert-danger">Data deleted.</h6>';			
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
    <form action="<?php echo $_SERVER['PHP_SELF'];?>" class="wufoo leftLabel page1" name="" enctype="multipart/form-data" method="POST" onSubmit="">
        <?php echo $msg.'</br>' ?>
        
        <div class="bg-warning text-white p-2 my-2" style="border-radius:5px;">
            <h3>Add Hero Section Notice</h3>
        </div>
        
        <div class="col-md-12 mx-3" style="width:98%">
            <div class="row my-auto">
                <div class="col-md-8">
                    
					<textarea name="notice" id="notice" cols="" rows="2" style="width:100%;padding-inline:10px; " placeholder="Place your Notice here" class="form-control"><?php echo isset($_GET['edit']) ? $data['notice'] : ''; ?></textarea>
                    <!-- <input type="text" class="form-control" name="desc" id="description" value="<?php //echo isset($_GET['edit']) ? $data['descr'] : ''; ?>" required placeholder=""> -->
                </div>
                <div class="col-md-4">
                    <input type="submit" class="btn btn-warning btn" name="submit" id="submit" value="submit">
					<input type="hidden" name="editsno" value="<?php echo isset($_GET['edit']) ? $data['sno'] : ''; ?>">
                </div>
            </div>
        </div>
    </form>
</div>

	
		<div class="card card-body">
			<table  class="table table-striped table-hover table-sm rounded ">
				<tr class="bg-warning text-white ">
					<th>S.No.</th>
					<th>Notice</th>
					<th>Edit</th>
					<th>Delete</th>
					
					
				</tr>
				<?php
					$serial_no = 1;
					$sql = 'select * from add_index_notice order by sno desc';
					$res = execute_query( $sql);
					if(mysqli_num_rows($res)>0){
						while($row = mysqli_fetch_assoc($res)){

				?>
							<tr>
								<td><?php echo $serial_no++; ?></td>
								<td><?php echo $row['notice'] ?></td>
								<td>
									<a href="<?php echo $_SERVER['PHP_SELF'] . '?edit=' . $row['sno']; ?>" alt="Edit" data-toggle="tooltip" title="Edit"><span class="far fa-edit" aria-hidden="true"></span></a>
								</td>
								<td>
									<a href="<?php echo $_SERVER['PHP_SELF'] . '?del=' . $row['sno']?>" onclick="return confirm('Are you sure?');" style="color:#f00" alt="Delete">
										<span class="far fa-trash-alt" aria-hidden="true" data-toggle="tooltip" title="Delete"></span>
									</a>
								</td>
								
								
						
							</tr>
				
					<?php 
						}
							
					}else{
						?>
							<h2>No Record Found .</h2>
						<?php
					}
				
				?>
			</table>	
		</div>
	</div>	
	
	
	
	
<?php 
page_footer_start(); 
page_footer_end(); 

?>