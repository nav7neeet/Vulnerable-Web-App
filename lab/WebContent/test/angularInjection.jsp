<!DOCTYPE html>
<html>
  <head><title>Lab</title></head>
<body>
  <%@ include file="/commonPage.jsp"%>
  <h4>Lab: AngularJS Template Injection</h4>

  <form
    action="${pageContext.request.contextPath}/result/angularInjection.jsp?vulnerable=${param.vulnerable}"
    method="post">
    Input: <input type="text" name="input"> <input type="submit">
  </form>

  <%@ include file="/instructions/angularinjection.jsp"%>
</body>
</html>