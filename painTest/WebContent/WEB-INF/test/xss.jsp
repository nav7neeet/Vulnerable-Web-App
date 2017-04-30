<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/WEB-INF/views/commonPage.jsp"%>
<html>
<head>
<title>Test XSS</title>
</head>
<body>
	<h3>Demystify XSS</h3>

	<form
		action="${pageContext.request.contextPath}/restricted/${param.path }/xss"
		method="post">
		Input - <input type="text" name="name"> <input type="submit">

		<input type="hidden" name="context" value="${param.context}">
	</form>
</body>
</html>
