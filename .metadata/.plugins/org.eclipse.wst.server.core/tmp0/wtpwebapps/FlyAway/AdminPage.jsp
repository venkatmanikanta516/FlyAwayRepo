<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="model.flightDataModel" %>
    <%@ page import ="java.util.ArrayList"%>
<%@ page import ="java.util.List"%>

<%@ taglib  uri ="http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FlyAway</title>
<!-- <link href="css/adminpageCss.css" rel="stylesheet" type="text/css"> -->
<!-- <script type="text/javascript" src="js/jsfile.js"></script> -->
</head>
<body class="headerdiv">
 
     
 <b  >FlyWay Ticket Booking </b>
 
 
    <input class="buttonstyle" type="button" value="Home" onclick="homefunction()" >
    
     
    <input class="buttonstyle" type="button" value="ChangePassword"  onclick="changePasswordfunction()">
   
    <input class="buttonstyle" type="button" value="AddFlight"  onclick="addFlightfunction()" >
     
     
    <input class="buttonstyle" type="button" value="Logout" onclick="logOutfunction()" >
    
     
     <br><br>
     <div id="homeimgDiv"   >
     
     
    
          
          
          <table class="scroll"  >
  <tr class="tblhead" >
    <th>Flight No.</th>
    <th>Flight Name</th>
    <th>From City</th>
    <th>To City</th>
    <th>Date</th>
    <th>Time</th>
    <th>Airport Name</th>
    <th>Ticket Price</th>
    <th>Description</th>
    <th>Edit</th>
    <th>Delete</th>
  </tr>
   
    <tbody>
        <c:forEach items="${completelstflightData}" var="fss">
        
       
         <tr>
        	   
        	    <td><c:out value="${fss.flightno}" /></td>
        	    <td><c:out value="${fss.flightname}"/></td>
        	    <td><c:out value="${fss.fromcity}"/></td>
        	    <td><c:out value="${fss.tocity}"/></td>
        	    <td><c:out value="${fss.date}"/></td>
        	    <td><c:out value="${fss.time}"/></td>
        	    <td><c:out value="${fss.airportname}"/></td>
        	    <td><c:out value="${fss.ticketprice}"/></td>
        	    <td><c:out value="${fss.description}"/></td>
        	   
 
        	     
<%--         	    <td><a href="book?flightno=<c:out value='${fss.flightno}' />">Book</a> --%>
        	    <td><a href="Edit?flightno=<c:out value='${fss.flightno}' />">Edit</a>
        	    <td><a href="delete?flightno=<c:out value='${fss.flightno}' />">Delete</a>
        	  </tr>
          
        
        </c:forEach>
        </tbody>
       
  
</table>
          
          
     
     
     
           
<!--            <img id="homeimgDiv" alt="homeimg" src="https://www.bhavyabharath.com/wp-content/uploads/2020/04/unnamed.jpg"> -->
           </div>
   
   
    <div>
    
    <div id="changePasswordDiv">
    
       
      <form name="changeform" action="changePasswordServlet" method="post" onsubmit="return changePasswordvalidateForm()">
       Current Password : <input class="textboxstyle" type="text" name="currentpassword" ><br><br>
      New Password : <input  class="textboxstyle" type="text" name="newpassword" ><br><br>
      Confirm Password : <input  class="textboxstyle" type="text" name="confirmpassword" ><br><br>
      <input type="submit" class="buttonstyle" value="ChangePassword">
      </form>
    </div>
        
  
   
      
       
     <div id="addFlightDiv">
    
     
      <form name="addFlightform" class="addflightformstyle" action="addFlightServlet" method="post" onsubmit="return addFlightvalidateForm()">
       Flight No : <input  class="textboxstyle" type="text" name="flightno" ><br><br>
      Flight Name : <input  class="textboxstyle" type="text" name="flightname" ><br><br>
      From City : <input  class="textboxstyle" type="text" name="fromcity" ><br><br>
      To City : <input class="textboxstyle" type="text" name="tocity" ><br><br>
      Date : <input class="textboxstyle" type="text" name="date" ><br><br>
      Time : <input class="textboxstyle" type="text" name="time" ><br><br>
      Airport Name : <input class="textboxstyle" type="text" name="airportname" ><br><br>
      Ticket Price : <input class="textboxstyle" type="text" name="ticketprice" ><br><br>
      Description : <input class="textboxstyle" type="text" name="description" ><br><br>
      <input type="submit" class="buttonstyle"  value="Add New Flight">
      </form>
      
    </div>
     
<!-- <h1>Iam A Admin </h1> -->
</body>
<script type="text/javascript">


function changePasswordfunction()
{
	document.getElementById("addFlightDiv").style.display="none";
	document.getElementById("homeimgDiv").style.display="none";
 document.getElementById("changePasswordDiv").style.display="inline";
 
 }


	function changePasswordvalidateForm() {
	  var currentpassword = document.forms["changeform"]["currentpassword"].value;
	  var newpassword = document.forms["changeform"]["newpassword"].value;
	  var confirmpassword = document.forms["changeform"]["confirmpassword"].value;
	  
	  if (currentpassword == "") {
	    alert("currentpassword must be filled out");
	    return false;
	  }
	  if (newpassword == "") {
		    alert("newpassword must be filled out");
		    return false;
		  }
	  if (confirmpassword == "") {
		    alert("confirmpassword must be filled out");
		    return false;
		  }
	  
	  
	}

 function addFlightfunction()
{
	document.getElementById("changePasswordDiv").style.display="none";
	document.getElementById("homeimgDiv").style.display="none";
	document.getElementById("addFlightDiv").style.display="inline"; 
  

 }

 function addFlightvalidateForm() {
	  var flightno = document.forms["addFlightform"]["flightno"].value;
	  var flightname = document.forms["addFlightform"]["flightname"].value;
	  var fromcity = document.forms["addFlightform"]["fromcity"].value;
	  var tocity = document.forms["addFlightform"]["tocity"].value;
	  var date = document.forms["addFlightform"]["date"].value;
	  var time = document.forms["addFlightform"]["time"].value;
	  var airportname = document.forms["addFlightform"]["airportname"].value;
	  var ticketprice = document.forms["addFlightform"]["ticketprice"].value;
	  var description = document.forms["addFlightform"]["description"].value;
	   
	  if (flightno == "") {
	    alert("flightno must be filled out");
	    return false;
	  }
	  if (flightname == "") {
		    alert("flightname must be filled out");
		    return false;
		  }
	  if (fromcity == "") {
		    alert("fromcity must be filled out");
		    return false;
		  }
	  if (tocity == "") {
		    alert("tocity must be filled out");
		    return false;
		  }
		  if (date == "") {
			    alert("date must be filled out");
			    return false;
			  }
		  if (time == "") {
			    alert("time must be filled out");
			    return false;
			  }
		  if (airportname == "") {
			    alert("airportname must be filled out");
			    return false;
			  }
			  if (ticketprice == "") {
				    alert("ticketprice must be filled out");
				    return false;
				  }
			  if (description == "") {
				    alert("description must be filled out");
				    return false;
				  }
			  
	  
	}

 function homefunction()
{
	document.getElementById("changePasswordDiv").style.display="none";
	document.getElementById("homeimgDiv").style.display="none";
	document.getElementById("addFlightDiv").style.display="none"; 
	document.getElementById("homeimgDiv").style.display="inline"; 
  }

 

 function logOutfunction()
{
	  if (confirm('Are you sure you want to logout?'))
	  {
				window.location.href ="LoginForm.jsp"
	 }  
   }

</script>
<style>

@charset "ISO-8859-1";
 
#homeimgDiv
{
display: inline;
width: 1350px;
 height: 520px;
 
}
 
 #changePasswordDiv
{
display: none;
}
 
 #addFlightDiv
{
display: none;
}
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
.textboxstyle {
  border-radius:5px;
   height: 30px;
   
   
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
body {
	background-color : #484848;
	margin: 0;
	padding: 0;
}
h1 {
	color : #000000;
	text-align : center;
	font-family: "SIMPSON";
}
form {
	width: 300px;
	margin: 0 auto;
}
 

</style>

</html>