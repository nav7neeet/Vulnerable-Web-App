<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="/WEB-INF/views/commonPage.jsp" %>
<html>
<head>
	<title>CSRF Result</title>
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
