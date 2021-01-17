<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="Error.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FlyAway</title>
</head>
<body class="headerdiv">
 

 
 <div>
 <b  >FlyAway Ticket Booking </b>
 
 </div>
 <div>
<form action="Home.jsp">

<input type="submit" class="buttonstyle"  value="Home"> 

</form>
</div>

<div> 
 

<form action="flightDataServlet">

<input type="submit" class="buttonstyle" value="Search Flight"> 
 
</form>
</div>
 <div> 
<form action="LoginForm.jsp" >
 <input type="submit" class="buttonstyle" value="Admin Login"> 
</form>
</div>
 
 
 

</body>


<style>
div{

float:left;
}
.headerdiv
{
 
background-color: black;
color: white;
font-family: cursive;
font-size: x-large;

}

.buttonstyle
{

background-color: Cyan;
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