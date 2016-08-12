<%-- 
    Document   : login
    Created on : 1 Jun, 2015, 10:40:31 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login</title>
    </head>
    <body>
         <form method="post"action="logindb.jsp" >
             <div align="center" style="border-radius:5px">
                 <fieldset  style="padding-top:5px;padding-bottom:5px;height:700px;background-color: #cccccc">
                 
                     <table style=" margin-top:250px;float: center;height:25%;length:40%;width:30%;align:center;background-color:#999999;background-position: center;table-position:center">
                <tbody align="center">
                    <tr>
                    <td> login id: </td>
                    <td><input type="email" name="txt" placeholder="Enter login id" size="30"style="alignment-adjust: center" </td>
                </tr>
                <tr>
                    <td> password </td>
                    <td><input type="password" name="txt2" placeholder="Enter password" size="20"</td>
                </tr>
                <tr>
                <td><input type="submit"  value="Submit"></td>
                <td>If not Registered then  <a href="registration1.jsp"> click here </a></td>
                </tr>  
            </tbody>
                 
          </table>
        </fieldset>
      </div>
    </form>
  </body>
</html>
