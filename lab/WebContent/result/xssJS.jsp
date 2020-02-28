<%@ include file="/commonPage.jsp"%>
<html>
<head>
<title>Test Result - XSS</title>
<script type="text/javascript">
	var a=10;
	var b=20;
	var c="${requestScope.userInput }";
</script>
</head>

<body>
	<% response.setHeader("X-XSS-Protection", "0"); %>
	<% 
			String patched=(String)request.getAttribute("patched");
			if("true".equals(patched))
				out.print("<h4>User input inserted into JS after output encoding</h4> Check the page source to see the encoding..<br><br>");
			else
				out.print("<h4>User input inserted into JS without any output encoding</h4>");
		%>
</body>
</html>
