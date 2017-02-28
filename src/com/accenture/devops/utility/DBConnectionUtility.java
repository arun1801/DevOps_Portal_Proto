package com.accenture.devops.utility;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnectionUtility {

	private Connection connect = null;
	//private Statement statement = null;
	public Connection connectDerby() throws Exception, IllegalAccessException, ClassNotFoundException
	{
		String driver = "org.apache.derby.jdbc.ClientDriver";
		String connectionString = "jdbc:derby://localhost:1527/devops_portal;create=true";
		Class.forName(driver).newInstance();
		connect = DriverManager.getConnection(connectionString);
		if(connect!=null)
		{
			System.out.println("Connect to DB Server !");
		} else
		{
			System.out.println("Not able to connect to DB !");
		/*}
		statement = connect.createStatement();
		String createTable = "CREATE TABLE PORTAL_USERS (UID VARCHAR(300) not null PRIMARY KEY, FNAME VARCHAR(50), LNAME VARCHAR(50), LOGIN_EMAIL VARCHAR(400) UNIQUE, LOGIN_PASS VARCHAR(500), USER_INFO VARCHAR(1000) )";
		statement.executeUpdate(createTable);
		System.out.println("Table has been created.");*/
	}
		return connect;
		
	
	}
	public void close() throws SQLException
	{
		if (connect !=null)
		{
			connect.close();
		}
	}
}
