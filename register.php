<?php

    include "service/koneksi database.php";

    if(isset($_POST["register"])) {
        $username = $_POST["username"];
        $password = $_POST["password"];

        $sql = "INSERT INTO user (username, password) VALUES ('$username', '$password')";

        if($db->query($sql)) {
            echo "Data MASUK";
        }else {
            echo "Data tidak MASUK";
        }
    }

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="register.css">
    <title>register only</title>
</head>
<body>
    
    <?php
    include "layout/header.html"
    ?>
    <h3>Daftar Akun</h3>
    <form action="register.php" method="POST">
        <input type="text" placeholder="username" name="username"/>
        <input type="password" placeholder="password" name="password"/>
        <button type="submit" name="register">Daftar Sekarang</button>
    </form>

</body>
</html>