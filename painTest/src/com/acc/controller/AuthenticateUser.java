package com.acc.controller;

import java.sql.Connection;
import java.sql.Statement;

import com.acc.dao.DBConnection;

public class AuthenticateUser
{
	boolean checkUserNameAndPassword(String userName, String password)
			throws Exception
	{
		DBConnection dbConnection = new DBConnection();
		Connection connection = dbConnection.openDBConnection();
		Statement statement;
		boolean result;

		String query = "select * from users where userName='" + userName
				 +"' and password='"+password+"'"+";";

		System.out.println("query - " + query);

		//		create statement
		statement = connection.createStatement();
		System.out.println("statement object created..." + statement);

		//		execute statement
		result = statement.execute(query);

		System.out.println("member found" + result);

		return result;
	}
}
