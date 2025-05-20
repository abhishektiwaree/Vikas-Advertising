<?php
include("d_scripts/settings.php");
$msg='';
$msg='';
$tab=1;

page_header_start();
page_header_end();
page_sidebar();

//status 0 means all filled form
//status 1 means all rejected form
//status 2 means all accepted form

	
if(isset($_GET['rej'])){
  
    $sql ="UPDATE admission_form SET status='1' WHERE id='".$_GET['rej']."'";
	// $sql = 'delete from admission_form where sno="'.$_GET['del'].'"';
	if(execute_query($sql)){
        $msg.= '<p class="alert alert-danger">Student Rejected.</p>';

    }else{
        $msg.= '<p class="alert alert-danger">Student Could Not Rejected Try again.</p>';
    }
	
}

?>			

<div class="container">
    <div class="row">
        <div class="col-md-12">
            <div class="card">
                <div class="card-header">
                <?php echo $msg; ?>
                    <h4 class="card-title text-center"></h4></br>
                </div>
                <div class="card-body">
                <table class="table table-striped table-hover">
                    <tr class="table-success">
                    <th>S.No.</th>
                    <th>Name</th>
                    <th>Date of Birth</th>
                    <th>Admission for Class</th>
                    <th>Email</th>
                    <th>Phone No.</th>
                    <th>Address</th>
                    <th>Reject</th>
                   
                    </tr>
                    <?php
                    $i=1;
                    $sql = 'SELECT * FROM `admission_form` WHERE status="2" ';
                    $result = execute_query($sql);
                    while($row = mysqli_fetch_assoc($result)){
                        echo '<tr>
                        <td>'.$i++.'</td>
                        <td>'.$row['full_name'].'</td>
                        <td>'.$row['dob'].'</td>
                        <td>'.$row['class'].'</td>
                        <td>'.$row['email'].'</td>
                        <td>'.$row['m_no'].'</td>
                        <td>'.$row['permanent_add'].'</td>
                        <td><a href="'.$_SERVER['PHP_SELF'].'?rej='.$row['id'].'" onclick="return confirm(\'Are you sure?\');" class="btn btn-danger btn-sm" alt="Delete Entry">Reject</a></td>
                        </tr>';
                    }
                    ?>
                </table>
                
                </div>
            </div>
        </div>
    </div>	
</div>

					
				
				
<?php
page_footer_start();
?>


    <!-- Light Bootstrap Table Core javascript and methods for Demo purpose -->
	<script src="js/light-bootstrap-dashboard.js?v=1.4.0"></script>

    
	<!--  Charts Plugin -->
	<script src="js/chartist.min.js"></script>

<?php		
page_footer_end();
?>
