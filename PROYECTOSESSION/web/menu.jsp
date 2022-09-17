<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ include file="finalizarsession.jsp" %>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body bgcolor="green">
        <b>PROCESO DE IDENTIFICACI&Oacute;N</b><p>
            <b>Men&uacute; de administraci&oacute;n</b><br>
            <b>Usuario activo:</b> <%= objusuario.getUsuario()%></p>
        
    <li> <a href="mantenimiento.jsp">Crear nuevo usuario</a></li>
    <li> <a href="borrar.jsp">Borrar un usuario</a></li>
    <li> <a href="cambiar.jsp">Cambiar usuario</a></li>
    <p>
    <li> <a href="<%=request.getContextPath()%>/cerrarSesionServlet">Cerrar sesi&oacute;n</a></li>
        
    </p>    
            
        
    </body>
</html>
