<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>SignUp</title>
    <link href="https://fonts.googleapis.com/css?family=Roboto" rel="stylesheet">
    <link rel="stylesheet" href="public/css/styleo.css">
     <title>SignUp</title>
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
              <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="contacto.html">Contactanos</a>
            </li>
            <li class="nav-item mx-0 mx-lg-1">
              <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="index.php?page=carrito">Carrito</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>    <br>
    <br>
    <br>
    <br>
    <br>
    <center>
    <span>SignUp or <a href="index.php?page=login">Login</a></span>
    </center>
    <form action="index.php?page=singoup" method="POST"  style="color: #7a7a7a;border-radius: 2px;
    margin-bottom: 15px;    font-size: 13px;
    background: #ececec;box-shadow: 0px 2px 2px rgb(241, 91, 40);
    padding: 30px; position: relative;
    display: block;
    margin-top: 0em;
    width: 350px;
    margin: 0 auto;
    padding: 3;">
      <input type="hidden" name="usercod" id="usercod" value="{{usercod}}">
      <input name="useremail" type="text" placeholder="Enter your email">
       <input name="userpswd" type="password" placeholder="Confirm Password">
      <input name="confirm_password" type="password" placeholder="Confirm Password">
      <center>
      <button type="submit" name="btnGuardar">GUARDAR</button>
      </center>
    </form>
    <script src="public/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="public/vendor/jquery-easing/jquery.easing.min.js"></script>
    <script src="public/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
    <script src="public/js/jqBootstrapValidation.js"></script>
    <script src="public/js/contact_me.js"></script>
    <script src="public/js/freelancer.min.js"></script>
    <script src="public/js/slider.js"></script>
    <br>
    <br>
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
                <center>
                  <i class="fab fa-fw fa-facebook-f "></i>
                </center>
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

  </body>
</html>