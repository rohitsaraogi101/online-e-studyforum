<%-- 
    Document   : database1
    Created on : 1 Jun, 2015, 11:31:58 AM
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
        <%
        String name=request.getParameter("t1");
        String email=request.getParameter("t2");
        String password=request.getParameter("t3");
        String repassword=request.getParameter("t4");
        String gender=request.getParameter("t5");
        String nationality=request.getParameter("t6");
        String comment=request.getParameter("t8");   
        %>
        
        <%
           String select[]=request.getParameterValues("a");
         String sum="";
         if(select != null && select.length != 0)
                         {
             for(int i=0;i<select.length;i++)
                                 {
                 sum=sum+""+select[i]+" "+",";
             }
         } 
       
      
               
             
             
             %>
  
              
      
        
      <%   
         
         
          
            Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
        PreparedStatement ps = con.prepareStatement("insert into project_1 values(?,?,?,?,?,?,?,?)");
        ps.setString(1, name);
        ps.setString(2, email);
        ps.setString(3, password);
        ps.setString(4, repassword);
        ps.setString(5, gender);
        ps.setString(6, nationality);
        ps.setString(7, sum);
        ps.setString(8, comment);
        
        
        int i = ps.executeUpdate();
       
        if(i>0)
                       {
            out.println("Sucessfuly registered ");
            response.sendRedirect("login.jsp");
                
                       }
     
         
        
        
        %>
    </body>
</html>
