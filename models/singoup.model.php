<?php
    require_once("libs/dao.php");
  
    /*
    function obtenerTodosMensajes(){
        $sqlstr = "Select * from mensajes;";
        return obtenerRegistros($sqlstr);
    }
    */

   

    /*function ingresarusuario(){
        if (!empty($_POST['email']) && !empty($_POST['password'])) {
            $sql = "INSERT INTO users (email, password) VALUES (:email, :password)";
            $stmt = $conn->prepare($sql);
            $stmt->bindParam(':email', $_POST['email']);
            $password = password_hash($_POST['password'], PASSWORD_BCRYPT);
            $stmt->bindParam(':password', $password);
        
            if ($stmt->execute()) {
              $message = 'Successfully created new user';
            } else {
              $message = 'Sorry there must have been an issue creating your account';
            }
          }
    }*/
    function ingresarusuario($id,$correo,$password){
        $sqlins="INSERT INTO `usuario` (`useremail`,`userpswd`) VALUES ('%s','%s');";
        $result=ejecutarNonQuery(sprintf($sqlins,$correo,$password));
        echo($result);
        if($result && true){
           return getLastInserId();
        }else{
            return 0;
        }
     }
  
 ?>
