<?php

    include_once "../Model/UsuariosModel.php";

    /*LLAMADOS*/
    if(isset($_POST['btnAgregarTipoVehiculo']))
    {
        $tipo = $_POST["txtTipo"]; 
        RegistrarTipoVehiculoModel($tipo);

        header("Location: ../View/tipoVehiculo.php");
    }

    if(isset($_POST['btnAgregarVehiculo']))
    {
        $Placa = $_POST["txtPlaca"];
        $Descripcion = $_POST["txtDescripcion"];
        $Ocupantes = $_POST["txtOcupantes"];
        $PrecioAlquiler = $_POST["txtPrecioAlquiler"];
        $TipoVehiculo = $_POST["txtTipoVehiculo"];
        RegistrarVehiculoModel($Placa, $Descripcion, $Ocupantes, $PrecioAlquiler, $TipoVehiculo);
        
        header("Location: ../View/vehiculo.php");
    }

    if(isset($_POST['btnConsultarXML']))
    {
        $lista = ConsultarXMLOracleModel();
        

        header("Location: ../View/detalleFacturas.php");
    }

    

    /*ORACLE*/
    function ConsultarUsuariosOracle()
    {   
        $lista = ConsultarUsuariosOracleModel();
        
        while ($fila = oci_fetch_array($lista, OCI_ASSOC+OCI_RETURN_NULLS)) {
            print "<tr>\n";
            foreach ($fila as $elemento) {
                print "    <td>" . ($elemento !== null ? htmlentities($elemento, ENT_QUOTES) : "") . "</td>\n";
            }
            print "</tr>\n";
        }
        
    
        oci_free_statement($lista);
    } 

    function ConsultarTipoVehiculoOracle()
    {   
        $lista = ConsultarTipoVehiculoOracleModel();
        
        while ($fila = oci_fetch_array($lista, OCI_ASSOC+OCI_RETURN_NULLS)) {
            print "<tr>\n";
            foreach ($fila as $elemento) {
                print "    <td>" . ($elemento !== null ? htmlentities($elemento, ENT_QUOTES) : "") . "</td>\n";
            }
            print "</tr>\n";
        }
        
    
        oci_free_statement($lista);
    } 


    function ConsultarCapitanesOracle()
    {   
        $lista = ConsultarCapitanesOracleModel();
        
        while ($fila = oci_fetch_array($lista, OCI_ASSOC+OCI_RETURN_NULLS)) {
            print "<tr>\n";
            foreach ($fila as $elemento) {
                print "    <td>" . ($elemento !== null ? htmlentities($elemento, ENT_QUOTES) : "") . "</td>\n";
            }
            print "</tr>\n";
        }
        
    
        oci_free_statement($lista);
    } 


    function ConsultarVehiculoOracle()
    {   
        $lista = ConsultarVehiculoOracleModel();
        
        while ($fila = oci_fetch_array($lista, OCI_ASSOC+OCI_RETURN_NULLS)) {
            print "<tr>\n";
            foreach ($fila as $elemento) {
                print "    <td>" . ($elemento !== null ? htmlentities($elemento, ENT_QUOTES) : "") . "</td>\n";
            }
            print "</tr>\n";
        }
        
    
        oci_free_statement($lista);
    } 

    
    function ConsultarAlquileresOracle()
    {   
        $lista = ConsultarAlquileresOracleModel();
        
        while ($fila = oci_fetch_array($lista, OCI_ASSOC+OCI_RETURN_NULLS)) {
            print "<tr>\n";
            foreach ($fila as $elemento) {
                print "    <td>" . ($elemento !== null ? htmlentities($elemento, ENT_QUOTES) : "") . "</td>\n";
            }
            print "</tr>\n";
        }
        
    
        oci_free_statement($lista);
    } 

    function ConsultarFacturasOracle()
    {   
        $lista = ConsultarFacturasOracleModel();
        
        while ($fila = oci_fetch_array($lista, OCI_ASSOC+OCI_RETURN_NULLS)) {
            print "<tr>\n";
            foreach ($fila as $elemento) {
                print "    <td>" . ($elemento !== null ? htmlentities($elemento, ENT_QUOTES) : "") . "</td>\n";
            }
            print "</tr>\n";
        }
        
    
        oci_free_statement($lista);
    } 

    function ConsultarDetalleFacturasOracle()
    {   
        $lista = ConsultarDetalleFacturasOracleModel();
        
        while ($fila = oci_fetch_array($lista, OCI_ASSOC+OCI_RETURN_NULLS)) {
            print "<tr>\n";
            foreach ($fila as $elemento) {
                print "    <td>" . ($elemento !== null ? htmlentities($elemento, ENT_QUOTES) : "") . "</td>\n";
            }
            print "</tr>\n";
        }
        
    
        oci_free_statement($lista);
    } 

    function  ConsultarXMLOracle()
    {   
        
        $lista = ConsultarXMLOracleModel();
        
        while ($fila = oci_fetch_array($lista, OCI_ASSOC+OCI_RETURN_NULLS)) {
            print "<tr>\n";
            foreach ($fila as $elemento) {
                print "    <td>" . ($elemento !== null ? htmlentities($elemento, ENT_QUOTES) : "") . "</td>\n";
            }
            print "</tr>\n";
        }
        
    
        oci_free_statement($lista);
    } 
?>