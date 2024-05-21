<?php
include_once 'config.php';


if(isset($_SESSION['user_id'])) {
    header("Location: index.php");
    exit;
}


if($_SERVER['REQUEST_METHOD'] == 'POST') {
    
    if(!validate_csrf_token($_POST['csrf_token'])) {
        die("CSRF token validation failed");
    }
    
   
}
?>
<!DOCTYPE html>
<html>
<head>
    <title>Login</title>
</head>
<body>
    <h1>Login</h1>
    <!-- Login form -->
</body>
</html>
