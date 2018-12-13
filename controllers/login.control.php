<?php
/* Home Controller
 * 2014-10-14
 * Created By OJBA
 * Last Modification 2014-10-14 20:04
 */
require_once 'models/login.model.php';
  function run(){
    
    

    $loginData = array(
      "errors" => array()
    );

    if(isset($_POST["btnSend"])){
      $viewData["txtEmail"]= $_POST["txtEmail"];
      $viewData["txtPswd"]= $_POST["txtPswd"];


      echo  $viewData["txtEmail"] ;

    
       
       $usuario = obtenerUsuarioPorEmail( $viewData["txtEmail"] );
       
       

       $errors = array();

       if ($usuario["useremail"]==$viewData["txtEmail"]) {
           echo "hola";
        if ($usuario["userpswd"] == $viewData["txtPswd"]) {
          $_SESSION["usercod"]=$usuario["usercod"];

          redirectWithMessage(
            "Bienvenido",
            "index.php?page=home"
        );

        }else{
          echo "<script language=JavaScript>alert('El contraseña no es Correcto.');</script>"; 
        }
       }
       else {
        echo "<script language=JavaScript>alert('El usuario no es Correcto.');</script>"; 
       }
       
 
 
   }

    
   renderizar("login",Array());
  
  }
  run();



   
?>