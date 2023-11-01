<? include('server.php') ?>
<!DOCTYPE html>
<html lang="en">

<head>
  <title>Register Page</title>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <link rel="stylesheet" type="text/css" href="css/logincss.css">
</head>

<body>
  <!-- <nav>
        <a href="#"><img src="images/logo.svg" alt="logo"></a>
    </nav> -->
  <form action="regis_db.php" method="post">
    <div class="form-wrapper">
      <h2>Register</h2>
      <form action="#">
        <div class="form-control">
          <input type="text" name="username" required>
          <label for="username">Username</label>
        </div>
        <div class="form-control">
          <input type="email" name="email" required>
          <label for="email">Email</label>
        </div>
        <div class="form-control">
          <input type="password" name="password_1" required>
          <label for="password_1">Password</label>
        </div>
        <div class="form-control">
          <input type="password" name="password_2" required>
          <label for="password_2">Confirm Password</label>
        </div>
        <button type="submit" name="reg_user" value="1">Register</button>
        <p>Already a member? <a href="login.php">Sign in</a></p> 
      </form>     
    </div>
  </form>
</body>

</html>
<!-- <div class="header">
      <h2>Login</h2>
     </div>

     <from action="userlog.php">
      <div class="input-group">
        <label for="username">Username</label>
        <input type="text" name="username">
      </div>
      
      <div class="input-group">
        <label for="password">Password</label>
        <input type="password" name="password">
      </div>
      <div class="input-group">
        <button type="submit" name="login_uer" class="btn">Login</button>
        <p>Not yet a member? <a href="regis.php">Sign Up</a></p>
     </from> -->
<!-- <main class="form-signin w-100 m-auto">
        <form>
          <img class="mb-4" src="/docs/5.3/assets/brand/bootstrap-logo.svg" alt="" width="72" height="57">
          <h1 class="h3 mb-3 fw-normal">Sign Up</h1>

          <div class="form-floating my-2">
            <input type="text" class="form-control" id="username" placeholder="Enter your username">
            <label for="username">Username</label>
          </div>
      
          <div class="form-floating my-2">
            <div class="form-floating ">
            <input type="email" class="form-control" id="floatingInput" placeholder="name@example.com">
            <label for="floatingInput">Email address</label>
          </div>

          <div class="form-floating my-2">
            <div class="form-floating ">
            <input type="password" class="form-control" id="Confirm Password" placeholder="Confirm Password">
            <label for="floatingPassword">Confirm Password</label>
          </div>
          
          <div class="form-floating my-2">
            <input type="password" class="form-control" id="floatingPassword" placeholder="Password">
            <label for="floatingPassword">Password</label>
          </div>
          <a href="login.html">
            <button class="btn btn-primary w-100 py-2" type="submit" > Sign Up</button>
          </a>
          <p class="mt-5 mb-3 text-body-secondary">Already have an account <a href="login.html">Click here</a> to sign in</p>
        </form>
      </main>
      <div class="container">
        <footer class="text-center py-3 my-4 border-top">
            <span class="mb-3 mb-md-0 text-body-secondary">© 2023 Company, Inc</span>  
        </footer>
      </div>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script> -->
</body>

</html>