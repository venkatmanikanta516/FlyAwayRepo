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
</head>
<body>

<h2>Flight Details  </h2>


 <div class="flightlistdiv"  >
          
          
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
<!--     <th>Description</th> -->
<!--     <th>Book</th> -->
  </tr>
   
    <tbody>
        <c:forEach items="${flightListData}"  var="fss">
        
       
         <tr>
 
        	    <td><c:out value="${fss.flightno}"  /></td>
        	    <td><c:out value="${fss.flightname}"/></td>
        	    <td><c:out value="${fss.fromcity}"/></td>
        	    <td><c:out value="${fss.tocity}"/></td>
        	    <td><c:out value="${fss.date}"/></td>
        	    <td><c:out value="${fss.time}"/></td>
        	    <td><c:out value="${fss.airportname}"/></td>
        	    <td><c:out value="${fss.ticketprice}"/></td>
 
          
        
        </c:forEach>
        </tbody>
       
  
</table>
          
          </div>


<h2>Personal Details  </h2>
<form name="myForm" action="BookingReviewServlet" onsubmit="return validateForm()"> 
<div>
 
   
Email  <input class="textboxstyle" id="from-to-textbox" type="text" name="email">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           Phone Number  <input class="textboxstyle" id="from-to-textbox" type="text" name="phonenumber">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
         No.Of Passengers  <input class="textboxstyle"  id="dateinput" type="text" name="noofpassengers" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
  <br><br>Primary Passenger Name  <input class="textboxstyle" id="from-to-textbox" type="text" name="Primarypassengername"   >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<!--            Gender  <input class="textboxstyle" id="from-to-textbox" type="text" name="phonenumber">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; -->
<!--             Age  <input class="textboxstyle"  id="dateinput" type="text" name="noofpassengers" >&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   -->
          

 
<center>

<!--  <br><br><br> <button>Proceed</button> -->
<br><br><br> <input class="buttonstyle" type="submit" value="Proceed"   >
 
</center>
</div>     
 </form>
</body>
<script type="text/javascript">

function validateForm() {
	  var email = document.forms["myForm"]["email"].value;
	  var phonenumber = document.forms["myForm"]["phonenumber"].value;
	  var Primarypassengername = document.forms["myForm"]["Primarypassengername"].value;
	  var noofpassengers = document.forms["myForm"]["noofpassengers"].value;
	  if (email == "") {
	    alert("email must be filled out");
	    return false;
	  }
	  if (phonenumber == "") {
		    alert("phonenumber must be filled out");
		    return false;
		  }
	  if (Primarypassengername == "") {
		    alert("Primarypassengername must be filled out");
		    return false;
		  }
	  if (noofpassengers == "") {
		    alert("noofpassengers must be filled out");
		    return false;
		  }
	 
	  
	}

</script>
<style>
.textboxstyle {
  border-radius:5px;
   height: 30px;
   
   
}
.flightlistalign
{
   background-color:white; 
 }

table {
  font-family: arial, sans-serif;
  border-collapse: collapse;
  width: 100%;
  
}

td, th {
  border: 1px solid #dddddd;
  text-align: left;
  padding: 8px;
   
}

tr:nth-child(even) {
  background-color: #dddddd;
  
} 
 .scroll
 {
 color:black;
 background-color: white;
 margin:20px;
 
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