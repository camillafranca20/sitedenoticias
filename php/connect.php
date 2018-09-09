<?php

//function configura(){


  function conecta(){
    global $link;
           $usuario = "root";
           $senha   = "";
           $hostname = "localhost";
           $banco    = "site";
 
          $link = new mysqli($hostname,$usuario,$senha,$banco);  
                  //mysqi_select_db($banco, $link);
                  if($link->connect_error){
                    printf("erro de conexão",$link->connect_error);
                  }
          }
?>