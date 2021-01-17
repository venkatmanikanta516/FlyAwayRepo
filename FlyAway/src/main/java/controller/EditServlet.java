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

 
public class EditServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		 
			 
			 
			try {
				PrintWriter out=response.getWriter();
				boolean isdeleted =false;
				List<flightDataModel> lstflightData = null;
				String flightno =  request.getParameter("flightno");
				 crudClass flightdata = new crudClass();
				 
					lstflightData=flightdata.getFlightDataWithFlightNo_DAO(flightno);
					request.setAttribute("completelstflightData", lstflightData);
 
					  RequestDispatcher rd=request.getRequestDispatcher("editFlightData.jsp");  
					 
					  rd.forward(request, response);//method may be include or forward  
	  
				
			} catch (Exception e) {
				 
			}
		}

		 
	}

	 
	 

 
