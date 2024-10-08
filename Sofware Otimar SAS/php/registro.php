<?php
// Conexión a la base de datos
$host = "localhost";
$user = "root";
$password = "";
$database = "crc otimar sas";

$conn = mysqli_connect($host, $user, $password, $database);

// Verificar la conexión
if (!$conn) {
    die("Error en la conexión: " . mysqli_connect_error());
}

// Obtener los datos del formulario
$nombre_completo = $_POST['nombre_completo'];
$tipo_documento = $_POST['tipo_documento'];
$numero_documento = $_POST['numero_documento'];
$nacionalidad = $_POST['nacionalidad'];
$celular = $_POST['celular'];
$email = $_POST['email'];
$fecha_de_nacimiento = $_POST['fecha_de_nacimiento'];
$usuario = $_POST['usuario'];
$contraseña = $_POST['contraseña'];
// encript clave
$contraseña = hash('sha512', $contraseña);

// Crear la consulta SQL para insertar los datos
$query = "INSERT INTO usuarios (nombre_completo, tipo_documento, numero_documento, nacionalidad, celular, email, correo, fecha_de_nacimiento, usuario, contraseña) 
          VALUES ('$nombre_completo', $numero_documento, $nacionalidad, $celular, $email, $correo, $fecha_de_nacimiento, $usuario, $contraseña )";

// verificar que no se repita el correo en la base de datos
$verificar_email = mysqli_query($conn, "SELECT * FROM registro WHERE email = '$email'");

if (mysqli_num_rows($verificar_email) > 0) {
    echo "<script>alert('Este correo ya está registrado. Inténtelo nuevamente.'); window.location = '../Formularioinicio.html';</script>";
    exit();
}

// verificar que no se repita el usuario en la base de datos
$verificar_usuario = mysqli_query($conn, "SELECT * FROM registro WHERE usuario = '$usuario'");

if (mysqli_num_rows($verificar_usuario) > 0) {
    echo "<script>alert('Este usuario ya existe. Por favor, elige otro.'); window.location = '../Formularioinicio';</script>";
    exit();
}
$ejecutar = mysqli_query($conn, $query);

if($ejecutar){
    echo "<script>alert('Registro exitoso!!'); window.location = '../Formularioinicio';</script>";
}else{
    echo "<script>alert('Error al registrar, porfavor verifica tus datos.'); window.location = '../Formularioinicio';</script>";
}

// ejecutar la consulta para insertar el nuevo usuario en la base de datos
//$query = "INSERT INTO usuarios (correo, usuario, contraseña) 
            //VALUES ('$correo', '$usuario', '$contraseña')";
// Cerrar la conexión
mysqli_close($conn);
?>
<?php