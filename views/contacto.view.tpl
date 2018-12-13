<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Formulario de contacto</title>
    <link rel="stylesheet" href="public/css/estilos.css">
    <link rel="stylesheet" href="public/css/font-awesome.css">
    <link href="public/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"> 
    <link href="https://fonts.googleapis.com/css?family=PT+Sans:400,400i,700,700i" rel="stylesheet">
    <link href="public/vendor/fontawesome-free/css/all.min.css" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Montserrat:400,700" rel="stylesheet" type="text/css">
    <link href="https://fonts.googleapis.com/css?family=Lato:400,700,400italic,700italic" rel="stylesheet" type="text/css">
   <link href="public/vendor/magnific-popup/magnific-popup.css" rel="stylesheet" type="text/css">
   <link href="public/css/freelancer.min.css" rel="stylesheet">
   <link href="public/css/freelancer.css" rel="stylesheet">
   <link href="public/css/maxi.css" rel="stylesheet" >
   <link rel="stylesheet" href="public/css/style.css"> 
    <script src="public/js/jquery-3.2.1.js"></script>
    <script src="public/js/script.js"></script>
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
    </nav>
              <header class="masthead bg-primary  text-center">
                    <img src="public//imgs/MaxiRe.jpg" width="100%" alt="logo">
                  <br>
                  <br>
                  <section class="form_wrap" >
                  <section class="cantact_info">
                  <section class="info_title">
                  <span class="fa fa-user-circle"></span>
                   <h2>INFORMACION<br>DE CONTACTO</h2>
                   </section>
                    <section class="info_items">
                    <p><span class="fa fa-envelope"></span> info. maxirepuesto@gmail.com</p>
                     <p><span class="fa fa-mobile"></span> +(504) 22335822 </p>
                     <p><span class="fa fa-mobile"></span> +(504) 22335823 </p>
                     <p><span class="fa fa-mobile"></span> +(504) 94438760 </p>
                     </section>
                     </section>
                     <form action="enviar.php" class="form_contact">
                     <h2>Envia un mensaje</h2>
                     <div class="user_info">
                <label for="names">Nombres *</label>
                <input type="text" id="names">

                <label for="phone">Telefono / Celular</label>
                <input type="text" id="phone">

                <label for="email">Correo electronico *</label>
                <input type="text" id="email">

                <label for="mensaje">Mensaje *</label>
                <textarea id="mensaje"></textarea>

                <input type="button" value="Enviar Mensaje" id="btnSend">
            </div>
        </form>
    </section>
</header>
<!-- Footer -->
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
      <div class="copyright py-4 text-center text-white">
        <div class="container">
          <small>Copyright &copy; Negocios Web 2018</small>
        </div>
      </div>
      <!-- Scroll to Top Button (Only visible on small and extra-small screen sizes) -->
      <div class="scroll-to-top d-lg-none position-fixed ">
        <a class="js-scroll-trigger d-block text-center text-white rounded" href="#page-top">
          <i class="fa fa-chevron-up"></i>
        </a>
      </div>
      <script src="public/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <!-- Plugin JavaScript -->
    <script src="public/vendor/jquery-easing/jquery.easing.min.js"></script>
    <script src="public/vendor/magnific-popup/jquery.magnific-popup.min.js"></script>
    <!-- Contact Form JavaScript -->
    <script src="public/js/jqBootstrapValidation.js"></script>
    <script src="public/js/contact_me.js"></script>
    <!-- Custom scripts for this template -->
    <script src="public/js/freelancer.min.js"></script>
    <script src="public/js/slider.js"></script>
    <div id="fb-root"></div>
    <script>(function(d, s, id) {
      var js, fjs = d.getElementsByTagName(s)[0];
      if (d.getElementById(id)) return;
      js = d.createElement(s); js.id = id;
      js.src = 'https://connect.facebook.net/es_ES/sdk.js#xfbml=1&version=v3.2&appId=318708702047719&autoLogAppEvents=1';
      fjs.parentNode.insertBefore(js, fjs);
    }(document, 'script', 'facebook-jssdk'));</script>
  </body>
</body>
</html>
