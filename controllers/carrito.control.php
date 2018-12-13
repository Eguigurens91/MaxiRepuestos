<?php
/* Home Controller
 * 2014-10-14
 * Created By OJBA
 * Last Modification 2014-10-14 20:04
 */
require_once "models/inventario.model.php";

function run(){
  $viewData = array();
  $viewData["usercod"]=$_SESSION["usercod"];
  $carrito = obtenerCarrito( $viewData["usercod"],3);
 
  foreach ($carrito as $car) {
    $viewData["carrito"][]=$car;
  }

  renderizar("carrito",$viewData);
  }
  run();
?>
