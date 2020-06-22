<%@ include file="/commonPage.jsp"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@ page import="java.sql.Connection" %>    
<%@ page import="java.sql.PreparedStatement" %>    
<%@ page import="java.sql.ResultSet" %>    
<%@ page import="java.sql.Statement" %>  
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ include file="Database.jsp"%>
<%@ page import="java.util.Iterator"%>
<%@ page import="java.sql.SQLException"%>

<html>
<head>
<title>Test Result - SQL Injection</title>
</head>

<body>
<%
	String input=request.getParameter("input");
	String vulnerable=request.getParameter("vulnerable");
	String temp="";
	boolean star_artist=false;
	boolean flag=true;
	
/* 	try
	{ */
		Connection conn = connect();
		ResultSet rs=null;
	
		if ("true".equals(vulnerable))
		{
			String sql = "select ArtistId from artists where ArtistId ='" + input + "'";
			System.out.println(sql);
			Statement stmt  = conn.createStatement();
			rs    = stmt.executeQuery(sql);
		} 
//	} 
/* 	catch (SQLException e)
	{
		//out.print("<b>An error occured while processing your request<b>");
		flag=false;
	} */

	if(flag)
		out.print("<b>Black Eyed Peas is the star artist!");


%>
</body>
</html>
