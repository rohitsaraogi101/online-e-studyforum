         <%-- 
    Document   : contact
    Created on : 13 Nov, 2015, 8:50:35 PM
    Author     : gswain3316
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <style type="text/css">
               form
{
    width: 62%;
    padding: 2% 4%;
    font-family: "Tw Cen MT";
    background: rgba(255,255,255,0.2);
    position: absolute;
    left: 15%;

    /*align: center;*/
    height: 680px;
    /*margin: auto;*/
    color:rgba(0,30,60,1);
    font-size: 24px; 
    padding: 2% 4%;
    font-family: "Tw Cen MT";
    background-color: rgba(255,255,255,0.2);
    box-shadow: 0 0 1px rgba(0,0,0,.5);
    overflow: hidden;
}

        </style>

        <script type="text/javascript">
                function validity(){
                var email1= document.getElementById("ver2").value;
                 var msg2= document.getElementById("ver3").value;
                 var atr=email1.indexOf("@");
                var dot=email1.lastIndexOf(".");
        
        if(atr<1||dot<atr+2||dot+2>email1.length)
                        {
                            alert("Enter valid Email");
                            return false;
                        }
        
           if (email1=="")
                {
                    alert("Enter Email");
                    return false;
                    }
                                    
                    
              if (msg2=="")
                {
                    alert("Enter your Message");
                    return false;
                }
            
              
            }
    </script>
       
    </head>
    <body>
        <div align="left" style="border-radius:5px">
            <form method="post" action="contactdb.jsp" >
            <h1>
                Contact-Us
            </h1>
                </br>
                Your Name:
                </br>
            <input name="contact" class="cont" id="ver1" type="text" size="30" value="">
            </br>
            Your Email:
            <span style="color: red; font-weight: bolder;">*</span>
            </br>
            <input name="email1" class="cont" id="ver2" type="text" size="30" value="">
            </br>
            Your Message:
            <span style="color: red; font-weight: bolder;">*</span>
            </br>
            <textarea name="msg1" class="contact-form-email-message" id="ver3" rows="5" cols="25"></textarea>
            </br>
            </br>
            <input type="submit" value="SUBMIT" onclick="return validity();">
            </br>
            
            Admin:</br>
            Email-admin@forgetbooks.in
            </br>
            
            Mob: 8908817440
            </br>
            </br>
            
        Thank You :)
            
            
            </form>
        </div>
        
    </body>
</html>
