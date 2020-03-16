<%@ include file="/commonPage.jsp"%>
<html>
<head>
<title>Test vulnerabilityName</title>
</head>
<body>
	<h4>Chapter: vulnerabilityName</h4>

	<form
		action="${pageContext.request.contextPath}/result/vulnerabilityName.jsp?vulnerable=${param.vulnerable}" method="post">
		Input: <input type="text" name="input"> <input type="submit">
	</form>
	
<%@ include file="/instructions/Test.jsp"%>
</body>	
</html>
