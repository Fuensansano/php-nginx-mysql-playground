<h1>Fuensanta Sansano Montoya</h1>

<?php

try {
    echo 'Current PHP version: ' . phpversion();
    echo '<br />';

    $host = 'db';
    $dbname = 'cierva';
    $user = 'pepito';
    $pass = 'cierva';
    $dsn = "mysql:host=$host;dbname=$dbname;charset=utf8";
    $conn = new PDO($dsn, $user, $pass);

    echo 'Database connected successfully';
    echo '<br />';
    $result = $conn->query('SELECT VERSION()');
    var_dump($result->fetchAll());
} catch (\Throwable $t) {
    echo 'Error: ' . $t->getMessage();
    echo '<br />';
}
