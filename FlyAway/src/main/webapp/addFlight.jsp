<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>FlyAway</title>
</head>
<body>
<div>
<jsp:include page="adminHeader.jsp"/>
   </div> 
  <br><br> 
  <h3>Insert Flight Data</h3>
     <div id="addFlightDiv">
    
     
      <form name="addFlightform" class="addflightformstyle" action="AddFlightServlet"   onsubmit="return addFlightvalidateForm()">
       Flight No : <input  class="textboxstyle" type="text" name="flightno" ><br><br>
      Flight Name : <input  class="textboxstyle" type="text" name="flightname" ><br><br>
      From City : <input  class="textboxstyle" type="text" name="fromcity" ><br><br>
      To City : <input class="textboxstyle" type="text" name="tocity" ><br><br>
      Date : <input class="textboxstyle" type="date" name="date" ><br><br>
      Time : <input class="textboxstyle" type="text" name="time" ><br><br>
      Airport Name : <input class="textboxstyle" type="text" name="airportname" ><br><br>
      Ticket Price : <input class="textboxstyle" type="text" name="ticketprice" ><br><br>
      Description : <input class="textboxstyle" type="text" name="description" ><br><br>
      <input type="submit" class="buttonstyle"  value="Add New Flight">
      </form>
      
    </div>

</body>

<script type="text/javascript">


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

</script>
<style>

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

</style>
</html>