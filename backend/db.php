//# Database connection file

<?php
// Database configuration
$host = 'localhost'; // Change to your database host if not local
$dbname = 'game_db'; // Replace with your database name
$username = 'root'; // Replace with your database username
$password = ''; // Replace with your database password

// Create a MySQLi connection
$db = new mysqli($host, $username, $password, $dbname);

// Check for connection errors
if ($db->connect_error) {
    die("Connection failed: " . $db->connect_error);
}

// Optional: Set the character set to UTF-8
$db->set_charset("utf8");
?>
