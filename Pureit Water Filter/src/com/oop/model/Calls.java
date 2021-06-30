package com.oop.model;

public class Calls {
	private String CallID;
	private String Date;
	private String Status;
	private String ProblemID;
	private String EmpID;
	private String CustID;
	
	public void setCallID( String CallID ) {
		this.CallID = CallID;
	}
	
	public void setDate( String Date ) {
		this.Date = Date;
	}
	
	public void setStatus( String Status ) {
		this.Status = Status;
	}
	
	public void setProblemID( String ProblemID ) {
		this.ProblemID = ProblemID;
	}
	
	public void setEmpID( String EmpID ) {
		this.EmpID = EmpID;
	}
	
	public void setCustID( String CustID ) {
		this.CustID = CustID;
	}
	
	public String getCallID() {
		return CallID;
	}
	
	public String getDate() {
		return Date;
	}
	
	public String getStatus() {
		return Status;
	}
	
	public String getProblemID() {
		return ProblemID;
	}
	
	public String getEmpID() {
		return EmpID;
	}
	public String getCustID() {
		return CustID;
	}
}
