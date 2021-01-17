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

<div>
<jsp:include page="adminHeader.jsp"/>
   </div> 
   
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
   
    

</body>
<style>

@charset "ISO-8859-1";
 
#homeimgDiv
{
display: inline;
width: 1350px;
 height: 520px;
 
}
</style>
</html>