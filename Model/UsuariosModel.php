<?php

    include_once "Conexion.php";

   function ConsultarUsuariosOracleModel()
   {    
       $instancia = AbrirBaseDatos();
       $mi_cursor = oci_new_cursor($instancia);
       $lista = oci_parse($instancia, 'BEGIN getAllUsers(:cursbv); END;');
       oci_bind_by_name($lista, ":cursbv", $mi_cursor, -1, OCI_B_CURSOR);
       
       oci_execute($lista);
       oci_execute($mi_cursor);
       CerrarBaseDatos($instancia);

       return $mi_cursor;
   }

   function ConsultarTipoVehiculoOracleModel()
   {    
       $instancia = AbrirBaseDatos();
       $mi_cursor = oci_new_cursor($instancia);
       $lista = oci_parse($instancia, 'BEGIN getTipoVehiculo(:cursbv); END;');
       oci_bind_by_name($lista, ":cursbv", $mi_cursor, -1, OCI_B_CURSOR);
       
       oci_execute($lista);
       oci_execute($mi_cursor);
       CerrarBaseDatos($instancia);

       return $mi_cursor;
   }
   
   function ConsultarCapitanesOracleModel()
   {    
       $instancia = AbrirBaseDatos();
       $mi_cursor = oci_new_cursor($instancia);
       $lista = oci_parse($instancia, 'BEGIN getCapitanesLegibles(:cursbv); END;');
       oci_bind_by_name($lista, ":cursbv", $mi_cursor, -1, OCI_B_CURSOR);
       
       oci_execute($lista);
       oci_execute($mi_cursor);
       CerrarBaseDatos($instancia);

       return $mi_cursor;
   }

   
   function ConsultarVehiculoOracleModel()
   {    
       $instancia = AbrirBaseDatos();
       $mi_cursor = oci_new_cursor($instancia);
       $lista = oci_parse($instancia, 'BEGIN getVehiculosLegibles(:cursbv); END;');
       oci_bind_by_name($lista, ":cursbv", $mi_cursor, -1, OCI_B_CURSOR);
       
       oci_execute($lista);
       oci_execute($mi_cursor);
       CerrarBaseDatos($instancia);

       return $mi_cursor;
   }

   
   function ConsultarAlquileresOracleModel()
   {    
       $instancia = AbrirBaseDatos();
       $mi_cursor = oci_new_cursor($instancia);
       $lista = oci_parse($instancia, 'BEGIN getAlquileresLegibles(:cursbv); END;');
       oci_bind_by_name($lista, ":cursbv", $mi_cursor, -1, OCI_B_CURSOR);
       
       oci_execute($lista);
       oci_execute($mi_cursor);
       CerrarBaseDatos($instancia);

       return $mi_cursor;
   }


   function ConsultarFacturasOracleModel()
   {    
       $instancia = AbrirBaseDatos();
       $mi_cursor = oci_new_cursor($instancia);
       $lista = oci_parse($instancia, 'BEGIN getFacturas(:cursbv); END;');
       oci_bind_by_name($lista, ":cursbv", $mi_cursor, -1, OCI_B_CURSOR);
       
       oci_execute($lista);
       oci_execute($mi_cursor);
       CerrarBaseDatos($instancia);

       return $mi_cursor;
   }

   function ConsultarDetalleFacturasOracleModel()
   {    
       $instancia = AbrirBaseDatos();
       $mi_cursor = oci_new_cursor($instancia);
       $lista = oci_parse($instancia, 'BEGIN getdetalleFacturasLegibles(:cursbv); END;');
       oci_bind_by_name($lista, ":cursbv", $mi_cursor, -1, OCI_B_CURSOR);
       
       oci_execute($lista);
       oci_execute($mi_cursor);
       CerrarBaseDatos($instancia);

       return $mi_cursor;
   }

   function RegistrarTipoVehiculoModel($tipo)
    {    
        $instancia = AbrirBaseDatos();
        $lista = oci_parse($instancia, "BEGIN insertTipoVehiculo('$tipo'); END;");
        oci_execute($lista);
        CerrarBaseDatos($instancia);
    }

    
    function RegistrarVehiculoModel($Placa, $Descripcion, $Ocupantes, $PrecioAlquiler, $TipoVehiculo)
    {    
        $instancia = AbrirBaseDatos();
        $lista = oci_parse($instancia, "BEGIN insertVehiculo('$Placa','$Descripcion','$Ocupantes','$PrecioAlquiler','$TipoVehiculo'); END;");
        oci_execute($lista);
        CerrarBaseDatos($instancia);
    }

    function ConsultarVehiculosAlquiladosOracleModel($FechaFinal, $HoraFinal)
    {    
        $instancia = AbrirBaseDatos();
        $lista = oci_parse($instancia, "BEGIN getAllVehiculosAlquilados($FechaFinal, $HoraFinal); END;");
        oci_execute($lista);
        CerrarBaseDatos($instancia);
    }
?>