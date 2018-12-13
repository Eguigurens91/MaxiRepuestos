<?php
 require_once 'models/inventario.model.php';
function run()
{
    $viewData = array();
    $viewData["mode"] = "UPD";
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


     if (isset($_POST["btnGuardar"])) {
         
          $viewData["usercod"]=$_SESSION["usercod"];
          $tmpVenta=obtenerVentasR( $viewData["usercod"]);
          $viewData["codVentasR"] = $tmpVenta["codVentas"];
          $viewData["mode"] = $_POST["mode"];
          $viewData["codArticulo"] = $_POST["codArticulo"];
          $viewData["nombreArticulo"] = $_POST["nombreArticulo"];
          $viewData["Descripcion"] = $_POST["Descripcion"];
          $viewData["Cantidad"] = $_POST["Cantidad"];
          $viewData["precioArticulo"] = $_POST["precioArticulo"];
          $viewData["cantidadStock"] = $_POST["cantidadStock"];
          $nowtime = date("H").":".date("i").":".date("s");
          
           switch($viewData["mode"]){
              case "UPD":
             if($viewData["cantidadStock"]  <= $viewData["Cantidad"])
              {
                redirectWithMessage(
                    "No se Guardado Satosfactoriamente" ,
                    "index.php?page=catalogo2"
                );
                break;
              }
              else if($viewData["Cantidad"]<=0){
                redirectWithMessage(
                    "No se Acepta" ,
                    "index.php?page=catalogo2"
                );
                break;
              }else if(!empty($viewData["codVentasR"])){
                $tmpVentaD=obtenerVentasD($viewData["codVentasR"],$viewData["codArticulo"]);
                $viewData["hora"]=$tmpVentaD["horaReservacion"];
                $viewData["Viejacantidad"]=$tmpVentaD["cantidad"];
                if(!empty($viewData["Viejacantidad"])){

                  editarCantidad($tmpVentaD['codVenta'],$viewData['codArticulo'],$viewData['Cantidad']);

                  redirectWithMessage(
                      " Guardado Satosfactoriamente" ,
                      "index.php?page=catalogo2"
                  );
                }
                else{
                    AgregarDetalleVenta($viewData["codVentasR"],
                    $viewData["codArticulo"],
                    $nowtime,
                    $viewData["precioArticulo"],
                    $viewData["Cantidad"],
                    10);
    
                    redirectWithMessage(
                        "Producto Guardado Satosfactoriamente Update" ,
                        "index.php?page=catalogo2"
                    );
                  break;
                }
                
              }else{
                  
                    AgregarResumenVenta($viewData["usercod"], 3);
                    $tmpVentaR=obtenerVentasR($viewData["usercod"]);
                    $viewData["codVentasD"] = $tmpVentaR["codVentas"];
                    AgregarDetalleVenta($viewData["codVentasD"], $viewData["codArticulo"], $nowtime, $viewData["precioArticulo"],$viewData["Cantidad"],
                    10);
                    redirectWithMessage(
                        " Guardado Satosfactoriamente Agregar" . $viewData["usercod"],
                        "index.php?page=catalogo2"
                    );
                    break;
                  
                
              }
             
          }
    }
    $viewData["modedsc"] = $modeDesc[$viewData["mode"]];
    if ($isPost) {
      if ($viewData["mode"] === "UPD"  ) {
          $tmpProducto = obtenerProductoPorID($_POST["codArticulo"]);
          $viewData["codArticulo"] = $tmpProducto["codArticulo"];
          $viewData["nombreArticulo"] = $tmpProducto["nombreArticulo"];
          $viewData["Descripcion"] = $tmpProducto["Descripcion"];
          $viewData["precioArticulo"] = $tmpProducto["precioArticulo"];
          $viewData["cantidadStock"] = $tmpProducto["cantidadStock"];
          $viewData["usercod"]=$_SESSION["usercod"];
          renderizar('carritoform', $viewData);
    } else {
        redirectWithMessage("No sea vivo", "index.php?page=catalogo2");
        }
    }   
}
 run();


?>