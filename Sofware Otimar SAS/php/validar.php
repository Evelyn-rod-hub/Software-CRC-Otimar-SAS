<?php
$usuario = $_POST['usuario'];
$contraseña = $_POST['contraseña'];
session_start();

$_SESSION['contraseña'] = $contraseña;

$conn = mysqli_connect("localhost","root","","formulario registro otimar sas");
$consulta = "SELECT * FROM registro WHERE usuario = '$usuario' and contraseña ='$contraseña'";
$resultado = mysqli_query($conn,$consulta);
$filas = mysqli_num_rows($resultado);

if($filas) 
{
    header(home.php);
}

else
{
    include("portal.php");
}

mysqli_free_result($resultado);
mysqli_close($conn);
?>

esta línea está aquí porque marca error y la etiqueta se marca en blanco 
y debe de ir dentro del else ademas no me deja comentarear 

<h2 class="bad red-text">ERROR EN LA AUTENTIFICACION</h2>;