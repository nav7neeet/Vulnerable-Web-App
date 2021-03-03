<%@ page import="java.util.Iterator"%>
<%@ page import="java.util.List"%>
<%@ page import="java.sql.Connection" %>    
<%@ page import="java.sql.PreparedStatement" %>    
<%@ page import="java.sql.ResultSet" %>    
<%@ page import="java.sql.Statement" %>  
<%@ page import="java.util.ArrayList" %>
<%@ page import="java.util.List" %>
<%@ include file="Database.jsp"%>
<%@ page import="java.util.Iterator"%>

<!DOCTYPE html>
<html>
<head><title>Result</title></head>
<body>
  <%@ include file="/commonPage.jsp"%>
  <%
  	String input=request.getParameter("input");
  	String vulnerable=request.getParameter("vulnerable");
  	String temp="";
  	boolean star_artist=false;
  	
  	try
  	{
  		Connection conn = connect();
  		ResultSet rs=null;
  	
  		if ("true".equals(vulnerable))
  		{
  			String sql = "select * from artists where ArtistId ='" + input + "'";
  			Statement stmt  = conn.createStatement();
  			rs    = stmt.executeQuery(sql);
  		} 
  	      
  		 // loop through the result set
  		 while (rs.next())
  		 {
  			temp=rs.getString(2);
  			if("Black Eyed Peas".equals(temp))
  			{
  				star_artist=true;
  				break;
  			}	
  		 }
  		 
  		 if(star_artist)
  			out.print("<b>Black Eyed Peas is the star artist!<b>");
  		 else
  			out.print("<b>I am the con artist!<b>");
  	} 
  	catch (Exception e)
  	{
  		out.print("<b>I am the con artist!<b>");
  	}
  %>
</body>
</html>
