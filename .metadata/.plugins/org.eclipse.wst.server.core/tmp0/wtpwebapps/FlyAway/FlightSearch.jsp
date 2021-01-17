<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" errorPage="Error.jsp"%>
    <%@ page import="model.flightDataModel" %>
    <%@ page import ="java.util.ArrayList"%>
<%@ page import ="java.util.List"%>

<%@ taglib  uri ="http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<%@ page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">

<link  type="text/css"  rel="stylesheet"  href="jqueryui/jquery-ui.css" >
<link type="text/css" rel="stylesheet"  href="jqueryui/jquery-ui.structure.css"   >
<link type="text/css" rel="stylesheet"   href="jqueryui/jquery-ui.theme.css"   >


<script  src="js/jquery.js"></script>
<script  src="jqueryui/jquery-ui.js"></script>

<script type="text/javascript">
 
$("#dateinput").datepicker();
 
 
 

$("input#from-to-textbox").autocomplete({
    source: ["hyderabad", "delhi", "mumbai", "banglore","pune"]
});

</script>
<title>FlyAway</title>
</head>
<body>
  
<div class="headerclass">
<jsp:include page="header.jsp"/>
   </div>  
    
    
       
           <div class="homestyle">
           <b class="flightlistalign">Flight List</b>
          <hr style="width:98%;text-align:left; ">
          <div class="searchdiv"  >
          <form action="searchFlightData">
          From city  <input class="textboxstyle" id="from-to-textbox" type="text" name="fromcity">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
           To city  <input class="textboxstyle" id="from-to-textbox" type="text" name="tocity">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<!--            Date  <input class="textboxstyle"  id="dateinput" type="text" name="date" placeholder="click to selecct date">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;   -->
           Date  <input class="textboxstyle"  id="dateinput" type="date" name="date" placeholder="click to selecct date">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;  
              
              
              <input class="searchButtonStyle" type="submit" value="search">
              </form>
          </div>
          <br>
          <br>
         <br> 
         
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
    <th>Description</th>
    <th>Book</th>
  </tr>
   
    <tbody>
        <c:forEach items="${flightListData}" var="fss">
        
       
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
        	   
 
        	     
        	    <td><a href="book?flightno=<c:out value='${fss.flightno}' />">Book</a>
        	  </tr>
          
        
        </c:forEach>
        </tbody>
       
  
</table>
          
          </div>
         
   </div>
          
          
          
    
           
           
           
          <div class="footerclass">
         <jsp:include page="footer.jsp"/>
           </div>
  
</body>
     


<style>
 
.textboxstyle {
  border-radius:5px;
   height: 30px;
   
   
}
.searchdiv
{
 position: fixed;
     color:black;
    padding:10px;
     background-color: #d9d8d4; 
 width: 100%;
  
}
.searchButtonStyle
{
 background-color: #4CAF50; /* Green */
  border: none;
  color: white;
  padding: 20px;
  text-align: center;
  text-decoration: none;
  display: inline-block;
  font-size: 16px;
  margin: 4px 2px;
  cursor: pointer;
  border-radius: 12px;
  
}
 
 .headerclass
{
 
position: fixed;
   background-color: black;
     
    width: 100%;
  color: white;
  
  }
 
 
.footerclass
{
 
position: fixed;
  background-color: black;
  left: 0;
  bottom: 0;
  width: 100%;
   
  color: white;
  text-align: center;
 }
.homestyle
{
/* background-color:white; */
/* color:green; */
/*   width: 1350px; */
/*  height: 520px; */

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

 
</style>




</html>