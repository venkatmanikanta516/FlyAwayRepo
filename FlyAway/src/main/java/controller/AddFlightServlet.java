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

 
public class AddFlightServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		boolean isValiduser = false;
		int count=0;
		List<flightDataModel> lstflightData = null;
		try {

			String flightno = request.getParameter("flightno");
			String flightname = request.getParameter("flightname");
			String fromcity = request.getParameter("fromcity");
			String tocity = request.getParameter("tocity");
			String date = request.getParameter("date");
			String time = request.getParameter("time");
			String airportname = request.getParameter("airportname");
			String ticketprice = request.getParameter("ticketprice");
			String description = request.getParameter("description");
			
			
			

			crudClass flightdata = new crudClass();
			lstflightData = flightdata.flightDataMethod();
			for( flightDataModel  lfd:lstflightData)
			{
				if(lfd.getFlightno().equals(flightno))
				{
					count++;
				}
			}
			 
			if(count>0)
			{
				out.println("<script type=\"text/javascript\">");
	 			   out.println("alert('Flight Already Available.Try for Another');");
	 			  out.println("location='addFlight.jsp';");
	 			  out.println("</script>");
			}
			else
			{
			isValiduser = flightdata.addFlightDAO(flightno, flightname, fromcity, tocity, date, time, airportname,
					ticketprice, description);
		 
			if (isValiduser == true) {

			 
 			  out.println("<script type=\"text/javascript\">");
 			   out.println("alert('New Flight Added Successfully');");
 			  out.println("location='addFlight.jsp';");
 			  out.println("</script>");
				 
			}

			else {

				out.println("Fail to add Flight.Something Wrong");
			}
			}

		} catch (Exception e) {
			// TODO: handle exception
		}

	}

	 

}
