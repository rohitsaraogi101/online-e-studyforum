<%-- 
    Document   : contactdb
    Created on : 13 Nov, 2015, 9:05:47 PM
    Author     : gswain3316
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
        <%
        String name1=request.getParameter("contact");
        String email1=request.getParameter("email1");
        String msg1=request.getParameter("msg1");
        %>
        
        <%   
         
         
          
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","password");
        PreparedStatement ps = con.prepareStatement("insert into contact values(?,?,?)");
        ps.setString(1, name1);
        ps.setString(2, email1);
        ps.setString(3, msg1);
        
        int i=ps.executeUpdate();
               con.close();
        if(i>0)
                       {
           
            response.sendRedirect("contact.jsp");
             out.println("Question Posted ");
            
                       }
        %>
       
    </body>
</html>
