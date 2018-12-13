<?php
/* Home Controller
 * 2014-10-14
 * Created By OJBA
 * Last Modification 2014-10-14 20:04
 */
  require_once 'models/singoup.model.php';
  function run(){

    if(isset($_POST["btnGuardar"])){
            $viewData["usercod"]= $_POST["usercod"];
            $viewData["useremail"]= $_POST["useremail"];
            $viewData["userpswd"]= $_POST["userpswd"];

        ingresarusuario(
            $viewData["usercod"],
            $viewData["useremail"],
            $viewData["userpswd"]
        );

        redirectWithMessage(
            "Agregado Satifactoriamente",
            
            "index.php?page=singoup"
        );
    }

    renderizar("singoup",Array());
  
  }
  run();



   
?>
