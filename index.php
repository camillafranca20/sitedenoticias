<?php 
require_once("php/connect.php");
conecta();
?>

<html>
<meta charset="UTF-8">
  <head>
    <title >Meu site de noticias</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
 <div id="head">
      <fieldset style="color:#380879">
 <img src="img/logo.png" style="
    width: 150px;
    margin-left: 10px;
">
<label><a href="admin/login.php" style="color:#020300; text-decoration-line:none; float:right; padding-top: 50px; padding-right: 50px" id="login">Login</a></label>
       <nav>
  <ul class="menu">
  <li><a href="index.php" action="mostradados.php">Home</a></li>
        <li><a href="#">Brasil</a></li>
        <li><a href="#">Cidades</a></li>
        <li><a href="#">Mundo</a></li>
            <li><a href="#">Eleições 2018</a>
            <li><a href="#">Esportes</a></li>
            <li><a href="#">Economia</a></li>
            <li><a href="#">Tecnologia</a></li>                
</ul>
</nav>
      </fieldset>
  </div>
     
  </head>
<body>
<fieldset>

  <form method="POST" action="mostradados.php">
  news
  </fieldset>
  <fieldset>

  <form method="POST" action="mostradados.php">
  news
  </fieldset>
  <fieldset>

  <form method="POST" action="mostradados.php">
  news
  </fieldset>
  </form>

</body>
</html>