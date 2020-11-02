<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/foundation/6.4.3/css/foundation.min.css"/>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
<link rel="stylesheet" href="css/ferreteria.css"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inventario</title>
    </head>
    <body>
        <h1 class="text-center">Agregar Producto</h1>
        <div class="grid-container">
            <div class="grid-x grid-margin-x align-center-middle">
                <div class="cell small-10">
                    <fieldset class="fieldset">
                        <form action="servlet">
                            <div class="grid-container">
                                <div class="grid-x grid-margin-x align-center-middle text-center">
                                    <div class="cell large-4 small-6">
                                        <i class="font fas a fa-pencil-alt fa-3x"></i>
                                        <input type="text" placeholder="Nombre Producto" name="nombre">
                                    </div>
                                    <div class="cell large-4 small-6">
                                        <i class="font fas fa-pencil-alt fa-3x"></i>
                                        <input type="number" placeholder="Cantidad" name="cantidad">
                                    </div>
                                    <div class="cell large-4 small-6">
                                        <i class="font fas fa-dollar-sign fa-3x"></i>
                                        <input type="number" placeholder="Precio" name="precio">
                                    </div>
                                    <div class="cell large-6 small-6">
                                        <i class="font fas fa-pencil-alt fa-3x"></i>
                                        <input type="text" placeholder="Descripción" name="descripcion">
                                    </div>
                                    <div class="cell large-6 small-6">
                                        <i class="font fas fa-clipboard-list fa-3x"></i>
                                        <select name="categoria">
                                            <option value="categoria" select disabled>Categoria</option>
                                            <option value="Autobiograficos">Autobiográficos</option>
                                            <option value="Autoayuda">Autoayuda</option>
                                            <option value="Aventuras">Aventuras</option>
                                            <option value="cientificos">Científicos</option>
                                            <option value="Cuentos">Cuentos</option>
                                            <option value="Comics">Cómics</option>
                                            <option value="Deporte">Deporte</option>
                                            <option value="Comics">Cómics</option>
                                            <option value="Humor">Humor</option>
                                            <option value="Guerra_Mundial">Guerra Mundial</option>
                                            <option value="Marketing">Marketing</option>
                                            <option value="Salud">Salud</option>
                                            <option value="Sociedad">Sociedad</option>
                                            <option value="Suspenso">Suspenso</option>
                                            <option value="Videojuegos">Videojuegos</option>
                                            <option value="Microrrelatos">Microrrelatos</option>
                                            <option value="Culto">Novela de culto</option>
                                            <option value="no_ficcion">Novela de no ficción</option>
                                            <option value="Historica">Novela Histórica</option>
                                            <option value="negra">Novela negra</option>
                                            <option value="novelas">Novelas</option>
                                            <option value="Románticas">Novelas Románticas</option>
                                        </select>
                                    </div>
                                    <div class="cell large-4 small-6">
                                        <input class="button expanded success" type="submit" name="accion" value="Agregar">
                                    </div>
                                </div>
                            </div>
                        </form>
                    <a href="servlet?accion=productos" class="button marron">
                       Regresar <i class="fas fa-arrow-left"></i>
                    </a>
                    </fieldset>
                </div>
            </div>
        </div>
    </body>
</html>
