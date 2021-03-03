<!DOCTYPE html>
<html>
<head><title>Lab</title></head>
<body>
  <%@ include file="/commonPage.jsp"%>
  <h4>Lab: Command Injection</h4>

	<form
		action="${pageContext.request.contextPath}/result/CommandInjection.jsp?vulnerable=${param.vulnerable}" method="post">
		IP Address To Ping: <input type="text" name="input"> <input type="submit">
	</form>
	
<%@ include file="/instructions/CommandInjection.jsp"%>
</body>	
</html>
