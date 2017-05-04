
<%@ include file="/WEB-INF/views/commonPage.jsp" %>
<html>
<head>
<title>Test SQL Injection</title>
</head>
<body>
		<h3>Demystify Sql Injection</h3>
		
		<form action="${pageContext.request.contextPath }/restricted/${param.path }/sql"  method="post">
				First name - <input type="text" name="name"> <input
						type="submit"
				>
		</form>
</body>
</html>
