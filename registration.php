<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Sign up</title>
    <link rel="stylesheet" type="text/css" href="css/normalize.css">
    <link rel="stylesheet" type="text/css" href="css/main.css">
</head>
<body>
<div class="container">
    <form method="post" action="<?php echo $_SERVER['PHP_SELF']; ?>" class="form">
        <h1>Registration form</h1>
        <ul>
            <li>
                <input type="text" name="name" id="name" placeholder="Name" class="input" required maxlength="30"></li>
            <li>
                <input type="text" name="surname" id="surname" placeholder="Surname" class="input" maxlength="30"></li>
            <li>
                <input type="number" name="age" id="age" placeholder="Age" class="input" required max="121"></li>
            <li>
                <label for="man" class="radio">Man</label><input type="radio" name="sex" id="man" value="man">
                <label for="woman" class="radio">Woman</label><input type="radio" name="sex" id="woman" value="woman">
            </li>
            <li class="select"><label for="hobby" class="hobby">Select a hobby</label>
                <select name="hobby" size="7" id="hobby">
                    <option value="Running">Running</option>
                    <option value="Mountain biking">Mountain biking</option>
                    <option value="Singing">Singing</option>
                    <option value="Dance">Dance</option>
                    <option value="Computer programming">Computer programming</option>
                    <option value="Musical instruments">Musical instruments</option>
                    <option value="Painting">Painting</option>
                </select></li>
            <li>
                <input type="text" name="username" id="username" placeholder="Username" class="input" required
                       maxlength="30"></li>
            <li>
                <input type="password" name="password" id="password" placeholder="Password" class="input" required
                       maxlength="30"></li>
            <li>
                <input type="date" name="date_of_birth" id="date_of_birth" placeholder="Date of birth"
                       class="input date" required></li>
            <li>
                <input type="number" name="bank_card_number" id="bank_card_number" placeholder="Bank card number"
                       class="input" required></li>
            <li>
                <textarea id="about_myself" rows="10" name="about_myself" class="input textarea"
                          placeholder="Briefly about myself..."></textarea></li>

            <li class="select"><label for="category" class="category">Сhoose a category</label>
                <select name="category" size="4" id="category">
                    <option value="Art">Art</option>
                    <option value="History">History</option>
                    <option value="Sport">Sport</option>
                    <option value="Science">Science</option>
                </select></li>
        </ul>
        <input type="submit" name="submit" id="submit" value="Sign up" class="submit">
    </form>
</div>
</body>
</html>
<?php
$mysqli = new mysqli('home13.local', 'root', 'root', 'home_13');

if (isset($_POST['submit'])) {
    $name = mysqli_real_escape_string($mysqli, trim($_POST['name']));
    $surname = mysqli_real_escape_string($mysqli, trim($_POST['surname']));
    $age = $_POST['age'];
    $sex = $_POST['sex'];
    $hobby = $_POST['hobby'];
    $username = mysqli_real_escape_string($mysqli, trim($_POST['username']));
    $password = mysqli_real_escape_string($mysqli, trim($_POST['password']));
    $md5password = md5($password);
    $date_of_birth = $_POST['date_of_birth'];
    $bank_card_number = $_POST['bank_card_number'];
    $about_myself = mysqli_real_escape_string($mysqli, trim($_POST['about_myself']));
    $category = $_POST['category'];

    $result = $mysqli->query("INSERT INTO registration (id, name, surname, age, sex, 
hobby, username, password, date_of_birth, bank_card_number, about_myself, category) 
VALUES (NULL, '$name', '$surname', '$age', '$sex', '$hobby', '$username', '$md5password', '$date_of_birth', '$bank_card_number', '$about_myself', '$category') ");

    echo '<strong>You are registered.</strong>';
    $result->close();
}
$mysqli->close();
?>
