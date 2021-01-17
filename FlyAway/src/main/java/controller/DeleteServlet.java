package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.crudClass;
import model.flightDataModel;
 
public class DeleteServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {


		 
		 
		try {
			PrintWriter out=response.getWriter();
			boolean isdeleted =false;
			List<flightDataModel> lstflightData = null;
			String flightno =  request.getParameter("flightno");
			 crudClass flightdata = new crudClass();
			isdeleted = flightdata.deleteFlightDataWithFlightNo_DAO(flightno);
			
			if(isdeleted==true)
			{
				lstflightData=flightdata.flightDataMethod();
				request.setAttribute("completelstflightData", lstflightData);
//				 out.println("<script type=\"text/javascript\">");
//				   out.println("alert('Flight Delted Successfully.');");
//				   out.println("location='AdminPage.jsp';");
//				   out.println("</script>");
  
				  RequestDispatcher rd=request.getRequestDispatcher("FlightDataForAdmin");  
				 
				  rd.forward(request, response);//method may be include or forward  
 
			}
			else
			{
				lstflightData=flightdata.flightDataMethod();
				request.setAttribute("completelstflightData", lstflightData);
				 out.println("<script type=\"text/javascript\">");
				   out.println("alert('Flight not Delted.Try Again');");
				   out.println("location='AdminPage.jsp';");
				   out.println("</script>");
			}
			
		} catch (Exception e) {
			 
		}
	}

	 

}
