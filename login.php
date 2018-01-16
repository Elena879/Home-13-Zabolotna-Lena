<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Log in</title>
    <link rel="stylesheet" type="text/css" href="css/normalize.css">
    <link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<body>
<form method="POST" action="<?php echo $_SERVER['PHP_SELF']; ?>" class="form">
    <h1>Log in</h1>
    <ul>
        <li><input type="text" placeholder="Enter your username" class="input" name="username"></li>
        <li><input type="password" placeholder="Enter your password" class="input" name="password"></li>
        <input type="submit" name="submit" value="Log in" class="submit">
    </ul>
</form>
</body>
</html>


<?php
$mysqli = new mysqli('home13.local', 'root', 'root', 'home_13');

if (isset($_POST['submit'])) {
    $username = mysqli_real_escape_string($mysqli, trim($_POST['username']));
    $password = mysqli_real_escape_string($mysqli, trim($_POST['password']));
    $md5password = md5($password);

    if ($result = $mysqli->query("SELECT * FROM registration WHERE username ='$username' AND password = '$md5password'")) {

        if ($row = $result->fetch_assoc()) {
            echo '<strong>You are authorized!</strong>';

        } else {
            echo '<strong>Try again.</strong>';
        }
    }
    $result->close();
}
$mysqli->close();
?>


