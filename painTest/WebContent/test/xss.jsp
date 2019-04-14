<%@ include file="/commonPage.jsp"%>
<html>
<head>
<title>Test XSS</title>
</head>
<body>
	<h3>Demystify XSS</h3>

	<form
		action="${pageContext.request.contextPath}/result/xss?param=${param.param}" method="post">
		Input - <input type="text" name="name"> <input type="submit">
		<input type="hidden" name="context" value="${param.context}">
	</form>
</body>
</html>
