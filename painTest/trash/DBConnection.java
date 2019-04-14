package com.acc.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.util.Properties;

public class DBConnection
{
	Connection connection;

	public Connection openDBConnection() throws Exception
	{
		Properties properties = new Properties();
		properties.load(Thread
				.currentThread()
				.getContextClassLoader()
				.getResourceAsStream("com/acc/properties/db.properties"));

		String driver = properties.getProperty("driver");
		String url = properties.getProperty("url");
		String uname = properties.getProperty("username");
		String pwd = properties.getProperty("password");

		// load driver
		Class.forName(driver);
		System.out.println("driver loaded...");

		// establish connection
		connection = DriverManager.getConnection(url, uname, pwd);
		System.out.println("connection established..." + connection);

		return connection;
	}

	void closeDBConnection() throws Exception
	{
		// closing the connection
		connection.close();
		System.out.println("connection closed...");
	}
}
