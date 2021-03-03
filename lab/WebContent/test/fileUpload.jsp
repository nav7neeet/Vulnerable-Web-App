<!DOCTYPE html>
<html>
<head><title>Lab</title></head>
<body>
  <%@ include file="/commonPage.jsp"%>
  <h4>Lab: File Upload</h4>
  
  <form
  	action="${pageContext.request.contextPath}/upload?param=${param.param}"
  	method="post" enctype = "multipart/form-data">
  	Input - <input type="file" name="file"> <input type="submit">
  	<input type="hidden" name="context" value="${param.context}">
  </form>
</body>
</html>
