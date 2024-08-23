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
    $sql = $con->prepare("SELECT id, usuario, password FROM usuarios WHERE usuario = ? LIMIT 1");
    $sql->execute([$usuario]);
    
    if ($row = $sql->fetch(PDO::FETCH_ASSOC)) {
        if (password_verify($password, $row['password'])) {
            $_SESSION['user_id'] = $row['id'];
            $_SESSION['user_name'] = $row['usuario'];
            header("Location: index.php");
            exit;
        } else {
            return 'La contraseña es incorrecta.';
        }
    } else {
        return 'El usuario no existe.';
    }
}
