 
function changePasswordfunction()
{
	document.getElementById("addFlightDiv").style.display="none";
	document.getElementById("homeimgDiv").style.display="none";
 document.getElementById("changePasswordDiv").style.display="inline";
 
 }

 function addFlightfunction()
{
	document.getElementById("changePasswordDiv").style.display="none";
	document.getElementById("homeimgDiv").style.display="none";
	document.getElementById("addFlightDiv").style.display="inline"; 
  

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
 
	window.location.href ="LoginForm.jsp"
	 
  }