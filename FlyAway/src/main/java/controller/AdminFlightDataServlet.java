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
 
public class AdminFlightDataServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		PrintWriter out = response.getWriter();
		boolean isValiduser = false;
		List<flightDataModel> lstflightData = null;

		try {

			String username = request.getParameter("username");
			String password = request.getParameter("password");
			crudClass flightdata = new crudClass();

			if (username == "" || password == "") {
				out.println("<script type=\"text/javascript\">");
				out.println("alert('Please enter user name and password Properly');");
				out.println("location='LoginForm.jsp';");
				out.println("</script>");

			} else {

				isValiduser = flightdata.adminLoginMethod(username, password);
				lstflightData = flightdata.flightDataMethod();

				if (isValiduser == true) {

					request.setAttribute("completelstflightData", lstflightData);

					//RequestDispatcher rd = request.getRequestDispatcher("AdminPage.jsp");
					RequestDispatcher rd = request.getRequestDispatcher("adminFlightData.jsp");

					rd.forward(request, response);

				}

				else {

					out.println("<script type=\"text/javascript\">");
					out.println("alert('Invalid Credentials.Check Once');");
					out.println("location='LoginForm.jsp';");
					out.println("</script>");
				}

			}
		} catch (Exception e) {
			out.println("Exception : " + e.getMessage());
		}
	}


}

	 

 