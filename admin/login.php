<?php 
require_once("../php/connect.php");
conecta();
?>

<html>
<meta charset="UTF-8">
  <head>
    <title >Extra! Extra! - Login</title>
    <link rel="stylesheet" type="text/css" href="css/style.css">
     
 <img src="../img/logo.png" style="
    width: 150px;
    margin-left: 10px;
">
</head>
<body>
	<form action="" method="POST">
		<label> E-mail:</label><br><br>
		<input type="text" name="email" placeholder="seuemail@exemplo.com"><br><br>
		<label>Senha:</label><br><br>
		<input type="password" name="senha" placeholder="***********"><br><br>
		<input type="submit" name="login" value="Login">
	</form>
</body>
</html>

<?php
if(isset($_POST["Login"])){
	$email = addslashes($_POST["email"]);
	$senha = addslashes($_POST["senha"]);
	//if($email == "" || $senha = ""){
		//echo("PREENCHA TODOS OS CAMPOS");
	//}

	conecta();

	$sql = $link->query("SELECT ");
}