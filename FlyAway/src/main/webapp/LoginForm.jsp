<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="Error.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FlyAway</title>
</head>
<body>

<div>
<jsp:include page="header.jsp"/>
   </div>  
        
           <div class="homestyle">
<!--            <center> <form class="loginformstyle" action="AdminServlet" method="post">   -->
           <center> <form class="loginformstyle" action="AdminFlightDataServlet"  >  
          
           <b>Login</b>
            
         <br><br>   
           User Name : <input class="textboxstyle" type="text" name="username">  <br>
          Password : <input class="textboxstyle" type="password" name="password"> <br>
          <input class="buttonstyle" type="submit" value="Signin"> 
<!--            or <input type="button"   value="Create Account"> -->
           </form>
           
           
           </center>
       
   </div>
           
           
          <div class="footerclass">
         <jsp:include page="footer.jsp"/>
           </div>

</body>
<style>
.textboxstyle {
  border-radius:5px;
   height: 20px;
   
   
}
.footerclass
{
margin: auto;
   padding-left:500px;
   
   
}
.homestyle
{
background-color:white;
 width: 1350px;
 height: 520px;
 color:black;
 
}
.loginformstyle
{
background-color:yellow;
  max-width: 500px;
  margin: 180px ;
    padding: 10px;
 border:  solid;
 border-color: green;
}


.buttonstyle
{

background-color: green;
color: white;
padding:20px;
margin: 5px;
 font-size: large;
 font-weight: bold;
border-radius: 12px;
 
 cursor: pointer;
}

.buttonstyle:hover {
  padding: 0;
  margin: 0;
  border: 0;
  font-size: 14px;
  color: #f00;
  height: 50px;
  width: 134px;
  text-decoration: none;
  font-variant: small-caps;
  background: White;
}

</style>
</html>