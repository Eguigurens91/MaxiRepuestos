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
      <link href="public/css/busqueda.css" rel="stylesheet" >
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
              <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#somos">¿Quienes Somos?</a>
            </li>
            <li class="nav-item mx-0 mx-lg-1">
                <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="#mision">Misión</a>
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
    <br>
    <br>
    <br>
  <h2 class="text-center text-uppercase">Busca el repuesto ideal para tu vehiculo!</h2>
  
  <br>
  <br>
  <center>
  <div class="formu">
    <form action="index.php?page=catalogo" method="POST">
     
            <h4>Categoria</h4>
               <div class="">
                 <div class="">
                     <select name="categoria2" id="categoria2" style="padding-left: 100px;">
                       <option></option>
                       {{foreach categorias}}
                         <option >{{nombreCategoria}}</option>
                       {{endfor categorias}}
                     </select>
                 </div>
               </div>

               <h4>Marca</h4>
               <div class="">
                 <div class="">
                     <select name="marca2" id="marca2" style="padding-left: 190px;">
                       <option></option>
                       {{foreach marca}}
                         <option >{{nombreMarca}}</option>
                       {{endfor marca}}
                     </select>
                 </div>
               </div>

                <h4>Modelo</h4>
               <div class="">
                 <div class="">
                     <select name="modelo2" id="modelo2" style="padding-left: 190px;">
                       <option></option>
                       {{foreach modelo}}
                         <option >{{nombreModelo}}</option>
                       {{endfor modelo}}
                     </select>
                 </div>
               </div>

               <h4>Año</h4>
               <div class="">
                 <div class="">
                     <select name="year2" id="year2" style="padding-left: 210px;">
                       <option></option>
                       {{foreach year}}
                         <option >{{year}}</option>
                       {{endfor year}}
                     </select>
                 </div>
               </div>
               <br>
        <button type="submit" name="btnBuscar" style="background-color: #ffffff;">Buscar</button>
    </form>
    </center>
    <br>
    </div>
    <footer class="footer text-center">
      <div class="container">
        <div class="row">
          <div class="col-md-4 mb-5 mb-lg-0">

            <h4 class="text-uppercase mb-4">Telefonos</h4>
            <h5>Comunicate a nuestros tienda</h5>
            <p>2232-2563</p>
            <p>2232-2563</p>

          </div> 
          <div class="col-md-4 mb-5 mb-lg-0">
            <h4 class="text-uppercase mb-4 text-center">Redes Sociales!</h4>
            <ul class="list-inline mb-0">
              <li class="list-inline-item">
                <a class="btn btn-outline-light btn-social text-center rounded-circle" href="https://www.facebook.com/pg/maxirepuestoshn">
                  <i class="fab fa-fw fa-facebook-f "></i>
               
                </a>
              </li>
              <li class="list-inline-item">
                <a class="btn btn-outline-light btn-social text-center rounded-circle" href="https://twitter.com/?lang=es">
                  <i class="fab fa-fw fa-twitter"></i>
                </a>
              </li>
            </ul>
          </div> 
           <div class="imgfollow">
            <img src="public/imgs/face.png" alt="Siguenos" class="imgfollow">
           </div>
        </div>
      </div>
    </footer>
    <div class="copyright py-4 text-center text-white">
      <div class="container">
        <small>Copyright &copy; Negocios Web 2018</small>
      </div>
    </div>
  </body>
</html>
