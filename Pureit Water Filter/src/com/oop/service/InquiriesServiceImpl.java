package com.oop.service;

import java.util.*;
import java.sql.*;
import java.io.*;

import com.oop.model.Inquiries;

public class InquiriesServiceImpl implements IInquiriesService{
	
	public void addInquiries( Inquiries inq ) {
		
		try {
			//ResultSet myRs;
			Class.forName("com.mysql.jdbc.Driver");
			Connection myConn =  DriverManager.getConnection("jdbc:mysql://localhost:3306/pureit","root","");
			
			/*if( myConn == null )
				System.out.println("No Connection ");
			else
				System.out.println("Connection Established ");*/
			
			PreparedStatement myStmt = myConn.prepareStatement( "INSERT INTO inquiry(contactnumber,problemdescription,priority, empid ) VALUES(?,?,?,?)" );
			
			myStmt.setString(1, inq.getContactNumber());
			myStmt.setString(2, inq.getProblemDescription());
			myStmt.setString(3, inq.getPriority());
			myStmt.setString(4, inq.getTechnician());
			
			myStmt.execute();
			//myConn.commit();
			
			
		}catch(Exception e) {
			System.out.println( "Exception : " + e );
		}
	}
	
	
	public ArrayList<Inquiries> getInquiries(){
		
		return actionOnInquiries();
	}
	
	
	public ArrayList<Inquiries> actionOnInquiries(){
		
		ArrayList<Inquiries> InquiriesList = new ArrayList<Inquiries>();
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection myConn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pureit","root","");
			
			PreparedStatement myStmt = myConn.prepareStatement("SELECT  * FROM inquiry");
			
			ResultSet resultSet = myStmt.executeQuery();
			
			while( resultSet.next() ) {
				Inquiries inq = new Inquiries();
				
				inq.setInquiryID(resultSet.getString(1));
				inq.setContactNumber(resultSet.getString(3));
				inq.setProblemDescription(resultSet.getString(4));
				inq.setPriority(resultSet.getString(5));
				inq.setTechnician(resultSet.getString(6));
				
				InquiriesList.add(inq);
			}
			
		}catch(Exception  e) {
			System.out.println("Exception : " + e );
		}
		
		return InquiriesList;
	}
	
	public void updateInquiries( Inquiries inq ) {
		
		try {
			//ResultSet myRs;
			Class.forName("com.mysql.jdbc.Driver");
			Connection myConn =  DriverManager.getConnection("jdbc:mysql://localhost:3306/pureit","root","");
			
			PreparedStatement myStmt = myConn.prepareStatement( "UPDATE inquiry SET status=?, contactnumber=?, problemdescription=?, priority=?, empid=? WHERE inquiryid=?" );
			
			myStmt.setString(1, inq.getStatus());
			myStmt.setString(2, inq.getContactNumber());
			myStmt.setString(3, inq.getProblemDescription());
			myStmt.setString(4, inq.getPriority());
			myStmt.setString(5, inq.getTechnician());
			myStmt.setString(6, inq.getInquiryID());
			
			myStmt.execute();
			
		}catch(Exception e) {
			System.out.println( "Exception : " + e );
		}
	}
	
public void deleteInquiries( Inquiries inq ) {
		
		try {
			//ResultSet myRs;
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection myConn =  DriverManager.getConnection("jdbc:mysql://localhost:3306/pureit","root","");
			
			PreparedStatement myStmt = myConn.prepareStatement( "DELETE FROM inquiry WHERE inquiryid=?" );
			
			myStmt.setString(1, inq.getInquiryID());
			
			myStmt.execute();
			
		}catch(Exception e) {
			System.out.println( "Exception : " + e );
		}
	}
}