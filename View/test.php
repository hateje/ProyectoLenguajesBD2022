<?php 
    include_once "componentes.php"; 
    include_once "../Controller/UsuariosController.php"; 
?>

<?php  
// crear conexion con oracle
$conexion = oci_connect("adminProyecto", "123", "localhost/orcl"); 

if (!$conexion) {    
  $m = oci_error();    
  echo $m['message'], "n";    
  exit; 
} else {    
  //echo "Conexión con éxito a Oracle!"; 
  // Obtener los resultados de la consulta
  $test = oci_parse($conexion, 'select * from usuario where usuarioid = 1');

    oci_execute($test);
    ?>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="">

    <title>Start Bootstrap Template</title>
    <link href="../vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="../css/simple-sidebar.css" rel="stylesheet">

</head>

<body>

    <div class="d-flex" id="wrapper">

        <?php MostrarMenu(); ?>

        <div id="page-content-wrapper">

            <?php MostrarHeader(); ?>

            <div class="container-fluid">


                <br />
                <br />

                <table id="tUsuarios" class="table table-hover table-bordered">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Nombre</th>
                            <th>Apellido 1</th>
                            <th>Apellido 2</th>
                            <th>Correo</th>
                            <th>Contraseña</th>
                            <th>Teléfono</th>
                            <th>Capitán ID</th>
                        </tr>
                    </thead>
                    <tbody>
<?php 
  
    while ($fila = oci_fetch_array($test, OCI_ASSOC+OCI_RETURN_NULLS)) {
        print "<tr>\n";
        foreach ($fila as $elemento) {
            print "    <td>" . ($elemento !== null ? htmlentities($elemento, ENT_QUOTES) : "") . "</td>\n";
        }
        print "</tr>\n";
    }
    print "</table>\n";

    oci_free_statement($test);
    oci_close($conexion);
} 
 
?>
                    </tbody>
                </table>
            </div>

        </div>
    </div>

    <script src="../vendor/jquery/jquery.min.js"></script>
    <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="../js/simple-sidebar.js"></script>

</body>

</html>