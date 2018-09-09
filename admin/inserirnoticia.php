<?php 
require_once("../php/connect.php");
conecta();
?>

<html>
<meta charset="UTF-8">
  <head>
    <title >Extra! Extra! - Inserir Notícia</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
    <fieldset> 
 <a href="../index.php">
 <img src="../img/logo.png" style="
    width: 150px;
    margin-left: 10px;
"></a>
<label style="float: right; font-size: 25px; padding-top: 50px; padding-right: 200px; font-family: arial, helvetica, sans-serif;">Inserir Notícia<label>
</fieldset>
</head>
<body>
<fieldset>
	<form action="" method="POST" style="font-family: arial, helvetica, sans-serif;">
		<label> Título da notícia:</label><br><br>
		<input type="title" name="titulo" size="60" maxlength="500"><br><br>
		<label>Descrição</label><br><br>
		<textarea name="descricao" rows="5" cols="30" ></textarea><br><br>
		<label>Conteúdo</label><br><br>
		<textarea name="conteudo" rows="10" cols="50" ></textarea><br><br>
		<label>Palavras-chave</label><br><br>
		<input type="text" name="palavras_chave" size="50"></textarea><br><br>
		<input type="text" name="imgname" size="50" readonly="true"><input type="image" name="imagem" src="../img/foto.png" title="procurar..."><br><br><br>	
		<input type="submit" name="inserir" value="Inserir">
		</fieldset>
	</form>
</body>
</html>