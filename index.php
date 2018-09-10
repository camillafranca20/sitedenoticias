<!DOCTYPE html>
<html>
  <head>

    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" >
  
    <title >Meu site de noticias</title>

    <link rel="stylesheet" type="text/css" href="css/style.css" media="all"/>

<div class="container">
    <fieldset style="color:#380879">
    <img src="img/logo.png" 
    style="width: 150px;
    margin-left: 10px">

    <label>
    <a href="admin/login.php" 
    style="color:#020300; 
    text-decoration-line:none; 
    float:right; 
    padding-top: 50px; 
    padding-right: 50px">Login</a>
    </label>
        <div class="menu">
  <nav>
    <ul>
        <li><a href="index.php"">Home</a></li>
        <li><a href="#">Brasil</a></li>
        <li><a href="#">Cidades</a></li>
        <li><a href="#">Mundo</a></li>
        <li><a href="#">Eleições 2018</a>
        <li><a href="#">Esportes</a></li>
        <li><a href="#">Economia</a></li>
        <li><a href="#">Tecnologia</a></li>                
        </ul>
</nav>
    </div>
      </fieldset>
    </head>

<body>
    <div class="conteudo">

<?php

    echo '<table>
    <thead>
    </thead>';

require_once("php/connect.php");
conecta();

$sql = mysqli_query($link,'SELECT * FROM noticias');

            
while($row = mysqli_fetch_array($sql)){
    $slug = $row["slug"];
    $palavras_chaves = $row["palavras_chaves"];
    $categoria = $row["categoria"];
    
echo '<td>'.$row["titulo"].'</td><td>'.$row["descricao"].'</td><td><tr>'.$row["conteudo"].'</tr>'.$row["imagem"].$row["data"];

  
 
}
            
              include 'php/footer.php';
?>          
            
   

</body>
</html>


