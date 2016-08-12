<%-- 
    Document   : view
    Created on : 2 Jun, 2015, 12:23:53 AM
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
        <% String subject=request.getParameter("s1");
       Class.forName("oracle.jdbc.driver.OracleDriver");
          Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","system");
        PreparedStatement ps = con.prepareStatement("select *from post1 where subject=?");
          ps.setString(1, subject );
          ResultSet rs = ps.executeQuery();
       
         %>
         <form method="post" action="post.jsp">
   <table>
             <tr>
                 <td>Subject</td>
                 <td>Question</td>
                 <td>Mail</td>
             </tr>
         
         <%
          while(rs.next()) {
              
              
            %>  
    <tr>
        <td><input type="text" name="qw" value="<%=rs.getString(1)%>"</td>
        <td><input type="text" name="er" value="<%=rs.getString(2)%>"</td>
         <td><input type="text" name="ty" value="<%=rs.getString(3)%>"</td>
        <td> <a href="answer.jsp?a=<%=rs.getString(1)%>&b=<%=rs.getString(2)%>&c=<%=rs.getString(3)%>"> Answer-> </a> </td>
    </tr>
    
      <%    }     %>
    
         </table>
         </form>
    </body>
</html>
