package com.oop.service;

import java.util.*;

import com.oop.model.Feedback;

public interface IFeedbackService {

	public void addFeedback( Feedback inq );
	
	public void updateFeedback( Feedback inq );
	
	public void deleteFeedback( Feedback inq );
	
	public ArrayList<Feedback> getFeedback();
}
