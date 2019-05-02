<%@ include file="/commonPage.jsp"%>
<html>
<head>
<title>Test AngularJS Template Injection</title>
</head>
<body>
	<h3>Demystify AngularJS Template Injection</h3>

	<form
		action="${pageContext.request.contextPath}/result/angularInjection?param=${param.param}" method="post">
		Input - <input type="text" name="name"> <input type="submit">
	</form>
</body>
</html>
