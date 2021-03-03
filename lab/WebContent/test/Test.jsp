<!DOCTYPE html>
<html>
<head>
<title>Lab</title></head>
<body>
  <%@ include file="/commonPage.jsp"%>
  <h4>Lab: vulnerabilityName</h4>
  
  <form
  	action="${pageContext.request.contextPath}/result/vulnerabilityName.jsp?vulnerable=${param.vulnerable}" method="post">
  	Input: <input type="text" name="input"> <input type="submit">
  </form>
	
<%@ include file="/instructions/Test.jsp"%>
</body>	
</html>
