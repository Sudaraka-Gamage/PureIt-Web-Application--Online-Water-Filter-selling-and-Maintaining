package com.oop.model;

public class Feedback {
	private String FeedbackID;
	private String NoOfStars;
	private String Description;
	private String InquiryID;
	private String CustID;
	
	public void setFeedbackID( String FeedbackID ) {
		this.FeedbackID = FeedbackID;
	}
	
	public void setNoOfStars( String NoOfStars ) {
		this.NoOfStars = NoOfStars;
	}
	
	public void setDescription( String Description ) {
		this.Description = Description;
	}
	
	public void setInquiryID( String InquiryID ) {
		this.InquiryID = InquiryID;
	}
	
	public void setCustID( String CustID ) {
		this.CustID = CustID;
	}
	
	public String getFeedbackID() {
		return FeedbackID;
	}
	
	public String getNoOfStars() {
		return NoOfStars;
	}
	
	public String getDescription() {
		return Description;
	}

	public String getInquiryID() {
		return InquiryID;
	}
	
	public String getCustID() {
		return CustID;
	}
	
	
}
