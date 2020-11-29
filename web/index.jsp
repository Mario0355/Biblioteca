<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/foundation/6.4.4-rc1/css/foundation.min.css"/>
<link rel="stylesheet" href="css/Biblioteca.css"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Biblioteca</title>
    </head>
    <body>
        <div class="primary">
            <h1 class="text-center">Biblioteca Digital</h1>
        </div>
            <div class="grid-x text-center">
                <div class="cell small-6">
                    <div class="thumbnail-border">
                      <a href="servlet?accion=productos">
                        <img src="imagenes/libros.png">
                      </a>
                    </div>
                    <a href="servlet?accion=productos" class="button secondary">Inventario</a>
                </div>
                <div class="cell small-6">
                    <div class="thumbnail-border">
                        <a href="servlet?accion=clientes">
                            <img src="imagenes/lectura.png">
                        </a>
                    </div>
                    <a href="servlet?accion=clientes" class="button dorado">Clientes</a>
                </div>
            </div>
    </body>
</html>
