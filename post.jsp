<%-- 
    Document   : post
    Created on : 2 Jun, 2015, 12:23:39 AM
    Author     : User
--%>

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
       <%   String subject=request.getParameter("menu");
            String question=request.getParameter("text");
            String mail=(String)session.getAttribute("pf");
          
             Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
        PreparedStatement ps = con.prepareStatement("insert into post1 values(?,?,?)");
        ps.setString(1, subject);
        ps.setString(2, question);
        ps.setString(3, mail);
         int i = ps.executeUpdate();
               con.close();
        if(i>0)
                       {
           
            response.sendRedirect("question.jsp");
             out.println("Question Posted ");
            
                       }
            
      %>
    </body>
</html>
