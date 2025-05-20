<?php
include("d_scripts/settings.php");

$response = 1;
$msg = '';
page_header_start();
page_header_end();
page_sidebar();
function test_input($data) {
	$data = trim($data);
	$data = stripslashes($data);
	$data = htmlspecialchars($data);
	return $data;
  }

if (isset($_POST['submit']) && $_POST['submit'] != '') {
    if (isset($_POST['editsno']) && $_POST['editsno'] != '') {
        $mon=test_input($_POST['mon']);
        $tues=test_input($_POST['tues']);
        $wednes=test_input($_POST['wednes']);
        $thrus=test_input($_POST['thrus']);
        $fri=test_input($_POST['fri']);
        $satur=test_input($_POST['satur']);
        $sun=test_input($_POST['sun']);

        $sql = "UPDATE `openinghour` SET `mon`='{$mon}',`tues`='{$tues}',`wednes`='{$wednes}',`thrus`='{$thrus}',`fri`='{$fri}',`satur`='{$satur}',`sun`='{$sun}',`edited_by`='{$_SESSION['username']}',`edited_on`='".date("d-m-Y H:i:s")."' WHERE sno= '".$_POST['editsno']."'";
        
        $res=mysqli_query($db,$sql);

        if (mysqli_errno($db)) {
            $msg .= '<h6 class="alert alert-danger">Updation Failed</h6>';
        } else {
            $msg .= '<h6 class="alert alert-success">Data Updated</h6>';
            $_GET['name'] = '';
        }
    } else {
        $mon=test_input($_POST['mon']);
        $tues=test_input($_POST['tues']);
        $wednes=test_input($_POST['wednes']);
        $thrus=test_input($_POST['thrus']);
        $fri=test_input($_POST['fri']);
        $satur=test_input($_POST['satur']);
        $sun=test_input($_POST['sun']);

        $sql = "INSERT INTO `openinghour`( `mon`, `tues`, `wednes`, `thrus`, `fri`, `satur`, `sun`, `created_by`, `created_on`) VALUES ('{$mon}','{$tues}','{$wednes}','{$thrus}','{$fri}','{$satur}','{$sun}','{$_SESSION['username']}','".date("d-m-Y H:i:s")."')";

        $res=mysqli_query($db,$sql);
        if (mysqli_errno($db)) {
            $msg .= '<h6 class="alert  alert-alert">Insertion Failed.</h6>';
        } else {
            $msg .= '<h6 class="alert  alert-success">Data Inserted.</h6>';
        }
    }
}



if (isset($_GET['del']) && $_GET['del'] != '') {
    $sql = 'DELETE FROM add_index_notice WHERE sno=?';
    $stmt = mysqli_prepare($db, $sql);
    mysqli_stmt_bind_param($stmt, "i", $_GET['del']);
    mysqli_stmt_execute($stmt);

    if (mysqli_errno($db)) {
        $msg .= '<h6 class="alert alert-danger">Deletion Failed.</h6>';
    } else {
        $msg .= '<h6 class="alert alert-danger">Data deleted.</h6>';
    }
}

?>
<!-- rest of your code -->


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
            <h3>Change Opening Hours</h3>
        </div>
        <?php
            if (isset($_GET['edit'])) {
                $sql = 'SELECT * FROM openinghour WHERE sno = "'.$_GET['edit'].'" ';
                
                $result = mysqli_query($db,$sql);
                $data = mysqli_fetch_assoc($result);
                ?>
                <div class="col-md-12 mx-3" style="width:98%">
                    <div class="row">
                        <div class="col-md-3">
                            Monday <br>
                            <input type="text" name="mon" id="mon" class="form-control" value="<?php echo isset($_GET['edit']) ? $data['mon'] : ''; ?>">
                        </div>
                        <div class="col-md-3">
                            Tuesday <br>
                            <input type="text" name="tues" id="tues" class="form-control" value="<?php echo isset($_GET['edit']) ? $data['tues'] : ''; ?>">
                        </div>
                        <div class="col-md-3">
                            Wednesday <br>
                            <input type="text" name="wednes" id="wednes" class="form-control" value="<?php echo isset($_GET['edit']) ? $data['wednes'] : ''; ?>">
                        </div>
                        <div class="col-md-3">
                            Thrusday <br>
                            <input type="text" name="thrus" id="thrus" class="form-control" value="<?php echo isset($_GET['edit']) ? $data['thrus'] : ''; ?>">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-3">
                            Friday <br>
                            <input type="text" name="fri" id="fri" class="form-control" value="<?php echo isset($_GET['edit']) ? $data['fri'] : ''; ?>">
                        </div>
                        <div class="col-md-3">
                            Saturday <br>
                            <input type="text" name="satur" id="satur" class="form-control" value="<?php echo isset($_GET['edit']) ? $data['satur'] : ''; ?>">
                        </div>
                        <div class="col-md-3">
                            Sunday <br>
                            <input type="text" name="sun" id="sun" class="form-control" value="<?php echo isset($_GET['edit']) ? $data['sun'] : ''; ?>">
                        </div>  
                        <div class="col-md-3">
                            <br>
                            Check all
                            <input type="checkbox" name="checkall" id="checkall" class="form-check-control">
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-12 text-center">
                            <input type="submit" class="btn btn-warning btn" name="submit" id="submit" value="submit">
                            <input type="hidden" name="editsno" value="<?php echo isset($_GET['edit']) ? $data['sno'] : ''; ?>">
                        </div>
                    </div>
                </div>
                <?php
            }
        ?>
        
    </form>
</div>

<script>

    $("#checkall").on("click",function(){
        if($("#mon").val()==""){
            alert("Fill atleast Monday Opening Timing");
            $("#checkall").prop('checked', false);
            $("#mon").focus();
        }else{
            $("#tues").val($("#mon").val());
            $("#wednes").val($("#mon").val());
            $("#thrus").val($("#mon").val());
            $("#fri").val($("#mon").val());
            $("#satur").val($("#mon").val());
            // $("#sun").val($("#mon").val());

        }
        
    })

</script>

	
		<div class="card card-body">
			<table  class="table table-striped table-hover table-sm rounded ">
				<tr class="bg-warning text-white ">
					<th width="25%">S.No.</th>
					<th width="50%">OPENING HOUR</th>
					<th width="25%">Edit</th>
					
					
				</tr>
				<?php
					$serial_no = 1;
					$sql = 'SELECT * FROM `openinghour` WHERE 1';
					$res = execute_query( $sql);
				
						$row = mysqli_fetch_assoc($res);
				?>
                    <tr>
                        <td><?php echo $serial_no++; ?></td>
                        <td>
                        <table>
                            <tr>
                                <td>MONDAY</td>
                                <td><?php echo $row['mon']; ?></td>
                            </tr>
                            <tr>
                                <td>TUESDAY</td>
                                <td><?php echo $row['tues']; ?></td>
                            </tr>
                            <tr>
                                <td>WEDNESDAY</td>
                                <td><?php echo $row['wednes']; ?></td>
                            </tr>
                            <tr>
                                <td>THURSDAY</td>
                                <td><?php echo $row['thrus']; ?></td>
                            </tr>
                            <tr>
                                <td>FRIDAY</td>
                                <td><?php echo $row['fri']; ?></td>
                            </tr>
                            <tr>
                                <td>SATURDAY</td>
                                <td><?php echo $row['satur']; ?></td>
                            </tr>
                            <tr>
                                <td>SUNDAY</td>
                                <td><?php echo $row['sun']; ?></td>
                            </tr>
                        </table>

                        </td>
                        <td>
                            <a href="<?php echo $_SERVER['PHP_SELF'] . '?edit=' . $row['sno']; ?>" alt="Edit" data-toggle="tooltip" title="Edit"><span class="far fa-edit" aria-hidden="true"></span></a>
                        </td>
                    </tr>
                    
							<!-- <tr>
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
								
								
						
							</tr> -->
				
			</table>	
		</div>
	</div>	
	
	
	
	
<?php 
page_footer_start(); 
page_footer_end(); 

?>