<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%  
            String mailid=request.getParameter("txt1");
          Class.forName("oracle.jdbc.driver.OracleDriver");
            Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","password");
        PreparedStatement ps = con.prepareStatement("select *from login where email=?");
        ps.setString(1, mailid );
        
         ResultSet rs = ps.executeQuery();
        %>
        
        <form action="forgot2.jsp" method="post" >
         <table>
             <tr>
                 <td>Security Question</td>
                 <td>Security Answer</td>
               
             </tr>
         
         <%
          while(rs.next()) {
              
              
            %>  
    <tr>
         <td><input type="textarea" name="fk" style="height: 17px;width: 500px;" value="<%=rs.getString(8)%>"</td>
         <td><input type="text" name="ty" id="a1"</td>
         <td><input type="hidden" name="txt1" value="<%=rs.getString(3)%>"</td>
         <td><input type="hidden" name="txt2" value="<%=rs.getString(9)%>"</td>
         <td><input type="submit" value="Submit"></td>
    </tr>
    
      <%    }    %>
    
         </table>
        </form>
            
        <h1>site under maintenance</h1>
    </body>
</html>
