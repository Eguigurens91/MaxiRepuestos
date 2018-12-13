
<?php
  require_once "libs/dao.php";

function obtenerProductoPorID($codArticulo)
{
    $sqlstr = "select * from inventario where codArticulo=%d;";
    return obtenerUnRegistro(sprintf($sqlstr, $codArticulo));
}

function obtenerVentasR($codUsuario){
  $sqlstr = "select * from resumen_ventas where codUsuario=%d and codEstado=3;";
    return obtenerUnRegistro(sprintf($sqlstr, $codUsuario));
}

function obtenerVentasD($codVenta,$codArticulo){
  $sqlstr = "select * from detalle_ventas where codVenta=%d and estado=3 and codArticulo=%d;";
    return obtenerUnRegistro(sprintf($sqlstr, $codVenta,$codArticulo));
}

  function obtenerCategoria(){
    $sqlstr = "select * from categoria_articulo;";
    return obtenerRegistros($sqlstr);

  }

  function obtenerMarca(){
    $sqlstr = "select * from marca_carro;";
    return obtenerRegistros($sqlstr);

  }

  function obtenerModelo(){
    $sqlstr = "select * from modelo_carro;";
    return obtenerRegistros($sqlstr);
  }

  function obtenerProductos(){
      $sqlstr = "select * from maxirepuestos.inventario ;";
      return obtenerRegistros($sqlstr);
  }

  function obtenerProductoPorBusqueda($vmarca2,$modelo2,$year2,$categoria2){
    echo $vmarca2;
    echo $modelo2;
    echo $year2;
    echo $categoria2;
    $cont = 0;
    $string2 = "";
    if (!empty($vmarca2)){
      $cont++;
      $string2 = "C.nombreMarca = '" . $vmarca2 . "'";
    }
    if (!empty($modelo2)){
      if ( $cont<>0 ){
        $string2 = $string2 . " and D.nombreModelo = '" . $modelo2 . "'";
      }
      else{
        $string2 = $string2 . " D.nombreModelo = '" . $modelo2 . "'";
      }
      $cont++;
    } 
    if (!empty($year2)){
      if ( $cont<>0 ){
        $string2 = $string2 . " and A.Año = '" . $year2 . "'";
      }
      else{
        $string2 = $string2 . " A.Año  = '" . $year2 . "'";
      }
      $cont++;
    } 
    
    if (!empty($categoria2)){
      if ( $cont<>0 ){
        $string2 = $string2 . " and B.nombreCategoria = '" . $categoria2 . "'";
      }
      else{
        $string2 = $string2 . " B.nombreCategoria = '" . $categoria2 . "'";
      }
      $cont++;
    } 
    $sqlstr = "select * from maxirepuestos.inventario A inner join maxirepuestos.categoria_articulo B on A.codCategoria = B.codCategoria inner join marca_carro C on A.codMarcaCarro = C.codMarca inner join modelo_carro D on A.CodModelo = D.CodModelo  where ". $string2 .";";
    return obtenerRegistros($sqlstr);
  }
  function  AgregarResumenVenta(
    $codUsuario,
    $codEstado
    ) {

    $sqlins = "INSERT INTO `resumen_ventas` ( `codUsuario`, `codEstado`)VALUES(%d,%d);";
    $result = ejecutarNonQuery(sprintf($sqlins,$codUsuario,$codEstado) );
 if ($result && true) {
     return getLastInserId();
 } else {
     return 0;
 }
}

  function  AgregarDetalleVenta(
    $codVenta,
    $codArticulo,
    $horaReservacion,
    $precioActual,
    $cantidad,
    $oferta
    ) {

    $sqlins = "INSERT INTO `detalle_ventas` (`codVenta`, `codArticulo`,`horaReservacion`, `precioActual`, `cantidad`,`oferta`,`estado`)VALUES(%d,%d,'%s',%d,%d,%d,%d);";
    $result = ejecutarNonQuery(sprintf($sqlins, $codVenta,$codArticulo, $horaReservacion, $precioActual, $cantidad,$oferta,3 ) );
 if ($result && true) {
     return getLastInserId();
 } else {
     return 0;
 }
}

function editarCantidad(
  $codVenta,
  $codArticulo,
  $cantidad
) {
      $sqlupd = "UPDATE detalle_ventas set
      cantidad = %d
      where  codVenta = %d and codArticulo = %d;";
      $result = ejecutarNonQuery(
          sprintf(
            $sqlupd,
            $cantidad,
            $codVenta,
            $codArticulo
          )
      );
return ($result && true) ;
}

function eliminarOrden(
  $codVenta,
  $codArticulo
) {
      $sqlupd = "UPDATE detalle_ventas set
      estado = 4
      where  codVenta = %d and codArticulo = %d;";
      $result = ejecutarNonQuery(
          sprintf(
            $sqlupd,
            $codVenta,
            $codArticulo
          )
      );
return ($result && true) ;
}

function obtenerCarrito($codUsuario,$codEstado){
  $sqlstr = "select * from detalle_ventas A inner join resumen_ventas B on A.codVenta = B.codVentas  inner join inventario C on A.codArticulo = C.codArticulo where codUsuario=".$codUsuario." and  estado=".$codEstado.";";
  return obtenerRegistros($sqlstr);
  
}


 ?>
