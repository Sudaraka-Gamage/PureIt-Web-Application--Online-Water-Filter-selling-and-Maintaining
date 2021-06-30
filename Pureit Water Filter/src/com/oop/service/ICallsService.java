package com.oop.service;

import java.util.*;

import com.oop.model.Calls;

public interface ICallsService {
	public void addCalls( Calls inq );
	
	public void updateCalls( Calls inq );
	
	public void deleteCalls( Calls inq );
		
	public ArrayList<Calls> getCalls();
}
