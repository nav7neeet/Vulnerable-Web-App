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
  <%
  	String input=request.getParameter("input");
  	String vulnerable=request.getParameter("vulnerable");
  	String context=request.getParameter("context");
  	List list = new ArrayList();
  	
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
  		else
  		{
  			String sql = "select * from artists where ArtistId =?";
  			PreparedStatement ps;
  			ps = conn.prepareStatement(sql);
  			ps.setString(1, input);
  			rs    = ps.executeQuery();
  		}
  	 
  		 // loop through the result set
  		 while (rs.next())
  		 {
  		  	list.add(rs.getInt(1));
  			list.add(rs.getString(2));
  		 }
  		 
  		 if(!list.isEmpty())
  		 {
  			Iterator iterator = list.iterator();
  			int c=0;
  			while (iterator.hasNext())
  			{
  				out.print(iterator.next()+" | ");
  				c++;
  				if(c==2)
  				{
  					c=0;
  					out.print("<br><br>");
  				}
  			}
  		}
  		else
  			out.print("<b>No DB records found. Try again.<b>");
  	} 
  	catch (Exception e)
  	{
  		out.print(e.getMessage());
  	}
  	
  %>
</body>
</html>