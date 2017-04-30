<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/WEB-INF/views/commonPage.jsp"%>
<html>
<head>
<title>XSS</title>
</head>
<style>
h4
{
	color:${requestScope.userInput };
}
</style>
<body>
	<h4>Using user input in CSS! Xssed</h4>
</body>
</html>
