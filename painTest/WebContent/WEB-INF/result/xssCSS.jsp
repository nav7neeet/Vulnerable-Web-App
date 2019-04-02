<%@ include file="/commonPage.jsp"%>
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
