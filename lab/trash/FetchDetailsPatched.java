package com.acc.dao;

import java.sql.CallableStatement;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.Properties;

public class FetchDetailsPatched
{
	public List displayDetails(String id) throws Exception
	{
		Properties properties = new Properties();
		properties.load(Thread.currentThread().getContextClassLoader()
				.getResourceAsStream("com/acc/properties/query.properties"));
		
		boolean result;
		ResultSet rs;
		Statement statement;
		PreparedStatement ps;
		CallableStatement callableStatement;
		
		DBConnection dbConnection = new DBConnection();
		Connection connection = dbConnection.openDBConnection();
		
		String query = properties.getProperty("preparedStatement");
		
		System.out.println("query - " + query);
		
		// prepare statement
		ps = connection.prepareStatement(query);
		ps.setString(1, id);
		
		// execute prepared statement
		rs = ps.executeQuery();
		System.out.println("prepared statement..." + ps);
		System.out.println("prepared statement executed..." + rs);
		
		List list = new ArrayList();
		
		while (rs.next())
		{
			list.add(rs.getString(1));
			list.add(rs.getString(2));
			list.add(rs.getString(3));
		}
		
		dbConnection.closeDBConnection();
		
		return list;
	}
}
