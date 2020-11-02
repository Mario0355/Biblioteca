<%@page import="modelo.productos"%>
<%@page import="modeloDAO.BibliotecaDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/foundation/6.4.3/css/foundation.min.css"/>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.4.1/css/all.css" integrity="sha384-5sAR7xN1Nv6T6+dT2mhtzEpVJvfS3NScPQTrOxhwjIuvcA67KV2R5Jz6kr4abQsz" crossorigin="anonymous">
<link rel="stylesheet" href="css/Biblioteca.css"/>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Inventario</title>
    </head>
    <%
        BibliotecaDAO ProDao = new BibliotecaDAO();
        int codigo = Integer.parseInt((String)request.getAttribute("codigoProducto"));
        productos producto = (productos)ProDao.listaProductos(codigo);
    %>
    <body>
        <h1 class="text-center">Modificar el producto</h1>
         <div class="grid-container">
            <div class="grid-x grid-margin-x align-center-middle">
                <div class="cell small-10">
                    <fieldset class="fieldset">
                        <form action="servlet">
                            <div class="grid-container">
                                <div class="grid-x grid-margin-x align-center-middle text-center">
                                    <div class="cell large-4 small-6">
                                        <i class="font fas a fa-pencil-alt fa-3x"></i>
                                        <input type="text" name="nombre" value="<%= producto.getNombre() %>" placeholder="Nombre Producto">
                                    </div>
                                    <div class="cell large-4 small-6">
                                        <i class="font fas fa-pencil-alt fa-3x"></i>
                                        <input type="number" name="cantidad" value="<%= producto.getCantidad()%>" placeholder="Cantidad">
                                    </div>
                                    <div class="cell large-4 small-6">
                                        <i class="font fas fa-dollar-sign fa-3x"></i>
                                        <input type="number" name="precio" value="<%= producto.getPrecio() %>" placeholder="Precio">
                                    </div>
                                    <div class="cell large-4 small-6">
                                        <i class="font fas fa-pencil-alt fa-3x"></i>
                                        <input type="text" name="descripcion" value="<%= producto.getDescripcionProducto() %>" placeholder="Descripción">
                                    </div>
                                    <div class="cell large-4 small-6">
                                        <i class="font fas fa-clipboard-list fa-3x"></i>
                                        <select name="categoria">
                                            <option value="categoria" select disabled>Categoria</option>
                                            <option value="<%= producto.getCategoria() %>"><%= producto.getCategoria() %></option>
                                            <option value="Accesorios">Accesorios</option>
                                            <option value="Baños">Baños</option>
                                            <option value="Herramientas">Herramientas</option>
                                            <option value="Herramientas para pintar">Herramientas para pintar</option>
                                            <option value="Iluminacion">Iluminación</option>
                                            <option value="Limpieza">Limpieza</option>
                                            <option value="Lonas">Lonas</option>
                                            <option value="Material de Construcción">Material de Construcción</option>
                                            <option value="Material Eléctrico">Material Eléctrico</option>
                                            <option value="Plomería">Plomería</option>
                                            <option value="Tlapalería">Tlapalería</option>
                                        </select>
                                    </div>
                                    <div class="cell large-4 small-6">
                                        <i class="font fas fa-boxes fa-3x"></i>
                                        <select name="ubicacion">
                                            <option value="ubicacion" disabled>Ubicación</option>
                                            <option value="<%= producto.getUbicacion()%>"><%= producto.getUbicacion()%></option>
                                            <option value="Ferreteria Centro">Ferretería Centro</option>
                                            <option value="Ferreteria Manzana 1ra">Ferretería Manzana 1ra</option>
                                        </select>
                                    </div>
                                    <div class="cell large-4 small-6">
                                        <input type="hidden" name="codigoPro" value="<%= producto.getCodigo()%>">
                                        <input class="button expanded success" type="submit" name="accion" value="modificar">
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
