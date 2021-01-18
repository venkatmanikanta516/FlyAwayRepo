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

 
public class changePasswordServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
     
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		PrintWriter out = response.getWriter();
		boolean isValiduser = false;

		try {

			String currentpassword = request.getParameter("currentpassword");
			String newpassword = request.getParameter("newpassword");
			String confirmpassword = request.getParameter("confirmpassword");

			crudClass flightdata = new crudClass();
			isValiduser = flightdata.changePasswordDAO(currentpassword, newpassword, confirmpassword);
if(isValiduser==true)
{
			out.println("<script type=\"text/javascript\">");
			out.println("alert('password changed Successfully.Login with new Password');");
			out.println("location='LoginForm.jsp';");
			out.println("</script>");

			 
}

else
{
	out.println("<script type=\"text/javascript\">");
	out.println("alert('Unable to Change password.Try Again.');");
	out.println("location='changeAdminPassword.jsp';");
	out.println("</script>");
	
}
		} catch (Exception e) {
			// TODO: handle exception
		}

	}

	 
	 

}
