<?php

class Database {
    private $host = "localhost";        // Asegúrate de que estas variables sean correctas
    private $dbname = "tienda_online";
    private $username = "root";
    private $password = "";
    private $charset = "utf8mb4";        // Cambia a utf8mb4 para compatibilidad

    public function conectar() {
        try {
            // Construcción correcta de la cadena DSN
            $dsn = "mysql:host={$this->host};dbname={$this->dbname};charset={$this->charset}";
            $options = [
                PDO::ATTR_ERRMODE => PDO::ERRMODE_EXCEPTION,
                PDO::ATTR_EMULATE_PREPARES => false
            ];
            // Corrección en la creación de la instancia PDO
            $pdo = new PDO($dsn, $this->username, $this->password, $options);

            return $pdo;
        } catch (PDOException $e) {
            echo 'Error en la conexión: ' . $e->getMessage();
            exit;
        }
    }
}
?>
