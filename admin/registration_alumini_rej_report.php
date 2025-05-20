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

	
if(isset($_GET['acc'])){
  
    $sql ="UPDATE alumni_form  SET status='2' WHERE id='".$_GET['acc']."'";
	// $sql = 'delete from alumni_form  where sno="'.$_GET['del'].'"';
	if(execute_query($sql)){
        $msg.= '<p class="alert alert-success">Student Accepted.</p>';
    }else{
        $msg.= '<p class="alert alert-danger">Student Could Not Accepted Try again.</p>';
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
                    <th>Phone No.</th>
                    <th>Email</th>
                    <th>Year of Admission</th>
                    <th>Year of Leaving</th>
                    <th>Accept</th>
                    </tr>
                    <?php
                    $i=1;
                    $sql = 'SELECT * FROM `alumni_form` WHERE status="1" ';
                    $result = mysqli_query($db,$sql);                               
                    while($row = mysqli_fetch_assoc($result)){
                        echo '<tr>
                        <td>'.$i++.'</td>
                        <td>'.$row['full_name'].'</td>
                        <td>'.$row['mno'].'</td>
                        <td>'.$row['email'].'</td>
                        <td>'.$row['yearOfAdmission'].'</td>
                        <td>'.$row['yearOfLeaving'].'</td>
                        <td><a href="'.$_SERVER['PHP_SELF'].'?acc='.$row['id'].'" onclick="return confirm(\'Are you sure?\');" class="btn btn-success btn-sm" alt="">Accept</a></td></tr>';
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
