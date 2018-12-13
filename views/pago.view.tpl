<!DOCTYPE html>
<html>
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
   <link href="public/css/slider.css"rel="stylesheet">
   <link href="public/css/maxi.css" rel="stylesheet" >
    <link href="public/css/style.css" rel="stylesheet">  
   <link href="public/css/estilopago.css" rel="stylesheet">
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
              <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="index.php?page=contacto">Contactanos</a>
            </li>
            <li class="nav-item mx-0 mx-lg-1">
              <a class="nav-link py-3 px-0 px-lg-3 rounded js-scroll-trigger" href="index.php?page=carrito">Carrito</a>
            </li>
          </ul>
        </div>
      </div>
    </nav>
         <header class="masthead bg-primary  text-center">
                  <br>
                  <br>
                  <div class="modal">
                        <div class="modal__container">
                          <div class="modal__featured">
                            <a type="button" class="button--transparent button--close" href="index.php?page=catalogo"  >
                              <svg   class="nc-icon glyph" xmlns="http://www.w3.org/2000/svg" xmlns:xlink="http://www.w3.org/1999/xlink" x="0px" y="0px" width="32px" height="32px" viewBox="0 0 32 32">
                                <g><path fill="#ffffff" d="M1.293,15.293L11,5.586L12.414,7l-8,8H31v2H4.414l8,8L11,26.414l-9.707-9.707 C0.902,16.316,0.902,15.684,1.293,15.293z"></path> </g></svg>
                              <span class="visuallyhidden" >Regresar</span>
                            </a>
                            <div class="modal__circle"></div>
                            <img src="public/imgs/pagof.jpg" class="modal__product" />
                          </div>
                          <br>
                          <br>
                          <div class="modal__content">
                            <div id="msj"></div>
                            <h2>Detalles de Pago</h2>
                            
                              <ul class="form-list">
                                <li class="form-list__row">
                                  <label for="txtnombre">Nombre</label>
                                  <input type="text" name="" required="" placeholder="Ingresa tu Nombre"/>
                                </li>
                                <li class="form-list__row">
                                  <label for="num">Numero de tarjeta</label>
                                  <div id="input--cc" class="creditcard-icon">
                                    <input type="text" name="cc_number" required="" placeholder="Numero de la tarjeta"/>
                                  </div>
                                </li>
                                <li class="form-list__row form-list__row--inline">
                                  <div>
                                    <label>Fecha de expiracion</label>
                                    <div class="form-list__input-inline">
                                      <input placeholder="mes"  />
                                      <input placeholder="anio"  />
                                    </div>
                                  </div>
                                  <div>
                                    <label>
                                      CVC
                                    </label>
                                    <input placeholder="codigo Seg" />
                                  </div>
                                </li>
                                <li>
                                  <button type="submit" id="BtnEnviar"  class="button">Pagar ahora!</button>
                                </li>
                              </ul>
                          </div>  
                        </div>  
                      </div> 
</header>
      <div class="scroll-to-top d-lg-none position-fixed ">
        <a class="js-scroll-trigger d-block text-center text-white rounded" href="#page-top">
          <i class="fa fa-chevron-up"></i>
        </a>
      </div>
      <script src="public/js/pago.js" type="text/javascript"></script>
      <script type="text/javascript">
        $(document).ready(function(){
            $("#BtnEnviar").click(function(event){
                event.preventDefault();
               $("#msj").html("<h2>Compra exitosa!!!</h2>");
               $("#msj").css("border", "10px solid");
               $("#msj").css("border-color", "orange");
               $("#msj").css("with", "10%");
               $("#msj").css("float", "rigt");
            });
        });
    </script>
</body>
</html>
