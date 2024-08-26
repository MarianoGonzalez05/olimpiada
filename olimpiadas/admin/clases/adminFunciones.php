<?php

function generarToken ()
{
    return md5(uniqid(mt_rand(), false));
}

function registraCliente(array $datos, $con)
{
    $sql = $con->prepare("INSERT INTO clientes (nombres, apellidos, email, telefono, dni, estatus, fecha_alta) VALUES (?, ?, ?, ?, ?, 1, NOW())");
    if($sql->execute($datos)){
        return $con->lastInsertId();
    }
    return 0;
}

function registraUsuario(array $datos, $con){
    $sql = $con->prepare("INSERT INTO usuarios (usuario, password, token, id_cliente, password_request) VALUES (?,?,?,?,?)");
    if($sql->execute($datos)){
        return true;
    }
    return false;
}


function login($usuario, $password, $con) {
    $sql = $con->prepare("SELECT id, usuario, password, nombre FROM admin WHERE usuario = ? AND activo = 1 LIMIT 1");
    $sql->execute([$usuario]);
    
    if ($row = $sql->fetch(PDO::FETCH_ASSOC)) {
        if (password_verify($password, $row['password'])) {
            $_SESSION['user_id'] = $row['id'];
            $_SESSION['user_name'] = $row['nombre'];
            $_SESSION['user_type'] = 'admin';
            header("Location: inicio.php");
            exit;
        } else {
            return 'La contraseña es incorrecta.';
        }
    } else {
        return 'El usuario no existe.';
    }
}
