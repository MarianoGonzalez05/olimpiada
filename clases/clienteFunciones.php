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