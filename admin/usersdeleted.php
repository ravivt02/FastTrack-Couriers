<!-- this page will delete user & there courier when deleteUser link clicked in deleteusers.php by admin -->

<?php
    include('../dbconnection.php');
    $em= $_GET['emm'];

    $qry = "DELETE FROM `users` WHERE `email`='$em'";
    $run = mysqli_query($dbcon,$qry);

    if($run==true){
    ?>  <script>
        alert('User Removed Successfully :)');
        window.open('deleteusers.php','_self');
        </script>
    <?php
}

?>