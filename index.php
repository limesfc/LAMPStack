<?php

echo 'hello world!'. PHP_EOL;

$serverName = "mariadb";
$username = "root";
$password = "secret";
$database = "app_db";

try {
    $conn = new PDO("mysql:host=".$serverName.";dbname=" . $database, $username, $password);
    $conn->setAttribute(PDO::ATTR_ERRMODE, PDO::ERRMODE_EXCEPTION);

    $sql = $conn->prepare("SELECT * FROM Test");
    $sql->execute();

    while($result = $sql->fetch(PDO::FETCH_ASSOC)){
        echo $result['test_field'];
    }

}
catch(PDOException $e) {
    echo "Connection failed: " . $e->getMessage();
}