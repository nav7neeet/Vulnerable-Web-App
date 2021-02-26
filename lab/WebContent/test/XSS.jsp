<%@ include file="/commonPage.jsp"%>
<html>
<head>
	<title>Test XSS</title>
</head>
<body>
	<h4>Chapter: XSS (Context - ${param.context})</h4>

	<form
		action="${pageContext.request.contextPath}/result/XSS.jsp?vulnerable=${param.vulnerable}" method="post">
		Input - <input size="30" type="text" name="input"> <input type="submit">
		<input type="hidden" name="context" value="${param.context}">
	</form>
	
	<%@ include file = "/instructions/XSS.jsp" %>
	
</body>
</html>
