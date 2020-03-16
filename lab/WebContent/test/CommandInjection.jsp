<%@ include file="/commonPage.jsp"%>
<html>
<head>
<title>Test Command Injection</title>
</head>
<body>
	<h4>Chapter: Command Injection</h4>

	<form
		action="${pageContext.request.contextPath}/result/CommandInjection.jsp?vulnerable=${param.vulnerable}" method="post">
		IP Address To Ping: <input type="text" name="input"> <input type="submit">
	</form>
	
<%@ include file="/instructions/CommandInjection.jsp"%>
</body>	
</html>
