package dao;

import java.sql.*;

public class dbConnectionClass {
	 static Connection con=null;
	public static Connection dbConnectionMethod()
	{
		try
		{
			Class.forName("com.mysql.cj.jdbc.Driver");  
			Connection con=DriverManager.getConnection("jdbc:mysql://localhost:3306/airwaydb","root","1234"); 
		return con;	
		} 
		catch (Exception e)
		{
			return con; 
		}
		
	}

}
