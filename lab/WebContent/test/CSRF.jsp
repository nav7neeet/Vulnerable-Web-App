<%@ include file="/commonPage.jsp"%>
<html>
<head>
<title>Test CSRF</title>
</head>
<body>
	<h4>Chapter: CSRF (${param.method})</h4>

	<form
		action="${pageContext.request.contextPath}/result/CSRF.jsp" method="${param.method}">
		Email Address: <input type="text" name="input"> <input type="submit">
								  <input type='hidden' name="vulnerable" value="${param.vulnerable}">
		
		<%
			String vulnerable=request.getParameter("vulnerable");
			if("false".equals(vulnerable))
			{
				double randomNumber=Math.random();
				out.print("<input type='hidden' name='randomNumber' value=" + randomNumber + ">");
			}
		%>
	</form>

<%@ include file="/instructions/angularinjection.jsp"%>
</body>	
</html>
