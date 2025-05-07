<?php
$dsn = 'mysql:host=mysql;port=3306;dbname=testdb';
$user = 'testuser';
$pass = 'testpass';

$maxTries = 10;

try {
    $pdo = new PDO($dsn, $user, $pass);
    echo "Success: Ma'lumotlar omboriga ulanish to'g'ri amalga oshdi!";
} catch (PDOException $e) {
    echo "Fail: " . $e->getMessage();
}
