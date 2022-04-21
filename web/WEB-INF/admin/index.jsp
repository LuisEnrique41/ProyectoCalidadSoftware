<%-- 
    Document   : index
    Created on : 12-Febrero-2018, 10:24:59
    Author     : Christian Camilo Gámez
--%>

<%@page import="JavaBeans.Marca"%>
<%@page import="cad.MarcaCad"%>
<%@page import="cad.CategoriaCad"%>
<%@page import="JavaBeans.Categoria"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Gestión de Productos |  Crea e-Commerce JAVA EE con pagos Online Paypal y Payu</title>
    <%@include file="../../WEB-INF/css.jsp"%>
</head><!--/head-->

<body>
        <%@include file="../../WEB-INF/header.jsp"%>
	
	<section>
		<div class="container">
			<div class="row">
				
				<div class="col-sm-10 clarfix">
					
				    <h3>Gestionar Producto</h3>
                                    <form action="ControlProducto" enctype="multipart/form-data" method="post">
                                        <div class="form-one">
                                            Nombre: <br>
                                            <input type="text" name="nombre" placeholder="Nombre del producto" value="" required/>
                                            <hr>
                                            Precio: (PEN)<br>
                                            <input type="number" name="precio" value="0" min="0"/>
                                            <hr>
                                            Precio promo: (PEN)<br>
                                            <input type="number" name="precionuevo" value="0" min="0"/>
                                            <hr>
                                            Stock: <br>
                                            <input type="number" name="cantidad" value="1" min="1" width="1px"/><br>
                                            <hr>
                                            Marca: <br>
                                            <select name="marca">
                                                <option>Seleccionar marca</option>
                                                <% for(Marca m:MarcaCad.listarTodoDeMarcas()){ %>
                                                <option value="<%= m.getCodigo() %>"><%= m.getNombre() %></option>
                                                <% } %>
                                            </select>
                                            <hr>
                                            Categoría: <br>
                                            <select name="categoria">
                                                <option>Seleccionar categoría</option>
                                                <% for(Categoria c:CategoriaCad.listarTodoDeCategorias()){ %>
                                                <option value="<%= c.getCodigo() %>"><%= c.getNombre() %></option>
                                                <% } %>
                                            </select>
                                            <hr>
                                            Descripción: <br>
                                            <textarea name="Descripción" rows="4" cols="20" placeholder="Ingrese una descripción">
                                            
                                            </textarea>
                                            <hr>
                                            Nuevo?:<input type="checkbox" name="nuevo" value="ON" checked="checked"/>
                                            Recomendado?:<input type="checkbox" name="recomendado" value="OFF"/>
                                            Visible?:<input type="checkbox" name="visible" value="ON" checked="checked"/><hr>
                                            Seleccionar imagen:<input type="file" name="Imagen" required/><hr>
                                            <input class="btn btn-success" name="accion" type="submit" value="Registrar" />
                                            <input class="btn btn-default" name="accion" type="submit" value="Consultar" />
                                            <input class="btn btn-warning" name="accion" type="submit" value="Actualizar" />
                                            <input class="btn btn-danger" name="accion" type="submit" value="Borrar" />
                                        </div>
                                    </form>
                                    
					
				</div>
			</div>
		</div>
	</section>
	
                                <%@include file="../../WEB-INF/footer.jsp"%>
	
                                <%@include file="../../WEB-INF/js.jsp"%>
    
</body>
</html>

