<!DOCTYPE html>
<html>
<head><title>Lab</title></head>
<body>
  <%@ include file="/commonPage.jsp"%>
  <h4>Lab: SQL Injection</h4>
  
  <form
  	action="${pageContext.request.contextPath}/result/SQLInjection_Blind1.jsp?vulnerable=${param.vulnerable}" method="post">
  	Find star artist - <input type="text" name="input" size="60"><br><br>
  	<input type="submit">
  	<input type="hidden" name="context" value="${param.context}">
  </form>
</body>
</html>
