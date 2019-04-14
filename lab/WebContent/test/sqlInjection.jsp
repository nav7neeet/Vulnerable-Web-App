<%@ include file="/commonPage.jsp"%>
<html>
<head>
<title>Test SQL Injection</title>
</head>
<body>
	<h3>Demystify SQL Injection</h3>

	<form
		action="${pageContext.request.contextPath}/result/sqlInjection?param=${param.param}" method="post">
		Input - <input type="text" name="id"> <input type="submit">
		<input type="hidden" name="context" value="${param.context}">
	</form>
</body>
</html>
