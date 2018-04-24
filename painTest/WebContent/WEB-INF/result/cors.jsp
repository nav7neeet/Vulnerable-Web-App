<%@ include file="/WEB-INF/views/commonPage.jsp"%>
<html>
<head>
<title>CORS</title>
<% 
	if("patched".equals(request.getParameter(("path"))))
	{
		response.setHeader("Access-Control-Allow-Origin", "http://127.0.0.2:8080"); 
	}
%>
</head>
<body>
	Hey Jamdagni you should have not done like that..
</body>