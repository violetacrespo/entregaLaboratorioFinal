<!doctype html>
<html>
<head>
<meta charset='utf-8'>
<title>FORRMULARIO DE REGISTRO</title>
<link href="disenio.css" rel="stylesheet" type="text/css">

</head>

<body>
<div class="group">
    <form method="POST" action="">
    <h2>Formulario de Registro</h2>
    <label for="login">Login<span><em> Requerido</em></span></label>
    <input type="text" name="login" class="form-input" required/>

    <label for="nombre">Nombre<span><em> Requerido</em></span></label>
    <input type="text" name="nombre" class="form-input" required/>

    <label for="primerApellido">Primer Apellido<span><em> Requerido</em></span></label>
    <input type="text" name="primerApellido" class="form-input" required/>

    <label for="segundoApellido">Segundo Apellido<span><em> Requerido</em></span></label>
    <input type="text" name="segundoApellido" class="form-input" required/>

    <label for="email">Email<span><em> Requerido</em></span></label>
    <input type="email" name="email" class="form-input" required/>

    <label for="contraseña">Contraseña<span><em> Requerido</em></span></label>
    <input type="password" name="contraseña" class="form-input" required required pattern=".{4,8}" title="La contraseña debe tener entre 4 y 8 caracteres"/>
    <input class="form-btn" name="submit" type="submit" value="Registrarse"/>

    <?php
    if($_POST){

        //creamos las variables donde vamos a guardar los datos introducidos en el formulario
        $login =$_POST['login'];
        $nombre= $_POST['nombre'];
        $primerApellido=$_POST['primerApellido'];
        $segundoApellido=$_POST['segundoApellido'];
        $email=$_POST['email'];
        $contraseña=$_POST['contraseña'];


        //creamos 4 variables para la conexion con la BBDD
        $servername="localhost";
        $username="root";
        $password="";
        $dbname="samsung";

        //realizamos la conexion
        $conn=new mysqli($servername,$username,$password,$dbname);


         // Validar si el email ya existe
        if (emailExists($conn,$email)) {
            echo "El email ya está registrado. Por favor, utiliza otro email.";
            exit;
        }

        // Validar si el usuario ya existe
        if (userExists($conn,$login)) {
            echo "El usuario ya está registrado. Por favor, utiliza otro nombre de usuario.";
            exit;
        }


        //verificamos que la conexion se haya realizado correctamente
        if($conn->connect_error){
            die("connection failed: " . $conn->connect_error);
        }

        $sql="INSERT INTO usuario(`login`,`nombre`,`primerApellido`,`segundoApellido`,`email`,`contraseña`)
        VALUES ('$login','$nombre','$primerApellido','$segundoApellido','$email','$contraseña')";

        if($conn->query($sql)===true){
            echo "El registro se ha creado correctamente";
        }else {"error: " . $sql . "<br>" . $conn->error;}       

        $conn->close();
    }

    function emailExists($conn,$email) {

    
        $sql = "SELECT email FROM usuario WHERE email = '$email'";
        $result = $conn->query($sql);
        $exists = $result->num_rows > 0;
    
    
    
        return $exists;
    }
    
    function userExists($conn,$login) {

        $sql = "SELECT `login` FROM usuario WHERE login = '$login'";
        $result = $conn->query($sql);
        $exists = $result->num_rows > 0;
    
      
        return $exists;
    }
    ?>
    <div class="usuarios-registrados">
        <input class="form-btn" name="mostrar_usuarios" type="button"  value="Mostrar Usuarios"/>
        <?php
            if ($_POST) {

                $servername="localhost";
                $username="root";
                $password="";
                $dbname="samsung";

                $conn=new mysqli($servername,$username,$password,$dbname);

               
                if ($conn->connect_error) {
                    die("La conexión falló: " . $conn->connect_error);
                }

                
                $sql = "SELECT `login`,`nombre`,`primerApellido` FROM usuario";
                $result = $conn->query($sql);

                
                if ($result->num_rows > 0) {
                    echo "<br><br>";
                    
                    while ($row = $result->fetch_assoc()) {
                        echo "Usuario: " . $row['login'] . "<br>";
                        echo "Nombre: " . $row['nombre'] . "<br>";
                        echo "Primer Apellido: " . $row['primerApellido'] . "<br>";
                        echo "<br>";
                    }
                } else {
                    echo "No hay usuarios registrados.";
                }

                
                $conn->close();
            }
        ?>
    </div>


    </form>

</div>
</body>
</html>

