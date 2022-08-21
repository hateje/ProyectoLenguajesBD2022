<?php include_once "../Controller/CodigosController.php"; ?>

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
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

</head>

<body>

    <div class="d-flex" id="wrapper">
        <div id="page-content-wrapper">

            <div class="container-fluid" style="margin-top:100px;">

                <div class="row">
                    <div class="col-12">

                        <table id="tCodigos" class="table table-hover">
                            <thead>
                                <tr>
                                    <th>Código</th>
                                    <th>Precio</th>
                                    <th>% Obligatorio</th>
                                    <th>% Opcional</th>
                                    <th>Acción</th>
                                </tr>
                            </thead>
                            <tbody>
                                <?php ConsultarCodigos(); ?>
                            </tbody>
                        </table>
                    </div>
                </div>

                <div class="row">
                    <div class="col-12">
                        
                    <input type="button" class="btn btn-primary" Value="Contar % >= a 5" 
                        onclick="ContarPorcentajesMayores(true);">

                        <input type="button" class="btn btn-success" Value="Contar % < a 5"
                        onclick="ContarPorcentajesMayores(false);">

                        <input type="button" class="btn btn-danger" Value="Sumar Precios Totales"
                        onclick="SumarTotal();">
                    </div>
                </div>

            </div>

        </div>
    </div>

    <script src="../vendor/jquery/jquery.min.js"></script>
    <script src="../vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
    <script src="../js/simple-sidebar.js"></script>

</body>

</html>