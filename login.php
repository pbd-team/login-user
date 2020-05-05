<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="public/css/bootstrap.css">
    <title>Login</title>
</head>
<body>
    <h2>Login User</h2>
    <form action="sistem.php?op=in" method="post">
        Username : <input type="text" name="usr">
        <br>
        Password : <input type="password" name="psw">
        <br>
        <input type="submit" value="login">
    </form>

    <script src="public/js/bootstrap.js"></script>
    <script src="public/js/jquery-3.3.1.js"></script>
</body>
</html>