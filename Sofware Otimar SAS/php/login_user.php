<?php
// Conexión a la base de datos
$host = "localhost";
$user = "root";
$password = "";
$database = "crc otimar sas";

$conn = mysqli_connect($host, $user, $password, $database);

// Verificar la conexión
if (!$conn) {
    die("Error en la conexión: ". mysqli_connect_error());
}

$usuario = $_POST['usuario'];
$contraseña = $_POST['contraseña'];

// encript clave
//$contraseña = hash('sha512', $contraseña);

//echo $contrasena;
//die();

$validar_inicio_sesion = mysqli_query($conn, "SELECT * FROM inicio sesión WHERE  = '$usuario' and contraseña = '$contraseña'");

if(mysqli_num_rows($validar_login) > 0){
    
    header("location: ..//index.html");
    exit();
}else{
    echo "<script>alert('Usuario incorrecto, verifica tus credenciales'); window.location = '../Formlogin.html';</script>";
    exit();
}

// verificar que no se repita el correo en la base de datos
$verificar_email = mysqli_query($conn, "SELECT * FROM registro WHERE email = '$email'");

if (mysqli_num_rows($verificar_email) > 0) {
    echo "<script>alert('Este correo ya está registrado. Inténtelo nuevamente.'); window.location = '../Formulogin.html';</script>";
    exit();
}

?>
