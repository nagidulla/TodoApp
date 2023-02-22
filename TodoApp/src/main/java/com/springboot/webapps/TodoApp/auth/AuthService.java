package com.springboot.webapps.TodoApp.auth;

import org.springframework.stereotype.Component;

@Component
public class AuthService {
	
	public String errorMsg="";
	
	public boolean auth(String username, String pass) {
		
		boolean userCheck = username.equalsIgnoreCase("nagi");
		boolean passCheck = pass.equals("1234");
		
		if(userCheck && passCheck) {
			return true;
		}
		errorMsg="Username/Password is incorrect!";
		return false;
	}

}
