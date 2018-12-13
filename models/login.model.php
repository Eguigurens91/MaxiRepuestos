<?php

    require_once("libs/dao.php");
  
    function obtenerUsuarioPorEmail($userEmail){
        $usuario = array();
        $sqlstr = sprintf("SELECT `usercod`,`useremail`, `username`, `userpswd`
           FROM usuario where useremail = '%s';",$userEmail);
        $usuario = obtenerUnRegistro($sqlstr);
        return $usuario;
     }



     
     
 ?>
