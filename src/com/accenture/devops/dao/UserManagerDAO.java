package com.accenture.devops.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.UUID;

import com.accenture.devops.bean.UserBean;
import com.accenture.devops.utility.DBConnectionUtility;

public class UserManagerDAO {

	private DBConnectionUtility utility = null;
	private PreparedStatement prep = null;
	private int output;

	public boolean signupUser(UserBean userObj) throws IllegalAccessException,
			ClassNotFoundException, Exception {
		utility = new DBConnectionUtility();
		Connection conn = utility.connectDerby();
		/*int count = 0;
		Statement insertUserDetails = conn.createStatement();*/
		String insertQuery = "INSERT INTO PORTAL_USERS (UID, FNAME, LNAME, LOGIN_EMAIL, LOGIN_PASS, USER_INFO) VALUES (?,?,?,?,?,?)";
		prep = conn.prepareStatement(insertQuery);
		String uid = UUID.randomUUID().toString();
		System.out.println("UUID - "+uid);
		System.out.println(userObj);
		prep.setString(1, uid);
		prep.setString(2, userObj.getFname());
		prep.setString(3, userObj.getLname());
		prep.setString(4, userObj.getEmail());
		prep.setString(5, userObj.getPassword());
		prep.setString(6, userObj.getInfo());
		output = prep.executeUpdate();
		System.out.println("Value of Output:-"+output);
		// int c
		// =insertUserDetails.executeUpdate("INSERT INTO PORTAL_USERS (UID, FNAME, LNAME, LOGIN_EMAIL, LOGIN_PASS, USER_INFO) VALUES ("+uid+","+userdetails.get("first_name")+","+userdetails.get("last_name")+","+userdetails.get("email")+","+userdetails.get("password")+","+userdetails.get("info")+")");
		if(conn != null)
		{
			conn.close();
			prep.close();
		}
		if (output>0) {
			return true;
		} else {
			return false;
		}
		
	}
	public UserBean loginDetails(String email) throws IllegalAccessException, ClassNotFoundException, Exception
	{
		UserBean tempObj =  new UserBean();
		utility = new DBConnectionUtility();
		Connection conn = utility.connectDerby();
		String password = null;
		String selectQuery = "SELECT FNAME,LNAME,LOGIN_PASS FROM PORTAL_USERS WHERE LOGIN_EMAIL=?";
		prep = conn.prepareStatement(selectQuery);
		prep.setString(1, email);
		ResultSet output = prep.executeQuery();
		if(output.next())
		{
		 password = output.getString("LOGIN_PASS");
		 tempObj.setFname(output.getString("FNAME"));
		 tempObj.setLname(output.getString("LNAME"));
		}
		System.out.println("Value of login Pass in DAO:- "+password);
		tempObj.setEmail(email);
		tempObj.setPassword(password);
		System.out.println("Temp Obj in DAO:- "+tempObj.getEmail()+" "+tempObj.getPassword());
		return tempObj;
	}
}
