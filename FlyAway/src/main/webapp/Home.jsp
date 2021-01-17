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
        
           <div  >
           
<!--            <img class="homestyle" alt="homeimg" src="https://www.bhavyabharath.com/wp-content/uploads/2020/04/unnamed.jpg"> -->
           <img class="homestyle" alt="homeimg" src="https://miro.medium.com/max/600/1*XV8pv8U87VAOQa542oPJaw.png">
           </div>
           
           
          <div class="footerclass"  >
         <jsp:include page="footer.jsp"/>
           </div>
</body>
<style>
.homestyle
{
 width: 1350px;
 height: 520px;

}
.footerclass
{
position: fixed;
  left: 0;
  bottom: 0;
  width: 100%;
  background-color: black;
  color: white;
  text-align: center;
   
   
}

</style>
</html>