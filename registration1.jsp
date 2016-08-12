<html>
    <head>
        <title>Registration</title>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <script type="text/javascript" style="text-spacing: no-compress;">
            function validation(){
                var name=document.getElementById("s1").value;
                var email=document.getElementById("s2").value;
                var atr=email.indexOf("@");
                var dot=email.lastIndexOf(".");
                var password=document.getElementById("s3").value;
                var repass=document.getElementById("s4").value;
                var gender=document.getElementById("s5").checked;
                var nation = document.getElementById("s6").value;
                var hobby=document.getElementById("s7").checked;
                var comment=document.getElementById("s8").value;
                var code1=document.getElementById("ff").value;
                 var code1=document.getElementById("aa").value;
                if(name==null&&name=="")
                    {
                        alert("Enter name:");
                        return false;
                    }
                if(atr<1||dot<atr+2||dot+2>email.length)
                        {
                            alert("Enter valid Email");
                            return false;
                        }
                if(password.length<8)
                 
                 {
                     alert("Enter 8 digit password");
                     false;
                 }
              else if(password!=repass)
                 {  alert("Re enter password should be match");  
                  return false;
                }
            
            
           if(gender==false)
                { alert("Check gender");
                  return false;
            }
            if (nation == "")
                {
                    alert("Select nationality");
                    return true;
                }
            if(hobby==false)
                    {
                        alert("Select hobbies");
                        return false;
                    }
               if(comment==""&&comment==null){
                        
                        alert("Write few comment");
                        return false;
                    }
                    if(code1==code2)
                        {
                            return true;
                        }
                        else
                            {
                                alert("captcha mismatched");
                                return false;
                            }
            }
            
      
              function makeid()
{
 
    var text = "";
    var possible = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789";

    for( var i=0; i < 8; i++ )
        text += possible.charAt(Math.floor(Math.random() * possible.length));
   var gg=document.getElementById("ff").value = text;  
    var ss=document.getElementById("aa").value;
    if(ss==gg)
        return true;
    else
        return false; 
    
}
        </script>
    </head>
    <body style="background-color: #cccccc" onload="makeid()">
        <div align="center" style="border-radius:5px">
            <fieldset  style=" margin-top:100px;height: 450px;width: 450px;background-color:#ccccff">
                <legend align="center">Community Forum</legend>
                
                
                <form method="post" action="database1.jsp" >
                    <table>
                        <tr>
                            <td>Name:</td>
                            <td><input type="text" name="t1" id="s1" size="35"></td>
                        </tr>
                        <tr>
                            <td>Email</td>
                            <td><input type="email" name="t2" id="s2" size="35"></td>
                           
                        </tr>
                        <tr>
                            <td>Password:</td>
                            <td><input type="password" name="t3" id="s3" size="35"></td>
                        </tr>
                        <tr>
                            <td>Re-password:</td>
                            <td><input type="password" name="t4" id="s4" size="35"></td>
                        </tr>
                        <tr>
                            <td>Gender</td>
                            <td>Male<input type="radio" name="t5" id="s5" value="M">Female<input type="radio" name="t5" id="s5" value="F"</td>
                        </tr>
                        <tr>
                            <td>
                                Nationality:
                            </td>
                            <td><select name="t6" id="s6">
                                    <option value="">Select</option>
                                    <option value="Indian">Indian</option>
                                    <option value="UK">UK</option>
                                    <option value="Pakistan">Pakistan</option>
                                    <option value="Russia">Russia</option>
                                    <option value="USA">USA</option>
                                    <option value="AUSTRALIA">AUSTRALIA</option>
                                </select></td>
                        </tr>
                        <tr>
                            <td>Hobbies:</td><td><input type="checkbox" name="a" id="s7" value="cricket">Cricket</td>
                
                            <td><input type="checkbox" name="a" id="s7" value="football">Football<td>  
                            <td><input type="checkbox" name="a" id="s7" value="swiming">Swimming</td>
                        </tr>
                        <tr>
                            <td>Comment:</td>
                            <td><textarea name="t8" rows="4" cols="28" id="s8" wrap="virtual"></textarea></td>
                        </tr>
                         <tr>
                    <td style="align:center;color: #660066"> CAPTCHA </td>
                    <td><input type="text" name="tx" id="ff" style="text-decoration:inherit;text-emphasis-color: red;text-decoration:line-through;background-image: url(1.jpg);align:center;width:80px;height:40px;length:40px;">
                                 </td><br/>
                
                <td><input type="text" name="captcha" id="aa" style="width: 100px;length:40px;height:40px;"</td>
                </tr>  
                <tr>
                    <td><input type="submit" value="Signup" onclick ="return validation();return makeid()"></td> &nbsp;
                    <td> <a href="login.jsp"><input type="button" value="Login"></a></td>&nbsp;
                    <td> <input type="reset" value="Reset"></td> &nbsp;        
                    <td> <input type="button"  value="Refresh"onclick="makeid()"> </td>
                </tr>
                    </table>
                </form>
            </fieldset>
        </div>
    </body>
</html>