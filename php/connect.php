<?php

//function configura(){


  function conecta(){
    
    global $link;
           $usuario = "root";
           $senha   = "";
           $hostname = "localhost";
           $banco    = "site";
 
          $link = new mysqli($hostname,$usuario,$senha,$banco); 
                 
            mysqli_set_charset($link, "utf8");
                  if($link->connect_error){
                    printf("erro de conexão",$link->connect_error);
                  }
          }
?>