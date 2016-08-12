<%-- 
    Document   : logindb
    Created on : 1 Jun, 2015, 11:28:16 AM
    Author     : User
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
       <%
            String mail =request.getParameter("txt");
            String password=request.getParameter("txt2");
            
            
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
        PreparedStatement ps = con.prepareStatement("select *from project_1 where email=? and password=?");
        ps.setString(1, mail);
        ps.setString(2, password);
       ResultSet rs=ps.executeQuery();
       if(rs.next())
                     {
           session.setAttribute("pf", mail);
           response.sendRedirect("question.jsp");
       }
       else
                    {out.println("email and password didnot match");
           
       }
        %>
    </body>
</html>
