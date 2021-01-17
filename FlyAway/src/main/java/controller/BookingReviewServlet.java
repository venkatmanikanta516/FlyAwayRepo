package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Date;
import java.sql.Time;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import model.flightDataModel;
 
public class BookingReviewServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	
 
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		try {
			
		
	 PrintWriter out=response.getWriter();
		List<flightDataModel> lstflightData = null;
		HttpSession session=request.getSession();
		
		String email=request.getParameter("email");
		 String phno=request.getParameter("phonenumber");
		 
		 String noofpass=request.getParameter("noofpassengers");
		 String passengername=request.getParameter("Primarypassengername");
		 
		 
		  lstflightData = (List<flightDataModel>)session.getAttribute("sessionlstflightData");
		  String flightno=null;
		      String flightname=null;
		      String fromcity=null;
		      String tocity=null;
		  Date date=null;
		      Time time=null;
		      String airportname=null;
		      double ticketprice=0.0;
		      double totalfair=0.0;
		      flightDataModel fdd=null;
	 for(flightDataModel fdm:lstflightData)
	 {
		   fdd=new flightDataModel();
		 fdd.setFlightno(fdm.getFlightno());
		 fdd.setFlightname(fdm.getFlightname());
		 fdd.setFromcity(fdm.getFromcity());
		 fdd.setTocity(fdm.getTocity());
		 fdd.setDate(fdm.getDate());
		 fdd.setTime(fdm.getTime());
		 fdd.setAirportname(fdm.getAirportname());
		 fdd.setTicketprice(fdm.getTicketprice());
			  
		   totalfair=(double)Integer.parseInt(noofpass)*fdm.getTicketprice();
	 }
	 
			
			 
	 request.setAttribute("email", email);
	 request.setAttribute("phno", phno);
	 request.setAttribute("noofpass", noofpass);
	 request.setAttribute("passengername", passengername);
	 request.setAttribute("totalfair", totalfair);
	 
	 request.setAttribute("singleflightListData", fdd);
	 RequestDispatcher  rd=request.getRequestDispatcher("bookingDetailsForm.jsp");
	 rd.forward(request, response);
		  
	 


	} catch (Exception e) {
		// TODO: handle exception
	} 
	 
	}
}
