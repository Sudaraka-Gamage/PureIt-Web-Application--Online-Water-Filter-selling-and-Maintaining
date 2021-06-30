package com.oop.model;

public class Inquiries {
	private String InquiryID;
	private String CallID;
	private String Status;
	private String ContactNumber;
	private String ProblemDescription;
	private String Priority;
	private String Technician;
	
	public void setInquiryID( String InquiryID ) {
		this.InquiryID = InquiryID;
	}
	
	public void setCallID( String CallID ) {
		this.CallID = CallID;
	}
	
	public void setStatus( String Status ) {
		this.Status = Status;
	}
	
	public void setContactNumber( String ContactNumber ) {
		this.ContactNumber = ContactNumber;
	}
	
	public void setProblemDescription( String ProblemDescription ) {
		this.ProblemDescription = ProblemDescription;
	}
	
	public void setPriority( String Priority ) {
		this.Priority = Priority;
	}
	
	public void setTechnician( String Technician ) {
		this.Technician = Technician;
	}
	
	public String getInquiryID() {
		return InquiryID;
	}
	
	public String getCallID() {
		return CallID;
	}
	
	public String getStatus() {
		return Status;
	}
	
	public String getContactNumber() {
		return ContactNumber;
	}
	
	public String getProblemDescription() {
		return ProblemDescription;
	}
	
	public String getPriority() {
		return Priority;
	}
	
	public String getTechnician() {
		return Technician;
	}
}