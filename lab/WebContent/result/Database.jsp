<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.Connection" %>    
<%@ page import="java.sql.DriverManager" %>    

<%!
	public static Connection connect() throws Exception
	{
		Connection conn = null;
		
		Class.forName("org.sqlite.JDBC");
	    String url = "jdbc:sqlite:/C:/Users/nav/Desktop/sqlite/chinook.db";
	    conn = DriverManager.getConnection(url);
	      
	    if (conn != null)
	    {
	          System.out.println("Connection to SQLite has been established.");
	    }
	   return conn;
	}
%>