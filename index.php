<?php

$host = "db";
$user = "root";
$password = getenv("ROOT_PASSWORD");

echo "<h2>Conexión a MariaDB</h2>";

$conn = new mysqli($host, $user, $password, $database);

if ($conn->connect_error) {
    echo "<p style='color:red;'>Error de conexión: " . $conn->connect_error . "</p>";
} else {
    echo "<p style='color:green;'>Conexión exitosa a la base de datos</p>";
    echo "<p>Usuario: mgarfer1604</p>";
}

?>
