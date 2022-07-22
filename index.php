<DOCTYPE HTML>
<meta charset = "utf8" />
<?php  
// crear conexion con oracle
$conexion = oci_connect("adminProyecto", "123", "localhost/orcl"); 





if (!$conexion) {    
  $m = oci_error();    
  echo $m['message'], "n";    
  exit; 
} else {    
  echo "Conexión con éxito a Oracle!"; 
  // Obtener los resultados de la consulta
  $test = oci_parse($conexion, 'select * from usuario where usuarioid = 1');

    oci_execute($test);

    print "<table border='1'>\n";
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
