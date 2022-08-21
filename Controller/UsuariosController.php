<?php

    include_once "../Model/UsuariosModel.php";

    /*LLAMADOS*/
    if(isset($_POST['btnRegistrar']))
    {
        $cedula = $_POST["txtCedula"]; 
        $Nombre = $_POST["txtNombre"];  
        $Correo = $_POST["txtCorreo"]; 
        $Contrasenna = $_POST["txtContrasenna"]; 
        $Rol = $_POST["txtRol"]; 
        
        RegistrarUsuariosModel($cedula, $Nombre, $Correo, $Contrasenna, $Rol);
        header("Location: ../View/MantUsuarios.php");
    }


    if(isset($_POST['btnActualizar']))
    {
        $cedula = $_POST["txtCedula"]; 
        $Nombre = $_POST["txtNombre"];  
        $Correo = $_POST["txtCorreo"]; 
        $Contrasenna = $_POST["txtContrasenna"]; 
        $Rol = $_POST["txtRol"];
        
        ActualizarUsuariosModel($cedula, $Nombre, $Correo, $Contrasenna, $Rol);
        header("Location: ../View/MantUsuarios.php");
    }


    if(isset($_POST['EliminarAjax']))
    {
        $cedula = $_POST['cedula'];
        EliminarUsuariosModel($cedula);
    }


    function ConsultarUsuarios()
    {       
        $listaUsuarios = ConsultarUsuariosModel();
        while($item = mysqli_fetch_array($listaUsuarios))
        {   
            echo "<tr>";
            echo "<td>" . $item["Cedula"] . "</td>";
            echo "<td>" . $item["Nombre"] . "</td>";
            echo "<td>" . $item["Correo"] . "</td>";
            echo "<td>" . $item["IdRol"] . " - " . $item["NombreRol"] . "</td>";
            echo '<td>
                    <a class="btn" href="ActualizarUsuario.php?q=' . $item["Cedula"] . '">Actualizar</a>
                    <input type="button" class="btn" value="Eliminar" 
                    onclick="EliminarUsuario(' . $item["Cedula"]. ')">
                  </td>';
            echo "</tr>";
        }
    }  


    function ConsultarUsuario($Cedula)
    {       
        $Usuario = ConsultarUsuarioModel($Cedula);
        $item = mysqli_fetch_array($Usuario);
        return $item;
    }  

    
    function ConsultarRoles()
    {       
        $listaRoles = ConsultarRolesModel();
        while($item = mysqli_fetch_array($listaRoles))
        {   
            echo "<option value=". $item["IdRol"] .">" . $item["NombreRol"] . "</option>";
        }
    }  


    function ConsultarRolesUsuario($rolActual)
    {       
        $listaRoles = ConsultarRolesModel();
        while($item = mysqli_fetch_array($listaRoles))
        {   
            if($rolActual == $item["IdRol"])
            {
                echo "<option selected value=". $item["IdRol"] .">" . $item["NombreRol"] . "</option>";
            }
            else
            {
                echo "<option value=". $item["IdRol"] .">" . $item["NombreRol"] . "</option>";
            }
            
        }
    }  


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
?>