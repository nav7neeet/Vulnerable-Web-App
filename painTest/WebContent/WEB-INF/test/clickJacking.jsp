<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ include file="/WEB-INF/views/commonPage.jsp"%>

<html>
<head>

<title>Click Jacking Test</title>
</head>
<body>
	<h3>Demystify Click Jacking</h3>
	
	<br>
	<%
		String path = "";
		String patched = (String) request.getAttribute("patched");
		if ("true".equals(patched))
		{	
			path = "patched";
			out.print("Check console to see that the Bank portal was not loaded in the frame.cool!");
		}
		else if ("false".equals(patched))
			path = "unpatched";
	%>
	
	
	
	<iframe
		src="${pageContext.request.contextPath}/restricted/${param.path }/bankPortal"
		style="width: 200px; height: 150px; position: absolute; top: 200px; left: 00px; z-index: -1; opacity: 1.0">
	</iframe>

	<form
		action="${pageContext.request.contextPath}/restricted/evilWebsite">
		<input type="submit"
			style="position: relative; top: 110px; opacity: 0.0">
	</form>
</body>
</html>