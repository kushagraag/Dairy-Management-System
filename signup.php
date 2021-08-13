<?php

$showAlert = false;
$showError = false;
$exists = false;
$redirect = false;
if ($_SERVER["REQUEST_METHOD"] == "POST") {

// Include file which makes the
// Database Connection.
include 'includes/config.php';
$name = $_POST["name"];
$username = $_POST["username"];
$contact = $_POST["mobile"];
$address = $_POST["address"];
$password = $_POST["password"];
$cpassword = $_POST["cpassword"];

if ($password == $cpassword) {

  // $hash = password_hash(
  //   $password,
  //   PASSWORD_DEFAULT
  // );

  // Password Hashing is used here.

  $result = mysqli_query($con, "insert into tblusers(name , username, contact, address, 
      password) values ('$name', '$username', '$contact', '$address', '$password')");
  if ($result) {
    $showAlert = true;    
  }
} else {
  $showError = "Passwords do not match";
} //end if
}
?>

<!doctype html>

<html lang="en">

<head>

  <!-- Required meta tags -->
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1,
		shrink-to-fit=no">

  <!-- Bootstrap CSS -->
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
</head>

<body>

  <?php

  if ($showAlert) {

    echo ' <div class="alert alert-success
			alert-dismissible fade show" role="alert">
	
			<strong>Success!</strong> Your account is
			now created and you can now login
		</div> ';
  }
  

  if ($showError) {

    echo ' <div class="alert alert-danger
			alert-dismissible fade show" role="alert">
		<strong>Error!</strong> ' . $showError . '
	
	<button type="button" class="close"
			data-dismiss="alert aria-label="Close">
			<span aria-hidden="true">×</span>
	</button>
	</div> ';
  }

  if ($exists) {
    echo ' <div class="alert alert-danger
			alert-dismissible fade show" role="alert">
	
		<strong>Error!</strong> ' . $exists . '
		<button type="button" class="close"
			data-dismiss="alert" aria-label="Close">
			<span aria-hidden="true">×</span>
		</button>
	</div> ';
  }

  ?>

  <div class="container my-4 ">

    <h1 class="text-center">Signup Here</h1>
    <form action="signup.php" method="post">

      <div class="form-group">
        <label for="Name">Name</label>
        <input type="text" class="form-control" id="name" name="name" aria-describedby="emailHelp">
      </div>

      <div class="form-group">
        <label for="Username">Username</label>
        <input type="text" class="form-control" id="username" name="username" aria-describedby="emailHelp">
      </div>

      <div class="form-group">
        <label for="Mobile">Contact Number</label>
        <input type="number" class="form-control" id="mobile" name="mobile" aria-describedby="emailHelp">
      </div>

      <div class="form-group">
        <label for="address">Address</label>
        <input type="text" class="form-control" id="address" name="address" aria-describedby="emailHelp">
      </div>

      <div class="form-group">
        <label for="password">Password</label>
        <input type="password" class="form-control" id="password" name="password">
      </div>


      <div class="form-group">
        <label for="cpassword">Confirm Password</label>
        <input type="password" class="form-control" id="cpassword" name="cpassword">

        <small id="emailHelp" class="form-text text-muted">
          Make sure to type the same password
        </small>
      </div>

      <button type="submit" class="btn btn-primary">
        SignUp
      </button>
      <span style="padding-left:20px">
      <button class="btn btn-primary" style = "background: white">
        <a href = "index.php">LogIn</a>
      </button>
    </form>
  </div>

  <!-- Optional JavaScript -->
  <!-- jQuery first, then Popper.js, then Bootstrap JS -->

  <script src="
https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="
sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous">
  </script>

  <script src="
https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous">
  </script>

  <script src="
https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous">
  </script>
</body>

</html>