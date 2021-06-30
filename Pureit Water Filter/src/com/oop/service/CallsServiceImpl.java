package com.oop.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.oop.model.Calls;

public class CallsServiceImpl implements ICallsService {
	
	public void addCalls( Calls inq ) {
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection myConn =  DriverManager.getConnection("jdbc:mysql://localhost:3306/pureit","root","");

			PreparedStatement myStmt = myConn.prepareStatement( "INSERT INTO calls(status,problemid,empid, custid,date ) VALUES(?,?,?,?,?)" );
			
			myStmt.setString(1, inq.getStatus());
			myStmt.setString(2, inq.getProblemID());
			myStmt.setString(3, inq.getEmpID());
			myStmt.setString(4, inq.getCustID());
			myStmt.setString(5, inq.getDate());
			
			myStmt.execute();

		}catch(Exception e) {
			System.out.println( "Exception : " + e );
		}
	}
	
	
	public ArrayList<Calls> getCalls(){
		
		return actionOnCalls();
	}
	
	
	public ArrayList<Calls> actionOnCalls(){
		
		ArrayList<Calls> CallsList = new ArrayList<Calls>();
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection myConn = DriverManager.getConnection("jdbc:mysql://localhost:3306/pureit","root","");
			
			PreparedStatement myStmt = myConn.prepareStatement("SELECT  * FROM calls");
			
			ResultSet resultSet = myStmt.executeQuery();
			
			while( resultSet.next() ) {
				Calls inq = new Calls();
				
				inq.setCallID(resultSet.getString(1));
				inq.setDate(resultSet.getString(2));
				inq.setStatus(resultSet.getString(3));
				inq.setProblemID(resultSet.getString(4));
				inq.setEmpID(resultSet.getString(5));
				inq.setCustID(resultSet.getString(6));
				
				CallsList.add(inq);
			}
			
		}catch(Exception  e) {
			System.out.println("Exception : " + e );
		}
		
		return CallsList;
	}
	
	public void updateCalls( Calls inq ) {
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection myConn =  DriverManager.getConnection("jdbc:mysql://localhost:3306/pureit","root","");
			
			PreparedStatement myStmt = myConn.prepareStatement( "UPDATE calls SET status=?, problemid=? WHERE callid=?" );
			
			myStmt.setString(1, inq.getStatus());
			myStmt.setString(2, inq.getProblemID());
			myStmt.setString(3, inq.getCallID());
		
			myStmt.execute();
			
		}catch(Exception e) {
			System.out.println( "Exception : " + e );
		}
	}
	
public void deleteCalls( Calls inq ) {
		
		try {
			
			Class.forName("com.mysql.jdbc.Driver");
			Connection myConn =  DriverManager.getConnection("jdbc:mysql://localhost:3306/pureit","root","");
			
			PreparedStatement myStmt = myConn.prepareStatement( "DELETE FROM calls WHERE callid=?" );
			
			myStmt.setString(1, inq.getCallID());
		
			myStmt.execute();
			
		}catch(Exception e) {
			System.out.println( "Exception : " + e );
		}
	}

}
