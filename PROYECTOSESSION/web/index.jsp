<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page session="true" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script>
            function Ingreso() {
                document.form.action = "<c:url value="/LogicaServlet"/>";
                document.form.method = "GET";
                document.form.submit();
            }
        </script>
    </head>
    <body bgcolor="green">
       
        <c:if test="${empty requestScope['error']!=null}">
          
           <c:out value="${requestScope.error}" />
        </c:if>
        
    <center>
        <br><br><br>
        <form name="form">
        
            Ingrese Usuario : <input type="text" name="usuario"> <br>
            Ingrese   Clave : <input type="password" name="clave"> <br>
            <input type="button" value="entrar" onclick="Ingreso()"> <br>
        
        </form> 
    </center>
    </body>
</html>
