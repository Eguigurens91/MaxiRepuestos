<!DOCTYPE html>
<html lang="en" dir="ltr">
    <head>
      <meta charset="utf-8">
      <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
      <meta name="description" content="">
      <meta name="author" content="">

      <title>MaxiRepuestos</title>
      <link href="public/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
      <link href="https://fonts.googleapis.com/css?family=PT+Sans:400,400i,700,700i" rel="stylesheet">
      <link href="public/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
      <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
      <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">
      <link href="public/css/stylea.css" rel="stylesheet" type="text/css" media="all" />
      <link href="public/css/form.css" rel="stylesheet" type="text/css" media="all" />
      <link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800' rel='stylesheet' type='text/css'>
     
     
      <link href="public/vendor/magnific-popup/magnific-popup.css" rel="stylesheet" type="text/css">
      <link href="public/css/freelancer.min.css" rel="stylesheet">
      <link href="public/css/freelancer.css" rel="stylesheet">
      <link href="public/css/slider.css"rel="stylesheet">
      <link href="public/css/maxi.css" rel="stylesheet" >
      <link rel="stylesheet" href="public/css/style.css">
    </head>
  <body id="page-top">
    <nav class="navbar navbar-expand-lg bg-secondary fixed-top text-uppercase" id="mainNav">
      <div class="container">
          <div id="Menu"></div>
        <a class="navbar-brand js-scroll-trigger" href="#page-top">MaxiRepuestos</a>
        <button class="navbar-toggler navbar-toggler-right text-uppercase bg-primary rounded" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
          Menu
          <i class="fas fa-bars"></i>
        </button>
        <div class="collapse navbar-collapse" id="navbarResponsive">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item mx-0 mx-lg-1">
              <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="index.php?page=home#somos">¿Quienes Somos?</a>
            </li>
            <li class="nav-item mx-0 mx-lg-1">
                <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="index.php?page=home#mision">Misión</a>
              </li>
                <li class="nav-item mx-0 mx-lg-1">
                <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="index.php?page=catalogo2">Catalogo</a>
              </li>
                 <li class="nav-item mx-0 mx-lg-1">
              <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="index.php?page=login">Registro</a>
            </li>
            <li class="nav-item mx-0 mx-lg-1">
              <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="index.php?page=contacto">Contactanos</a>
            </li>
            <li class="nav-item mx-0 mx-lg-1">
              <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="index.php?page=carrito">Carrito</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
<h1>Agregar A Carrito</h1>
<h2></h2>
<hr>
<form action="index.php?page=carritoform" method="post">
<input type="hidden" name="mode" id="mode" value="{{mode}}" />
<input type="hidden" name="codArticulo" id="codArticulo" value="{{codArticulo}}" />
<input type="hidden" name="codVenta" id="codVenta" value="{{codVenta}}" />
<input type="hidden" name="cantidadStock" id="cantidadStock" value="{{cantidadStock}}" />
 <fieldset>
  <label for="Nombre">Nombre:</label>
   &nbsp;
 <label type="text" >{{nombreArticulo}}</label>
  <input type="hidden" name="nombreArticulo" id="nombreArticulo" 
     maxlength="25" value="{{nombreArticulo}}" />
</fieldset>
<fieldset>
  <label for="Descripcion">Descripción:</label>
   &nbsp;
  <label type="text" >{{Descripcion}}</label>
  <input type="hidden" name="Descripcion" id="Descripcion" 
     maxlength="25" value="{{Descripcion}}" />
 </fieldset>
 <fieldset>
  <label for="Precio">Precio:</label>
   &nbsp;
  <label type="text"  maxlength="64" >{{precioArticulo}}</label>
  <input type="hidden" name="precioArticulo" id="precioArticulo"  
     maxlength="25" value="{{precioArticulo}}" />     
</fieldset>
 <fieldset>
  <label for="Cantidad">Cantidad:</label>
  &nbsp;
  <input type="number" name="Cantidad" id="Cantidad" 
    placeholder="Cantidad" maxlength="1" value="{{cantidad}}"/>
</fieldset>
 <fieldset>
  <button type='submit' name="btnGuardar">Guardar</button>
  <a class="btn danger" href="index.php?page=catalogo2">Cancelar</a>
</fieldset>
</form>
  </body>
</html>