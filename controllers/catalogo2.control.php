<?php
/* Home Controller
 * 2014-10-14
 * Created By OJBA
 * Last Modification 2014-10-14 20:04
 */
require_once 'models/inventario.model.php';
function run(){
    $viewData = array();

    $categoria = obtenerCategoria();
    $marca = obtenerMarca();
    $modelo = obtenerModelo();

    for($i=1980;$i<=date("Y");$i++)
    {
      $year[]=array(
        "year"=>$i
      );
    }
 
    foreach ($categoria as $cat) {
      $viewData["categorias"][]=$cat;
    }

    foreach ($marca as $mar) {
      $viewData["marca"][]=$mar;
    }

    foreach ($modelo as $mol) {
      $viewData["modelo"][]=$mol;
    }

    foreach ($year as $yea) {
      $viewData["year"][]=$yea;
    }

  if(isset($_POST["btnBuscar"])){
      
    $viewData["categoria"]= $_POST["categoria"];


    $productos=obtenerProductoPorBusqueda(
      $viewData["categoria"]
    );




      foreach ($productos as $produ) {
          $viewData["productos"][]=$produ;
          }

      
  }

  renderizar("catalogo2",$viewData);

}
run();



   
?>