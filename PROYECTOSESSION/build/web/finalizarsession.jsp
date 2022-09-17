
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page session="true" %>
<%@page import="Bean.UsuarioBen"%>
<%!
   UsuarioBen objusuario=null;
   
%>
<%
HttpSession sessionOk = request.getSession();
if(sessionOk.getAttribute("datos") == null){
    request.setAttribute("error", "Es obligatorio identificarse");
    response.sendRedirect("index.jsp");

%>
<%
    }
else{
objusuario = (UsuarioBen)sessionOk.getAttribute("datos");
}
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
    </body>
</html>
