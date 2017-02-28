package org.accenture.devops.business;

import java.util.HashMap;

import com.accenture.devops.bean.UserBean;
import com.accenture.devops.dao.UserManagerDAO;

public class UserManagerService {
	private UserManagerDAO userDao = null;

	public String signup(UserBean userObj) throws IllegalAccessException, ClassNotFoundException, Exception
	{
		String result=null;
		userDao = new UserManagerDAO();
		boolean db_output= userDao.signupUser(userObj);
		System.out.println("Value of DB_Output:- "+db_output);
		if (db_output)
		{
			result="Succesfully Signed Up. Redirecting to Login Page.. !";
		} else
		{
			result = "There is some issue with signup. Please check signup details.";
		}
		return result;
	}
	
	public HashMap<String, Object> logmeIn(UserBean logObj) throws IllegalAccessException, ClassNotFoundException, Exception
	{
		String result= null;
		UserBean testObj = new UserBean();
		HashMap<String, Object> resultMap = new HashMap<String, Object>();
		userDao = new UserManagerDAO();
		System.out.println("Passed obj in Service:- "+logObj.getEmail()+" "+logObj.getPassword());
		testObj=userDao.loginDetails(logObj.getEmail());
		System.out.println("Test obj in Service:- "+testObj.getEmail()+" "+testObj.getPassword());
		if(logObj.getEmail().equalsIgnoreCase(testObj.getEmail())&& logObj.getPassword().equalsIgnoreCase(testObj.getPassword()))
		{
			
			result = "You have been logged in Successfully. Redirecting to Home Page..";
			resultMap.put("msg", result);
		} else
		{
			result = "No User found with specified details. Please validate.";
			resultMap.put("msg", result);
		}
		resultMap.put("userObj", testObj);
		return resultMap;
	}
}
