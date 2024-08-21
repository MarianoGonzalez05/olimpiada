<?php

require 'config/database.php';
$db = new Database(); 
$con = $db->conectar();

$sql = $con->prepare("SELECT id, nombre, precio FROM productos WHERE activo=1");
$sql->execute();
$resultado = $sql->fetchAll(PDO::FETCH_ASOC);
?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Tienda Online</title>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" 
    rel="stylesheet" 
    integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" 
    crossorigin="anonymous">
    <link href=estilos.css rel="stylesheet">
</head>
<body>
    
<header data-bs-theme="dark">
  <div class="navbar navbar-expand-lg navbar-dark bg-dark">
    <div class="container">
      <a href="#" class="navbar-brand ">
        <strong>Tienda Online</strong>
      </a>
      <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarHeader" aria-controls="navbarHeader" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>jijo

      <div class="collaspse navbar-collapse" id="navbarHeader">
        <ul class="navbar-nav me-auto mb-2 mb-lg-0">
          <li class="nav-item">
            <a href="#" class="nav-link active">Catalogo</a>
          </li>

          <li class="nav-item">
            <a href="#" class="nav-link">Contacto</a>
        </ul>
            <a href="carrito.php" class="btn btn-primary">Carrito</a>    
    </div>
  </div>
</header>

<main>
  <div class="container">
  <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
        <div class="col">
          <div class="card shadow-sm">
            <img src="producto.png">
            <div class="card-body">
              <h5 class="card-title">Producto de muestra #1</h5>
              <p class="card-text">$599.99</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                 <a href="" class="btn btn-primary">Detalles</a>
                </div>
                <a href="" class="btn btn-success">Agregar</a>
              </div>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card shadow-sm">
            <img src="producto.png">
            <div class="card-body">
              <h5 class="card-title">Producto de muestra #1</h5>
              <p class="card-text">$599.99</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                 <a href="" class="btn btn-primary">Detalles</a>
                </div>
                <a href="" class="btn btn-success">Agregar</a>
              </div>
            </div>
          </div>
        </div>
        <div class="col">
          <div class="card shadow-sm">
            <img src="producto.png">
            <div class="card-body">
              <h5 class="card-title">Producto de muestra #1</h5>
              <p class="card-text">$599.99</p>
              <div class="d-flex justify-content-between align-items-center">
                <div class="btn-group">
                 <a href="" class="btn btn-primary">Detalles</a>
                </div>
                <a href="" class="btn btn-success">Agregar</a>
              </div>
            </div>
          </div>
        </div>
  </div>
</main>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p" 
crossorigin="anonymous"></script>
</body>
</html>
