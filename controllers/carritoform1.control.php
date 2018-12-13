<?php
 require_once 'models/inventario.model.php';
function run()
{
    $viewData = array();
    $viewData["mode"] = "Eli";
    $modeDesc = array(
      "UPD"=>"Edición",
      "Eli"=>"Eliminar",
      "DSP"=>""
    );
    $isPost = false;


    if (isset($_POST["btnAgregar"])) {
        $viewData["mode"] = "UPD";
        $isPost = true;
    }

    if (isset($_POST["btnEliminar"])) {
        $viewData["mode"] = "Eli";
        $isPost = true;
    }


     if (isset($_POST["btnGuardar"])) {
          $tmpVenta=obtenerVentasR(1);
          $viewData["codVentasR"] = $tmpVenta["codVentas"];
          $viewData["mode"] = $_POST["mode"];
          $viewData["codArticulo"] = $_POST["codArticulo"];
          $viewData["nombreArticulo"] = $_POST["nombreArticulo"];
          $viewData["Descripcion"] = $_POST["Descripcion"];
          $viewData["Cantidad"] = $_POST["Cantidad"];
          $viewData["precioArticulo"] = $_POST["precioArticulo"];
          $viewData["cantidadStock"] = $_POST["cantidadStock"];
          $nowtime = date("H").":".date("i").":".date("s");
          $viewData["codVenta"] = $_POST["codVenta"];
          echo $viewData["mode"];
         
           switch($viewData["mode"]){
          
              case "Eli":
              eliminarOrden( $viewData["codVenta"], $viewData["codArticulo"]);
               redirectWithMessage(
                " Guardado Satosfactoriamente",
                "index.php?page=catalogo2"
            );
          }
    }
    $viewData["modedsc"] = $modeDesc[$viewData["mode"]];
    if ($isPost) {
      if ( $viewData["mode"] !== "UPD" ) {
          $tmpProducto = obtenerProductoPorID($_POST["codArticulo"]);
          $viewData["codArticulo"] = $tmpProducto["codArticulo"];
          $viewData["nombreArticulo"] = $tmpProducto["nombreArticulo"];
          $viewData["Descripcion"] = $tmpProducto["Descripcion"];
          $viewData["precioArticulo"] = $tmpProducto["precioArticulo"];
          $viewData["codVenta"] = $_POST["codVenta"];
          
          
         
          renderizar('carritoform1', $viewData);
    } else {
        redirectWithMessage("No sea vivo", "index.php?page=catalogo2");
        }
    }   
}
 run();


?>