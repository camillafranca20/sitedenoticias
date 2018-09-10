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
      <div class="conteudo">

      </div>
      <div class="rodape">
        <span> &copy; <?=date('Y')?> - Todos os direitos reservados.</span>
      </div>
  </div>
     
  </head>
<body>


<?php


require_once("php/connect.php");
conecta();

$sql = mysqli_query($link,'SELECT * FROM noticias');
$row = mysqli_fetch_assoc($sql);
$cont = mysqli_num_rows($sql);
$array = mysqli_fetch_array($sql);
//echo $row['titulo'];

 
if($row <= $cont ){
   $titulo = $row["titulo"];
  //$slug = $_POST["slug"];
  $descricao = $row["descricao"];
  $palavras_chaves = $row["palavras_chaves"];
  $conteudo = $row["conteudo"];
  $categoria = $row["categoria"];

   echo implode("<br>", $array);
} else{
 
}
?>

</body>
</html>


