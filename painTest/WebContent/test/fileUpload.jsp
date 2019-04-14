<%@ include file="/commonPage.jsp"%>
<html>
<head>
<title>Test File Upload</title>
</head>
<body>
	<h3>Demystify File Upload</h3>

	<form
		action="${pageContext.request.contextPath}/upload?param=${param.path}"
		method="post" enctype = "multipart/form-data">
		Input - <input type="file" name="file"> <input type="submit">
		<input type="hidden" name="context" value="${param.context}">
	</form>
</body>
</html>
