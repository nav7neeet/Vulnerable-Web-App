<%@ include file="/commonPage.jsp"%>
<html>
<head>
<title>Test Result - XSS</title>
</head>

<body>
	<% response.setHeader("X-XSS-Protection", "0"); %>
	<% 
		String patched=(String)request.getAttribute("patched");
		if("true".equals(patched))
			out.print("<h4>User input inserted into hidden variable after output encoding</h4> Check the page source to see the encoding..<br><br>");
		else
			out.print("<h4>User input inserted into hidden variable without any output encoding</h4>");
	%>
	<br>
	<input type="hidden" value="${requestScope.userInput }">
</body>
</html>
