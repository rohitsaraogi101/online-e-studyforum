<%-- 
    Document   : answerdb
    Created on : 4 Jun, 2015, 11:40:21 AM
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
        
         <%   String subject=request.getParameter("txt1");
              String question=request.getParameter("txt2");
              String mail=request.getParameter("txt3");
              String answer=request.getParameter("txt");
          
             Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
        PreparedStatement ps = con.prepareStatement("insert into answer values(?,?,?,?)");
        ps.setString(1, subject);
        ps.setString(2, question);
        ps.setString(3, mail);
        ps.setString(4, answer);
       int i = ps.executeUpdate();
               con.close();
        if(i>0)
                       {
           
            response.sendRedirect("answer.jsp");
             out.println("Answer Posted ");
            
                       }
            
      %>
    </body>
</html>
