
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>Navbar with Logo Image</title>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">

<style>
    .bs-example{
        margin: 0;
    }
    
</style>
</head>
<body>
<div class="bs-example">
    <nav class="navbar navbar-expand-md navbar-light bg-light">

        <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarCollapse">
            <div class="navbar-nav">
                <a href="home.php" class="nav-item nav-link active nav">Home</a>
                <a href="price.php" class="nav-item nav-link active nav ">Price</a>
                <a href="courierMenu.php" class="nav-item nav-link nav">Courier</a>
                <a href="trackMenu.php" class="nav-item nav-link nav">Track</a>
                
                <a href="profile.php" class="nav-item nav-link nav">Profile</a>
                <a href="contactUS.php" class="nav-item nav-link nav">ContactUs</a>
                
            </div>
            <div class="navbar-nav ml-auto">
                <a href="../admin/logout.php" class="nav-item nav-link">AdminPage</a>
                <a href="../logout.php" class="nav-item nav-link">LogOut</a>
            </div>
        </div>
    </nav>
</div>
</body>
</html>


  