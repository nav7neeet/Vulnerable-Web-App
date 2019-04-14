<%@ include file="/commonPage.jsp" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<a href="${pageContext.request.contextPath}/test/sqlInjection.jsp?param=unpatched&context=error">SQL Injection - unpatched (context: error)</a><br>
<a href="${pageContext.request.contextPath}/test/sqlInjection.jsp?param=unpatched&context=blind">SQL Injection - unpatched (context: blind)</a><br><br>

<a href="${pageContext.request.contextPath}/test/sqlInjection.jsp?param=patched&context=error">SQL Injection - patched (context: error)</a><br>
<a href="${pageContext.request.contextPath}/test/sqlInjection.jsp?param=patched&context=blind">SQL Injection - patched (context: blind)</a><br><br>

<a href="${pageContext.request.contextPath}/test/xss.jsp?param=unpatched&context=body">XSS - unpatched (context: Body)</a><br>
<a href="${pageContext.request.contextPath}/test/xss.jsp?param=unpatched&context=attribute">XSS - unpatched (context: Attribute)</a><br>
<a href="${pageContext.request.contextPath}/test/xss.jsp?param=unpatched&context=hidden">XSS - unpatched (context: Hidden variable)</a><br>
<a href="${pageContext.request.contextPath}/test/xss.jsp?param=unpatched&context=js">XSS - unpatched (context: Java Script)</a><br>
<a href="${pageContext.request.contextPath}/test/xssDom.jsp?param=unpatched&context=dom&userinput=<script>alert('xss')</script>">XSS - unpatched (context: dom)</a><br>
<a href="${pageContext.request.contextPath}/test/xss.jsp?param=unpatched&context=css">XSS - unpatched (context: CSS) In progress</a><br><br>

<a href="${pageContext.request.contextPath}/test/xss.jsp?param=patched&context=body">XSS - patched (context: Body)</a><br>
<a href="${pageContext.request.contextPath}/test/xss.jsp?param=patched&context=attribute">XSS - patched (context: Attribute)</a><br>
<a href="${pageContext.request.contextPath}/test/xss.jsp?param=patched&context=hidden">XSS - patched (context: Hidden variable)</a><br>
<a href="${pageContext.request.contextPath}/test/xss.jsp?param=patched&context=js">XSS - patched (context: Java Script)</a><br>
<a href="${pageContext.request.contextPath}/test/xssDom.jsp?param=patched&context=dom&userinput=<script>alert(1)</script>">XSS - patched (context: dom)</a><br>
<a href="${pageContext.request.contextPath}/test/xss.jsp?param=patched&context=css">XSS - patched (context: CSS) In progress</a><br><br>

<a href="${pageContext.request.contextPath}/test/csrf.jsp?param=unpatched&method=get">CSRF GET - unpatched</a><br>
<a href="${pageContext.request.contextPath}/test/csrf.jsp?param=unpatched&method=post">CSRF POST - unpatched</a><br>
<a href="${pageContext.request.contextPath}/test/csrf.jsp?param=patched&method=get">CSRF(GET & POST) - patched</a><br><br>

<a href="${pageContext.request.contextPath}/test/fileUpload.jsp?param=patched">File upload - patched </a><br><br>

</body>
</html>
