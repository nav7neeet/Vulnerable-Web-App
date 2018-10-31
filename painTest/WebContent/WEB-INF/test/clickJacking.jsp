
<%@ include file="/WEB-INF/views/commonPage.jsp"%>

<html>
<head>

<title>Click Jacking Test</title>
</head>
<body>
	<h3>Demystify Click Jacking</h3>
	
	<br>
	<%
		String path = (String) request.getAttribute("path");
		if ("patched".equals(path))
		{	
			path = "patched";
			out.print("Check console to see that the Bank portal was not loaded in the frame.cool!");
		}
	%>
	
	<iframe
		src="${pageContext.request.contextPath}/result/bankPortal?path=${param.path }"
		style="width: 200px; height: 150px; position: absolute; top: 200px; left: 00px; z-index: -1; opacity: 1.0">
	</iframe>

	<form
		action="${pageContext.request.contextPath}/result/evilWebsite">
		<input type="submit"
			style="position: relative; top: 110px; opacity: 0.0">
	</form>
</body>
</html>