package com.oop.service;

import java.util.*;

import com.oop.model.Inquiries;

public interface IInquiriesService {

	public void addInquiries( Inquiries inq );
	
	public void updateInquiries( Inquiries inq );
	
	public void deleteInquiries( Inquiries inq );
	
	public ArrayList<Inquiries> getInquiries();
}
