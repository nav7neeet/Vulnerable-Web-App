<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/WEB-INF/views/commonPage.jsp"%>
<html>
<head>
<title>CSP</title>
<script nonce="12">
	alert(1)
</script>
<script>
	alert(2)
</script>
</head>
<body background="https://i.ytimg.com/vi/5vTIvrlIV9M/maxresdefault.jpg">
	<%
		response.setHeader("X-XSS-Protection", "0");
	%>
	<h4>User input inserted into the body without any output encoding
		Lolz..</h4>
	<br>
	<%
		String name = (String) request.getAttribute("userInput");
		String patched = (String) request.getAttribute("patched");
		out.print(name);
	%>
	<%
		if ("true".equals(patched))
		{
	%>
	<%@ include file="/WEB-INF/views/cspHeader.jsp"%>
	<%
		}
	%>
</body>
</html>
