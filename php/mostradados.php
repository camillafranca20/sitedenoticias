<?php
include "connect.php";

$titulo = $_POST["titulo"];
$slug = $_POST["slug"];
$descricao = $_POST["descricao"];
$palavras_chaves = $_POST["palavras_chaves"];
$conteudo = $_POST["conteudo"];
$categoria = $_POST["categoria"];
$result = mysqli_query("SELECT * FROM noticias");



?>
