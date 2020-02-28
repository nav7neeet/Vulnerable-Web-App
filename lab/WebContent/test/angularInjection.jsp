<%@ include file="/commonPage.jsp"%>
<html>
<head>
<title>Test AngularJS Template Injection</title>
</head>
<body>
	<h4>Chapter: AngularJS Template Injection</h4>

	<form
		action="${pageContext.request.contextPath}/result/angularInjection.jsp?vulnerable=${param.vulnerable}" method="post">
		Input: <input type="text" name="input"> <input type="submit">
	</form>
	
<%@ include file="/instructions/angularinjection.jsp"%>
</body>	
</html>
