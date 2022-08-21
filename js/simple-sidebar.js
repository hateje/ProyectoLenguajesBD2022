var tabla = document.getElementById("tCodigos");


$("#menu-toggle").click(function(e) {
  e.preventDefault();
  $("#wrapper").toggleClass("toggled");
});


function LlamarServicioApi()
{
  let identificacion = document.getElementById("txtIdentificacion").value;

  if(identificacion.trim() != "")
  {
    let request = new XMLHttpRequest();
    request.open("GET", "https://apis.gometa.org/cedulas/" + identificacion);
    request.send();

    request.onload = function()
    {
      let resultado = JSON.parse(request.response);

      if(request.status == 200 && resultado.resultcount > 0)
      {
        document.getElementById("txtNombreCompleto").value = resultado.nombre;
        $("#divContrasenna").show();      
      }
      else
      {
        LimpiarDatos();   
      }
    }
  }
  else
  {
    LimpiarDatos();      
  }
}


function LlamarServicioApi_AJAX()
{
  let identificacion = $("#txtIdentificacion").val();

  if(identificacion.trim() != "")
  {
      $.ajax({
        type: 'GET',
        url: 'https://apis.gometa.org/cedulas/' + identificacion,
        dataType: 'json',
        success: function(resultado)
        {
          $("#txtNombreCompleto").val(resultado.nombre);
          $("#divContrasenna").show();      
        },
        error: function(resultado)
        {
          LimpiarDatos();        
        },
      });
  }
  else
  {
    LimpiarDatos();   
  }
}


function LimpiarDatos()
{
  $("#txtNombreCompleto").val("");
  $("#divContrasenna").hide();  
}


function ContarPorcentajesMayores(estado)
{
  let contador = 0;

  for(let i = 1; tabla.rows[i]; i++)
  {
    let pObligatorio = parseFloat(tabla.rows[i].cells[2].innerHTML);
    let pOpcional = parseFloat(tabla.rows[i].cells[3].innerHTML);

    if(estado)
    {
      if(pObligatorio >= 5)
      {
        contador += 1;
      }
      
      if(pOpcional >= 5)
      {
        contador += 1;
      }
    }
    else
    {
      if(pObligatorio < 5)
      {
        contador += 1;
      }
      
      if(pOpcional < 5)
      {
        contador += 1;
      }
    }
  }

  alert("La cantidad de porcentajes " + (estado ? "mayores" : "menores") + " es: " + contador);
}


function CalcularPrecio(obj)
{
  let posicion = obj.parentNode.parentNode.rowIndex;
  alert(Operacion(posicion));
}


function SumarTotal()
{
  let sumador = 0;
  for(let i = 1; tabla.rows[i]; i++)
  {
    sumador += Operacion(i);
  }
  alert(sumador);
}


function Operacion(posicionRequerida)
{
  let precio = parseFloat(tabla.rows[posicionRequerida].cells[1].innerHTML);
  let obligatorio = precio * (parseFloat(tabla.rows[posicionRequerida].cells[2].innerHTML)) /100;
  let opcional = precio * (parseFloat(tabla.rows[posicionRequerida].cells[3].innerHTML)) /100;

  return precio + obligatorio + opcional;
}


function EliminarUsuario(cedula)
{

  if (confirm("Está completamente seguro?") == true) {

    $.ajax({
      type: 'POST',
      url: '../Controller/UsuariosController.php',
      data: {
        "EliminarAjax" : "EliminarAjax",
        "cedula" : cedula
      },
      success: function(resultado)
      {
        location.reload();
      }
    });
    
  }    

}