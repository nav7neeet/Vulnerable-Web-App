<!DOCTYPE html>
<html>
<head><title>Lab</title></head>
<body>
  <%@ include file="/commonPage.jsp"%>
  <h4>Lab: XSS (Context - ${param.context})</h4>
  
  <form
  	action="${pageContext.request.contextPath}/result/XSS.jsp?vulnerable=${param.vulnerable}" method="post">
  	Input - <input size="30" type="text" name="input"> <input type="submit">
  	<input type="hidden" name="context" value="${param.context}">
  </form>
  
  <%@ include file = "/instructions/XSS.jsp" %>
</body>
</html>
