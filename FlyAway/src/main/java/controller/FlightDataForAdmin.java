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
 
public class FlightDataForAdmin extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		 
		List<flightDataModel> lstflightData = null;

		try {

			 
			crudClass flightdata = new crudClass();

			 
			 
				lstflightData = flightdata.flightDataMethod();

				if (lstflightData.size()>0) {

					request.setAttribute("completelstflightData", lstflightData);

					//RequestDispatcher rd = request.getRequestDispatcher("AdminPage.jsp");
					RequestDispatcher rd = request.getRequestDispatcher("adminFlightData.jsp");

					rd.forward(request, response);

				}

				else {

					out.println("<script type=\"text/javascript\">");
					out.println("alert('No Data Available');");
					out.println("location='adminFlightData.jsp';");
					out.println("</script>");
				}

			 
		} catch (Exception e) {
			out.println("Exception : " + e.getMessage());
		}
	}

	 
	 

}
