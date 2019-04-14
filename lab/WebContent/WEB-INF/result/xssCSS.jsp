<%@ include file="/commonPage.jsp"%>
<html>
<head>
<title>Test Result - XSS</title>
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
