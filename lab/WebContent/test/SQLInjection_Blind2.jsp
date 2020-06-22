<%@ include file="/commonPage.jsp"%>
<html>
<head>
<title>Test SQL Injection</title>
</head>
<body>
	<h3>Demystify SQL Injection</h3>

	<form
		action="${pageContext.request.contextPath}/result/SQLInjection_Blind2.jsp?vulnerable=${param.vulnerable}" method="post">
		Find star artist - <input type="text" name="input" size="60"><br><br>
		<input type="submit">
		<input type="hidden" name="context" value="${param.context}">
	</form>
</body>
</html>
