<?php

function generate_csrf_token() {
    $token = bin2hex(random_bytes(32));
    $_SESSION['csrf_token'] = $token;
    return $token;
}


function validate_csrf_token($token) {
    if(isset($_SESSION['csrf_token']) && hash_equals($_SESSION['csrf_token'], $token)) {
        unset($_SESSION['csrf_token']);
        return true;
    } else {
        return false;
    }
}
?>
