//# Unit tests for backend code

<?php
require_once 'db.php';

if ($db->ping()) {
    echo "Database connection successful!";
} else {
    echo "Database connection failed: " . $db->error;
}
?>
