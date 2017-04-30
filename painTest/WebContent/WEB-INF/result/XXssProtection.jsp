<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/WEB-INF/views/commonPage.jsp"%>
<html>
<head>
<title>XSS</title>
</head>
<body>
		<%
			String name = (String) request.getAttribute("userInput");
			String patched=(String)request.getAttribute("patched");
			if("true".equals(patched))
				out.print("<h4>X-XSS-Protection Header Enabled</h4>");
			else
				out.print("<h4>X-XSS-Protection Header Disabled</h4>");
		%>
		${requestScope.userInput }
</body>
</html>
