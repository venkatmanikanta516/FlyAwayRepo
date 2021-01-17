package dao;

import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.sql.Time;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.http.HttpSession;

import model.flightDataModel;

public class crudClass {

	
	public List<flightDataModel> flightDataMethod()
	{
		Connection con=null; 
		 List<flightDataModel> lstflightData =null;
		try {

			con=dbConnectionClass.dbConnectionMethod();
			if(con!=null)
			{
				lstflightData =new ArrayList<flightDataModel>();
				Statement stmt=con.createStatement();
				ResultSet rs=stmt.executeQuery("select * from tbl_flightsdata");
			 while(rs.next())
			 {
				 flightDataModel fdm=new flightDataModel();
				 fdm.setFlightno(rs.getString(2));
				 fdm.setFlightname(rs.getString(3));
				 fdm.setFromcity(rs.getString(4));
				 fdm.setTocity(rs.getString(5));
				 fdm.setDate(rs.getDate(6));
				 fdm.setTime(rs.getTime(7));
				 fdm.setAirportname(rs.getString(8));
				 fdm.setTicketprice(rs.getDouble(9));
				 fdm.setDescription(rs.getString(10));
				 lstflightData.add(fdm);
			 }
			 
		
		}
			return lstflightData;
		}
			catch (Exception e) {
				return lstflightData;
		}
		
	 
}

	public List<flightDataModel> getFlightDataWithFlightNo_DAO(String flightno)
	{
		Connection con=null; 
		 List<flightDataModel> lstflightData =null;
		 
		try {

			con=dbConnectionClass.dbConnectionMethod();
			if(con!=null)
			{
				lstflightData =new ArrayList<flightDataModel>();
				Statement stmt=con.createStatement();


				 ResultSet rs=stmt.executeQuery("select * from tbl_flightsdata where  flightno='"+flightno+"'");
			 while(rs.next())
			 {
				 flightDataModel fdm=new flightDataModel();
				 fdm.setFlightno(rs.getString(2));
				 fdm.setFlightname(rs.getString(3));
				 fdm.setFromcity(rs.getString(4));
				 fdm.setTocity(rs.getString(5));
				 fdm.setDate(rs.getDate(6));
				 fdm.setTime(rs.getTime(7));
				 fdm.setAirportname(rs.getString(8));
				 fdm.setTicketprice(rs.getDouble(9));
				 fdm.setDescription(rs.getString(10));
				 lstflightData.add(fdm);
			 }
			 
		
		}
			return lstflightData;
		}
			catch (Exception e) {
				return lstflightData;
		}
		
	 
}

	public boolean deleteFlightDataWithFlightNo_DAO(String flightno)
	{
		Connection con=null; 
		 boolean isdeleted =false;
		 
		try {

			con=dbConnectionClass.dbConnectionMethod();
			if(con!=null)
			{
				 
				Statement stmt=con.createStatement();


				 int rs=stmt.executeUpdate("delete from tbl_flightsdata where  flightno='"+flightno+"'");
			 if(rs>0)
			 {
				 isdeleted=true;
			 }
			 
		
		}
			return isdeleted;
		}
			catch (Exception e) {
				return isdeleted;
		}
		
	 
}

	public boolean updateFlightDataWithFlightNo_DAO(String flightno, String flightname, String fromcity, String tocity, String date,
			String time, String airportname, String ticketprice, String description) 
	{
		Connection con=null; 
		 boolean isdeleted =false;
		 
		try {

			con=dbConnectionClass.dbConnectionMethod();
			if(con!=null)
			{
				 
				Statement stmt=con.createStatement();


				 int rs=stmt.executeUpdate("update   tbl_flightsdata set  flightname='"+flightname+"', fromcity='"+fromcity+"',tocity='"+tocity+"',date='"+Date.valueOf(date)+"', time='"+Time.valueOf(time)+"', airportname='"+airportname+"',ticketprice="+Double.parseDouble(ticketprice)+", description='"+description+"' where  flightno='"+flightno+"'");
			 if(rs>0)
			 {
				 isdeleted=true;
			 }
			 
		
		}
			return isdeleted;
		}
			catch (Exception e) {
				return isdeleted;
		}
		
	 
}

	public List<flightDataModel> searchFlightDataMethod(String fromcity,String tocity,String date)
	{
		Connection con=null; 
		 List<flightDataModel> lstflightData =null;
		try {

			con=dbConnectionClass.dbConnectionMethod();
			if(con!=null)
			{
				lstflightData =new ArrayList<flightDataModel>();
				Statement stmt=con.createStatement();
			 ResultSet rs=stmt.executeQuery("select * from tbl_flightsdata where fromcity='"+fromcity+"' and tocity='"+tocity+"' and date='"+date+"'");
				//ResultSet rs=stmt.executeQuery("select * from tbl_flightsdata where  date='"+date+"'");
			 while(rs.next())
			 {
				 flightDataModel fdm=new flightDataModel();
				 fdm.setFlightno(rs.getString(2));
				 fdm.setFlightname(rs.getString(3));
				 fdm.setFromcity(rs.getString(4));
				 fdm.setTocity(rs.getString(5));
				 fdm.setDate(rs.getDate(6));
				 fdm.setTime(rs.getTime(7));
				 fdm.setAirportname(rs.getString(8));
				 fdm.setTicketprice(rs.getDouble(9));
				 fdm.setDescription(rs.getString(10));
				 lstflightData.add(fdm);
			 }
			 
		
		}
			return lstflightData;
		}
			catch (Exception e) {
				return lstflightData;
		}
		
	 
}

	public boolean adminLoginMethod(String username,String password)
	{
		Connection con=null; 
		  boolean isConnected=false;
		try {

			con=dbConnectionClass.dbConnectionMethod();
			if(con!=null)
			{
				 
				Statement stmt=con.createStatement();
				ResultSet rs=stmt.executeQuery("select * from tbl_login where username='"+username+"' and password='"+password+"'");
			 while(rs.next())
			 {
				 isConnected=true; 
			 }
			 
		
		}
			return isConnected;
		}
			catch (Exception e) {
				return isConnected;
		}
		
	 
}



	public boolean changePasswordDAO(String currentpassword, String newpassword, String confirmpassword) {
		Connection con=null; 
		  boolean isConnected=false;
		try {

			con=dbConnectionClass.dbConnectionMethod();
			if(con!=null)
			{
				 String query="update tbl_login set password=? where password=?";
				 PreparedStatement stmt=con.prepareStatement(query);
				stmt.setString(1, newpassword);
				stmt.setString(2, currentpassword);
				 int count=stmt.executeUpdate();
			 if(count>0)
			 {
				 isConnected=true; 
			 }
			 
		
		}
			return isConnected;
		}
			catch (Exception e) {
				return isConnected;
		}
		
	}



	public boolean addFlightDAO(String flightno, String flightname, String fromcity, String tocity, String date,
			String time, String airportname, String ticketprice, String description) {
		 
		Connection con=null; 
		  boolean isConnected=false;
		try {

			con=dbConnectionClass.dbConnectionMethod();
			if(con!=null)
			{
				 

				 String query="insert into tbl_flightsdata(flightno,flightname,fromcity,tocity,date,time,airportname,Ticketprice,description) values(?,?,?,?,?,?,?,?,?)";
				 PreparedStatement stmt=con.prepareStatement(query);
				stmt.setString(1, flightno);
				stmt.setString(2, flightname);
				stmt.setString(3, fromcity);
				stmt.setString(4, tocity);
				stmt.setDate(5, Date.valueOf(date));
				stmt.setTime(6,Time.valueOf(time) );
				stmt.setString(7, airportname);
				stmt.setDouble(8, Double.parseDouble(ticketprice) );
				stmt.setString(9, description);
				 int count=stmt.executeUpdate();
			 if(count>0)
			 {
				 isConnected=true; 
			 }
			 
		
		}
			return isConnected;
		}
			catch (Exception e) {
				return isConnected;
		}
	}


}
