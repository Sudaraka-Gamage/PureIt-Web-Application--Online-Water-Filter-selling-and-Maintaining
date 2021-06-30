package com.oop.service;

import java.util.*;
import java.sql.*;
import java.io.*;

import com.oop.model.Feedback;

public class FeedbackServiceImpl implements IFeedbackService{
	
	public void addFeedback( Feedback inq ) {
		
		try {
			//ResultSet myRs;
			Class.forName("com.mysql.jdbc.Driver");
			Connection myConn =  DriverManager.getConnection("jdbc:mysql://localhost:3306/pureit","root","");
			
			/*if( myConn == null )
				System.out.println("No Connection ");
			else
				System.out.println("Connection Established ");*/
			
			PreparedStatement myStmt = myConn.prepareStatement( "INSERT INTO feedback(noofstars,description,inquiryid, custid ) VALUES(?,?,?,?)" );
			
			myStmt.setString(1, inq.getNoOfStars());
			myStmt.setString(2, inq.getDescription());
			myStmt.setString(3, inq.getInquiryID());
			myStmt.setString(4, inq.getCustID());
			
			myStmt.execute();
			//myConn.commit();
			
			
		}catch(Exception e) {
			System.out.println( "Exception : " + e );
		}
	}
	
	
	public ArrayList<Feedback> getFeedback(){
		
		return actionOnFeedback();
	}
	
	
	public ArrayList<Feedback> actionOnFeedback(){
		
		ArrayList<Feedback> FeedbackList = new ArrayList<Feedback>();
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection myConn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pureit","root","");
			
			PreparedStatement myStmt = myConn.prepareStatement("SELECT  * FROM feedback");
			
			ResultSet resultSet = myStmt.executeQuery();
			
			while( resultSet.next() ) {
				Feedback inq = new Feedback();
				
				inq.setFeedbackID(resultSet.getString(1));
				inq.setNoOfStars(resultSet.getString(2));
				inq.setDescription(resultSet.getString(3));
				inq.setInquiryID(resultSet.getString(4));
				inq.setCustID(resultSet.getString(5));
				
				FeedbackList.add(inq);
			}
			
		}catch(Exception  e) {
			System.out.println("Exception : " + e );
		}
		
		return FeedbackList;
	}
	
	public void updateFeedback( Feedback inq ) {
		
		try {
			//ResultSet myRs;
			Class.forName("com.mysql.jdbc.Driver");
			Connection myConn =  DriverManager.getConnection("jdbc:mysql://localhost:3306/pureit","root","");
			
			PreparedStatement myStmt = myConn.prepareStatement( "UPDATE feedback SET noofstars=?, description=?, inquiryid=?, custid=? WHERE feedbackid=?" );
			
			myStmt.setString(1, inq.getNoOfStars());
			myStmt.setString(2, inq.getDescription());
			myStmt.setString(3, inq.getInquiryID());
			myStmt.setString(4, inq.getCustID());
			myStmt.setString(5, inq.getFeedbackID());
			
			myStmt.execute();
			
		}catch(Exception e) {
			System.out.println( "Exception : " + e );
		}
	}
	
	public void deleteFeedback( Feedback inq ) {
		
		try {
			//ResultSet myRs;
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection myConn =  DriverManager.getConnection("jdbc:mysql://localhost:3306/pureit","root","");
			
			PreparedStatement myStmt = myConn.prepareStatement( "DELETE FROM feedback WHERE feedbackid=?" );
			
			myStmt.setString(1, inq.getFeedbackID());
			
			
			myStmt.execute();
			
		}catch(Exception e) {
			System.out.println( "Exception : " + e );
		}
	}
}