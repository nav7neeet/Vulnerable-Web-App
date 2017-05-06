
<%@ include file="/WEB-INF/views/commonPage.jsp"%>
<html>
<head>
<title>Test CSP</title>
</head>
<body>
	<h3>Demystify CSP</h3>
	
	<form
		action="${pageContext.request.contextPath }/restricted/result/csp?param=${param.path}"
		method="post">
		Input - <input type="text" name="name"> <input type="submit">
		<input type="hidden" name="hiddenVar" value="body">
	</form>
</body>
</html>
