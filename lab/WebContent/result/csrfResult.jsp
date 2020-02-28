<%@ include file="/commonPage.jsp" %>
<html>
<head>
	<title>Test Result - CSRF</title>
</head>

<body>
<% 
	String errorMessage= (String)request.getAttribute("errorMessage"); 

	if("unpatched".equals((String)request.getAttribute("test")))
	{
		out.print("Account recovery email updated successfully in the DB");
	}
	
	else if(errorMessage==null)
	{
		out.print("No csrf detected!, Account recovery email updated successfully in the DB");
	}
	else
	{
		out.println("Csrf detected!, Account recovery email NOT updated in the DB");
	}
%>
</body>
</html>
