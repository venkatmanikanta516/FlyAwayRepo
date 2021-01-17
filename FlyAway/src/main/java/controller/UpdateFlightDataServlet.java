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

 
public class UpdateFlightDataServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
     
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
  try {
				PrintWriter out=response.getWriter();
				boolean isupdated =false;
				List<flightDataModel> lstflightData = null;
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
				 
				 isupdated = flightdata.updateFlightDataWithFlightNo_DAO(flightno, flightname, fromcity, tocity, date, time, airportname,
							ticketprice, description);
				
				if(isupdated==true)
				{
					lstflightData=flightdata.flightDataMethod();
					request.setAttribute("completelstflightData", lstflightData);
 
	  
					  RequestDispatcher rd=request.getRequestDispatcher("FlightDataForAdmin");  
					 
					  rd.forward(request, response);//method may be include or forward  
	 
				}
				else
				{
					lstflightData=flightdata.flightDataMethod();
					request.setAttribute("completelstflightData", lstflightData);
					 out.println("<script type=\"text/javascript\">");
					   out.println("alert('Flight not Updated.Try Again');");
					   out.println("location='AdminPage.jsp';");
					   out.println("</script>");
				}
				
			} catch (Exception e) {
				 
			}
		 

		 
	}

	 

}
