<?php

//function configura(){
  //define("URL", "http://localhost/news");
 // error_reporting(true);
//}
 
  function conecta(){
           $usuario = "root";
           $senha   = "";
           $hostname = "localhost";
           $banco    = "site";
 
          $link = new mysqli($hostname,$usuario,$senha,$banco);  
                  //mysqi_select_db($banco, $link);
                  if($link->connect_error){
                    printf("erro de conexão, imbecil",$link->connect_error);
                  }
          }
?>