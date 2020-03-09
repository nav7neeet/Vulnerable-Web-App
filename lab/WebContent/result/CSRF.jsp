<%@ include file="/commonPage.jsp" %>
<html>
<head>
	<title>Test Result: CSRF</title>
</head>

<body>
<% 
	String vulnerable = (String)request.getParameter("vulnerable");
	System.out.println(vulnerable);
	String input = (String)request.getParameter("input");
	String randomNumber = (String)request.getParameter("randomNumber");
	System.out.println(randomNumber);
	
	if("true".equals(vulnerable))
	{	
		out.print("<h4>Email Address updated successfully in the DB.");
	}	
	else
	{
		if (randomNumber!=null)
			out.print("<h4>Email Address updated successfully in the DB.");
		else
			out.print("<h4>Email Address NOT updated in the DB.");
	}	
%>

</body>
</html>
