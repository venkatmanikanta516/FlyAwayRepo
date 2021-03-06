package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.crudClass;
import model.flightDataModel;

 
public class searchFlightData extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
     

	 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	 
		

		PrintWriter out = response.getWriter();
		List<flightDataModel> lstflightData = null;
		String flightno=null;

		try {
			crudClass flightdata = new crudClass();
			 
			 
			 String fromcity=request.getParameter("fromcity");
			 String tocity=request.getParameter("tocity");
			 String date= request.getParameter("date");
			 
			 if(fromcity==""||tocity==""||date=="")
				{
				 out.println("<script type=\"text/javascript\">");
				   out.println("alert('Please enter data Properly');");
				   out.println("location='flightDataServlet';");
				   out.println("</script>");
				}
			 else
			 {
			 
			lstflightData = flightdata.searchFlightDataMethod(fromcity,tocity,date);
			if (lstflightData.size() > 0) {
				
				
				request.setAttribute("flightListData", lstflightData);
				RequestDispatcher rd = request.getRequestDispatcher("FlightSearch.jsp");

				rd.forward(request, response);
				
			}

			else {
				
				out.println("<script type=\"text/javascript\">");
				   out.println("alert('No Flights Available');");
				   out.println("location='Home.jsp';");
				   out.println("</script>");

				out.println("Connection NULL");
			}
			 }
		} catch (Exception e) {
			out.println("Exception : " + e.getMessage());

		}
	}

	 

}
