
<%@ include file="/WEB-INF/views/commonPage.jsp"%>
<html>
<head>
	<title>XSS</title>
</head>
<body>
	<%
		response.setHeader("X-XSS-Protection", "0");
	%>
	<%
		String patched = (String) request.getAttribute("patched");
		if ("true".equals(patched)) out
				.print("<h4>User input inserted into the HTML attribute after output encoding Lolz..</h4> Check the page source to see the encoding..<br><br>");
		else
			out.print("<h4>User input inserted into the HTML attribute without any output encoding Lolz..</h4>");
	%>
	
	<br>
	<a href=http://www.google.com/${requestScope.userInput}> Google</a><br><br>
	
	<input type="textbox" maxlength="255" value="${requestScope.userInput}">

</body>
</html>
