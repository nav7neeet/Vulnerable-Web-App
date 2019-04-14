<%@ include file="/commonPage.jsp" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<a href="${pageContext.request.contextPath}/test/sqlInjection.jsp?path=unpatched&context=error">SQL Injection - unpatched (context: error)</a><br>
<a href="${pageContext.request.contextPath}/test/sqlInjection.jsp?path=unpatched&context=blind">SQL Injection - unpatched (context: blind)</a><br><br>

<a href="${pageContext.request.contextPath}/test/sqlInjection.jsp?path=patched&context=error">SQL Injection - patched (context: error)</a><br>
<a href="${pageContext.request.contextPath}/test/sqlInjection.jsp?path=patched&context=blind">SQL Injection - patched (context: blind)</a><br><br>

<a href="${pageContext.request.contextPath}/test/xss.jsp?path=unpatched&context=body">XSS - unpatched (context: Body)</a><br>
<a href="${pageContext.request.contextPath}/test/xss.jsp?path=unpatched&context=attribute">XSS - unpatched (context: Attribute)</a><br>
<a href="${pageContext.request.contextPath}/test/xss.jsp?path=unpatched&context=hidden">XSS - unpatched (context: Hidden variable)</a><br>
<a href="${pageContext.request.contextPath}/test/xss.jsp?path=unpatched&context=js">XSS - unpatched (context: Java Script)</a><br>
<a href="${pageContext.request.contextPath}/test/xss.jspDom?path=unpatched&context=dom&userinput=<script>alert('xss')</script>">XSS - unpatched (context: dom)</a><br>
<a href="${pageContext.request.contextPath}/test/xss.jsp?path=unpatched&context=css">XSS - unpatched (context: CSS) In progress</a><br><br>

<a href="${pageContext.request.contextPath}/test/xss.jsp?path=patched&context=body">XSS - patched (context: Body)</a><br>
<a href="${pageContext.request.contextPath}/test/xss.jsp?path=patched&context=attribute">XSS - patched (context: Attribute)</a><br>
<a href="${pageContext.request.contextPath}/test/xss.jsp?path=patched&context=hidden">XSS - patched (context: Hidden variable)</a><br>
<a href="${pageContext.request.contextPath}/test/xss.jsp?path=patched&context=js">XSS - patched (context: Java Script)</a><br><br>
<a href="${pageContext.request.contextPath}/test/xss.jspDom?path=patched&context=dom&default=<script>alert(1)</script>">XSS - patched (context: dom)</a><br>
<a href="${pageContext.request.contextPath}/test/xss.jsp?path=patched&context=css">XSS - unpatched (context: CSS) In progress</a><br><br>

<a href="${pageContext.request.contextPath}/test/csrf.jsp?path=unpatched&method=get">CSRF GET - unpatched</a><br>
<a href="${pageContext.request.contextPath}/test/csrf.jsp?path=unpatched&method=post">CSRF POST - unpatched</a><br>
<a href="${pageContext.request.contextPath}/test/csrf.jsp?path=patched&method=get">CSRF(GET & POST) - patched</a><br><br>

<a href="${pageContext.request.contextPath}/test/fileUpload.jsp?path=patched">File upload - patched </a><br><br>

</body>
</html>
