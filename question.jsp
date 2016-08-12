<%-- 
    Document   : question
    Created on : 2 Jun, 2015, 12:06:23 AM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Question</title>
    <script type="text/javascript">
            function fun()
            {
                if(document.getElementById("d1").style.display == "none")
                {
                    document.getElementById("d1").style.display = "block";
                   document.getElementById("d2").style.display="none";
                }
            }
            function fun1()
            {
                if(document.getElementById("d2").style.display=="none")
                {
                    document.getElementById("d2").style.display="block";
                  document.getElementById("d1").style.display = "none"; 
                }
            }
            
        </script>
        <script type="text/javascript">
                  function valid(){
                var subject= document.getElementById("q1").value;
                 var Question= document.getElementById("q2").value;
               
           if (subject == ""||subject==null)
                {
                    alert("Select Subject");
                    return false;
                    }
                                    
                    
              if (Question == ""||Question==null)
                {
                    alert("Enter your Question");
                    return false;
                }
            
              
            }
             function valid1(){
                var subject= document.getElementById("q4").value;
                if (subject == ""|| subject==null)
                {
                    alert("Select Subject");
                    return false;
                }
             
        
            }
            </script>
    </head>
   <body style="background-color: #cccccc">
        <div align="center" style="border-radius:5px">
            <fieldset  style=" margin-top:100px;height: 950px;width: 950px;background-color:#ccccff">
                <legend align="center">Question </legend>

            <input type="button" align="right" value="Post Question" onclick="return fun();"style=" -moz-border-radius: 10px;-webkit-border-radius: 10px;border-radius: 10px;margin: 10px;width: 200px;height: 60px;background-color:royalblue">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <input type="button" align="left" value="View Question"  onclick="return fun1();" style=" -moz-border-radius: 10px;-webkit-border-radius: 10px;border-radius: 10px;margin: 10px;width: 200px;height: 60px;background-color:royalblue">
        <form action="post.jsp" method="post">
    <center>
       <table align="center" id="d1" heigth="800px" width="500px" length="800px"style="display: none" border="2">
            <tr>
                <td>
                    Subject Question:
                    <select name="menu" width="50px" id="q1">
                        <option value=""></option>
                        <option value="Java">Java</option>
                        <option value="C++">C++</option>
                        <option value="C">C</option>
                        <option value="C#">C#</option>
                        <option value="CSS">CSS</option>
                        <option value="HTML">HTML</option>
                        <option value="SQL">SQL</option>
                        <option value="PHP">PHP</option>
                    </select>
                </td>
            </tr>
            <tr heigth="800px" width="500px" length="800px">
                <td heigth="800px" width="500px" length="800px" >Question :
                    <input type="text" name="text" placeholder="Enter your Question" id="q2" width="400px" height="400px"  >
                </td>
            </tr>
            <tr>
                <td>
                    <input type="submit" value="SUBMIT" onclick="return valid();">
                </td>
            </tr>
        </table>
    </center>
        </form>
    
    <center>
        <form action="view.jsp" method="post" >
        <table align="center" id="d2"  heigth="800px" width="500px" length="800px"style="display: none" border="2">
            <tr>
               
                <td>
                    <select name="s1" id="q4">
                        <option >select</option>
                         <option value=""></option>
                        <option value="Java">Java</option>
                        <option value="C++">C++</option>
                        <option value="C">C</option>
                        <option value="C#">C#</option>
                        <option value="CSS">CSS</option>
                        <option value="HTML">HTML</option>
                        <option value="SQL">SQL</option>
                        <option value="PHP">PHP</option>
                    </select>
                </td>
            </tr>
            <tr>
               
                <td>
                    <input type="submit" value="SUBMIT" onclick="return valid1();">
                </td>
            </tr>
                </table>
              </form>
            </center>
      </fieldset>
   </div>       
 </body>
</html>