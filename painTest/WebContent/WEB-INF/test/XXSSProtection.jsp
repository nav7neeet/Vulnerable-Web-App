
<%@ include file="/WEB-INF/views/commonPage.jsp" %>
<html>
<head>
<title>X-XSS protection header</title>
</head>
<body>
		<h3>Demystify X-XSS protection header</h3>
		
		<form action="${pageContext.request.contextPath }/restricted/result/XXSSProtection?param=${param.path }" method="post">
				Input - <input type="text" name="name"> <input
						type="submit"
				>
		</form>
</body>
</html>
