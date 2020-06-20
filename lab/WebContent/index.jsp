<html>
<head>
	<title>Home</title>
</head>
<body>

<h4>Welcome to vulnerable web application!</h4>

<a href="${pageContext.request.contextPath}/test/angularInjection.jsp?vulnerable=true">AngularJS template Injection - vulnerable</a><br>
<a href="${pageContext.request.contextPath}/test/angularInjection.jsp?vulnerable=false">AngularJS template Injection - not vulnerable</a><br><br>

<a href="${pageContext.request.contextPath}/test/SQLInjection_Error.jsp?vulnerable=true&context=error">SQL Injection - vulnerable (context: error)</a><br>
<a href="${pageContext.request.contextPath}/test/SQLInjection_Blind.jsp?vulnerable=true&context=blind">SQL Injection - vulnerable (context: blind)</a><br><br>

<a href="${pageContext.request.contextPath}/test/sqlInjection.jsp?vulnerable=false&context=error">SQL Injection - not vulnerable (context: error)</a><br>
<a href="${pageContext.request.contextPath}/test/sqlInjection2.jsp?vulnerable=false&context=blind">SQL Injection - not vulnerable (context: blind)</a><br><br>

<a href="${pageContext.request.contextPath}/test/XSS.jsp?vulnerable=true&context=HTML">XSS - vulnerable (context: HTML)</a><br>
<a href="${pageContext.request.contextPath}/test/XSS.jsp?vulnerable=true&context=HTML_Attribute">XSS - vulnerable (context: Attribute)</a><br>
<a href="${pageContext.request.contextPath}/test/XSS.jsp?vulnerable=true&context=Hidden_Variable">XSS - vulnerable (context: Hidden variable)</a><br>
<a href="${pageContext.request.contextPath}/test/XSS.jsp?vulnerable=true&context=JS">XSS - vulnerable (context: Java Script)</a><br>
<a href="${pageContext.request.contextPath}/test/XSSDom.jsp?vulnerable=true&context=DOM&input=<script>alert('xss')</script>">XSS - vulnerable (context: DOM)</a><br>
<a href="${pageContext.request.contextPath}/test/XSS.jsp?vulnerable=true&context=CSS">XSS - vulnerable (context: CSS) In progress</a><br><br>

<a href="${pageContext.request.contextPath}/test/XSS.jsp?vulnerable=false&context=HTML">XSS - not vulnerable (context: HTML)</a><br>
<a href="${pageContext.request.contextPath}/test/XSS.jsp?vulnerable=false&context=HTML_Attribute">XSS - not vulnerable (context: HTML Attribute)</a><br>
<a href="${pageContext.request.contextPath}/test/XSS.jsp?vulnerable=false&context=Hidden_Variable">XSS - not vulnerable (context: Hidden Variable)</a><br>
<a href="${pageContext.request.contextPath}/test/XSS.jsp?vulnerable=false&context=JS">XSS - not vulnerable (context: Java Script)</a><br>
<a href="${pageContext.request.contextPath}/test/XSSDom.jsp?vulnerable=false&context=DOM&input=<script>alert('xss')</script>">XSS - not vulnerable (context: DOM)</a><br>
<a href="${pageContext.request.contextPath}/test/XSS.jsp?vulnerable=false&context=CSS">XSS - not vulnerable (context: CSS) In progress</a><br><br>

<a href="${pageContext.request.contextPath}/test/CSRF.jsp?vulnerable=true&method=GET">CSRF GET - vulnerable</a><br>
<a href="${pageContext.request.contextPath}/test/CSRF.jsp?vulnerable=true&method=POST">CSRF POST - vulnerable</a><br>
<a href="${pageContext.request.contextPath}/test/CSRF.jsp?vulnerable=false&method=GET">CSRF GET - not vulnerable</a><br>
<a href="${pageContext.request.contextPath}/test/CSRF.jsp?vulnerable=false&method=POST">CSRF POST - not vulnerable</a><br><br>

<a href="${pageContext.request.contextPath}/test/XXE.jsp?vulnerable=true">XXE - vulnerable</a><br><br>

<a href="${pageContext.request.contextPath}/test/fileUpload.jsp?vulnerable=false">File upload - not vulnerable </a><br><br>

<a href="${pageContext.request.contextPath}/test/xhr.jsp?vulnerable=true">XML HTTP Request </a><br><br>

<a href="${pageContext.request.contextPath}/test/CommandInjection.jsp?vulnerable=true">Command Injection - vulnerable </a><br><br>


</body>
</html>
