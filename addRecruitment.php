<?php
    session_start();
    include_once "config.php";
    $name = mysqli_real_escape_string($conn, $_POST['name']);
    $qualification = mysqli_real_escape_string($conn, $_POST['qualification']);
    $gender = mysqli_real_escape_string($conn, $_POST['gender']);
    $phone = mysqli_real_escape_string($conn, $_POST['phone']);
    $email = mysqli_real_escape_string($conn, $_POST['email']);
    $dob = mysqli_real_escape_string($conn, $_POST['dob']);
    $graduated = mysqli_real_escape_string($conn, $_POST['graduated']);
    $english = mysqli_real_escape_string($conn, $_POST['english']);
    $sub = mysqli_real_escape_string($conn, $_POST['sub']);

    $sql = mysqli_query($conn, "INSERT INTO `recruitment`(`name`, `education`, `gender`, `phone`, `email`, `dob`, `graduate`, `english`, `subject`) VALUES ('{$name}','{$qualification}','{$gender}','{$phone}','{$email}','{$dob}','{$graduated}','{$english}','{$sub}')");
    echo "success";
?>