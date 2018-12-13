<?php
  require_once "models/inventario.model.php";

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

    foreach ($modelo as $mol) {
      $viewData["modelo"][]=$mol;
    }

    foreach ($marca as $mar) {
      $viewData["marca"][]=$mar;
    }

    foreach ($year as $yea) {
      $viewData["year"][]=$yea;

    }

    if(isset($_POST["marca2"])){
      $vmarca2 = $_POST["marca2"];
      

    }

    if(isset($_POST["modelo2"])){
      $modelo2 = $_POST["modelo2"];
    
      
    }

    if(isset($_POST["year2"])){
      $year2 = $_POST["year2"];
     

      
    }

    if(isset($_POST["categoria2"])){
      $categoria2 = $_POST["categoria2"];

      
    }
    
    $todo = obtenerProductoPorBusqueda($vmarca2,$modelo2,$year2,$categoria2);
      foreach ($todo as $cat2) {
        $viewData["categoria2"][]=$cat2;
      }



      

    renderizar("catalogo",$viewData);
  }
  run();
?>
