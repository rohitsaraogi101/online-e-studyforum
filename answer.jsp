<%-- 
    Document   : answer
    Created on : 3 Jun, 2015, 11:45:15 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%  String subject=request.getParameter("a");
            String question=request.getParameter("b");
            String mail=request.getParameter("c");
        
        
        %>
        <form method="post" action="answerdb.jsp">
        <table style="border: 2">
            <tr>
                <td>
                    Answer
                </td>
            </tr>
            <tr>
                <td>
            <textarea name="txt" style="height: 200px;width: 500px;"></textarea>
                </td>
            </tr>
            <tr>
                <td><input type="hidden" name="txt1" value="<%=subject%>"</td>
                <td><input type="hidden" name="txt2" value="<%=question%>"</td>
                <td><input type="hidden" name="txt3" value="<%=mail%>"</td>
            </tr>
            <tr>
                <td>
                    <input type="submit" value="SUBMIT your Answer">
                </td>
            </tr>
        </table> 
        </form>
                <%
                
                
                
                
                
                %>
    </body>
</html>
