<%-- 
    Document   : forum
    Created on : 13 Nov, 2015, 10:55:33 PM
    Author     : gswain3316
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
        
        if (session.getAttribute("pf")==null){
        response.sendRedirect("login.jsp");
               }
        else
        {
            response.sendRedirect("question.jsp");
        }

        
        %>
        <h1>Hello World!</h1>
    </body>
</html>
