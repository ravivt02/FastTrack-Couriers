<!-- admin dashbord page with options for admin -->

<?php
session_start();
if(isset($_SESSION['uid'])){
    echo "";
}else{
    header('location: ../login.php');
}

?>

<?php
include('head.php');
?>


<div class="admintitle">
    <div>
    <h5 ><a href="../index.php" style="float: left; margin-left:20px; color:black;">LoginAsUser</a></h5>
    <h5 ><a href="logout.php" style="float: right; margin-right:20px; color:black;">LogOut</a></h5>
    </div>
    <h1 align='center' style="color:black;">Welcome To Admin Dashbord</h1>
</div>
<div align="center" style="margin-top:240px;">
<form style="position: center;color:black;font-weight:bold;font-size:50px">

    <a href="deletedata.php">Delete Data</a><br><br>

    <a href="deleteusers.php">Delete Users</a><br><br>
</form>

</div>
</body>
</html>