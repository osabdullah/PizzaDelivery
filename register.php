<?php
include_once 'config.php';


if($_SERVER['REQUEST_METHOD'] == 'POST') {
   
    if(!validate_csrf_token($_POST['csrf_token'])) {
        die("CSRF token validation failed");
    }
    
   
}
?>
<!DOCTYPE html>
<html>
<head>
    <title>Register</title>
</head>
<body>
    <h1>Register</h1>
    <!-- Registration form -->
</body>
</html>
