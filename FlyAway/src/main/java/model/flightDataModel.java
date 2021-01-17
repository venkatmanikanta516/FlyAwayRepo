package model;

import java.sql.Date;
import java.sql.Time;

public class flightDataModel {

	@Override
	public String toString() {
		return "flightDataModel [flightno=" + flightno + ", flightname=" + flightname + ", fromcity=" + fromcity
				+ ", tocity=" + tocity + ", date=" + date + ", time=" + time + ", airportname=" + airportname
				+ ", Ticketprice=" + ticketprice + ", description=" + description + "]";
	}
	private String flightno;
	private String flightname;
	private String fromcity;
	private String tocity;
	private Date date;
	private Time time;
	private String airportname;
	private double ticketprice;
	private String description;
	public String getFlightno() {
		return flightno;
	}
	public void setFlightno(String flightno) {
		this.flightno = flightno;
	}
	public String getFlightname() {
		return flightname;
	}
	public void setFlightname(String flightname) {
		this.flightname = flightname;
	}
	public String getFromcity() {
		return fromcity;
	}
	public void setFromcity(String fromcity) {
		this.fromcity = fromcity;
	}
	public String getTocity() {
		return tocity;
	}
	public void setTocity(String tocity) {
		this.tocity = tocity;
	}
	public Date getDate() {
		return date;
	}
	public void setDate(Date date) {
		this.date = date;
	}
	public Time getTime() {
		return time;
	}
	public void setTime(Time time) {
		this.time = time;
	}
	public String getAirportname() {
		return airportname;
	}
	public void setAirportname(String airportname) {
		this.airportname = airportname;
	}
	public double getTicketprice() {
		return ticketprice;
	}
	public void setTicketprice(double ticketprice) {
		this.ticketprice = ticketprice;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	 
	
}
