package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.crudClass;
import dao.dbConnectionClass;
import model.flightDataModel;

 
public class flightDataServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		List<flightDataModel> lstflightData  = null;
		 
		try {
			crudClass flightdata = new crudClass();
			 
			lstflightData = flightdata.flightDataMethod();
			if (lstflightData.size() > 0) {
				 
			
			 
				request.setAttribute("flightListData", lstflightData);
				RequestDispatcher rd = request.getRequestDispatcher("FlightSearch.jsp");

				rd.forward(request, response);
				 
			}

			else {
				out.println("<script type=\"text/javascript\">");
				out.println("alert('No Flight Data Avilable');");
				out.println("location='Home.jsp';");
				out.println("</script>");
 
			}
		} catch (Exception e) {
			out.println("Exception : " + e.getMessage());

		}
	}

}
