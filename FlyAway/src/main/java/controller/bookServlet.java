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

 
public class bookServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
      
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		 
		List<flightDataModel> lstflightData = null;
		try {
			PrintWriter out=response.getWriter();
			String flightno =  request.getParameter("flightno");
			
			
			
			crudClass flightdata = new crudClass();
			lstflightData = flightdata.getFlightDataWithFlightNo_DAO(flightno);
			
			if(lstflightData.size()>0)
			{
 
					HttpSession session=request.getSession();
					session.setAttribute("sessionlstflightData", lstflightData);
				
				 
				
				request.setAttribute("flightListData", lstflightData);
				
				 
				 RequestDispatcher rd=request.getRequestDispatcher("personalDetailsForm.jsp");  
				// RequestDispatcher rd=request.getRequestDispatcher("demo.jsp");  
				 
				 rd.forward(request, response);//method may be include or forward  
 
			}
			else
			{
				
				 out.println("<script type=\"text/javascript\">");
				   out.println("alert('no such flight found .search Once');");
				   out.println("location='flightDataServlet';");
				   out.println("</script>");
			}
			
		} catch (Exception e) {
			// TODO: handle exception
		}

	}

}
