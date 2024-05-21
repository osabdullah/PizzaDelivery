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
    <title>Password Recovery</title>
</head>
<body>
    <h1>Password Recovery</h1>
    <!-- Password recovery form -->
</body>
</html>
