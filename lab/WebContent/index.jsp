<html>
<head>
	<title>Home</title>
</head>
<body>

<h4>Welcome to vulnerable web application!</h4>

<a href="${pageContext.request.contextPath}/test/angularInjection.jsp?vulnerable=true">AngularJS template Injection - vulnerable</a><br>
<a href="${pageContext.request.contextPath}/test/angularInjection.jsp?vulnerable=false">AngularJS template Injection - not vulnerable</a><br><br>

<a href="${pageContext.request.contextPath}/test/sqlInjection.jsp?vulnerable=true&context=error">SQL Injection - vulnerable (context: error)</a><br>
<a href="${pageContext.request.contextPath}/test/sqlInjection.jsp?vulnerable=true&context=blind">SQL Injection - vulnerable (context: blind)</a><br><br>

<a href="${pageContext.request.contextPath}/test/sqlInjection.jsp?vulnerable=false&context=error">SQL Injection - not vulnerable (context: error)</a><br>
<a href="${pageContext.request.contextPath}/test/sqlInjection.jsp?vulnerable=false&context=blind">SQL Injection - not vulnerable (context: blind)</a><br><br>

<a href="${pageContext.request.contextPath}/test/xss.jsp?vulnerable=true&context=body">XSS - vulnerable (context: Body)</a><br>
<a href="${pageContext.request.contextPath}/test/xss.jsp?vulnerable=true&context=attribute">XSS - vulnerable (context: Attribute)</a><br>
<a href="${pageContext.request.contextPath}/test/xss.jsp?vulnerable=true&context=hidden">XSS - vulnerable (context: Hidden variable)</a><br>
<a href="${pageContext.request.contextPath}/test/xss.jsp?vulnerable=true&context=JS">XSS - vulnerable (context: Java Script)</a><br>
<a href="${pageContext.request.contextPath}/test/xssDom.jsp?vulnerable=true&context=DOM&userinput=<script>alert('xss')</script>">XSS - vulnerable (context: DOM)</a><br>
<a href="${pageContext.request.contextPath}/test/xss.jsp?vulnerable=true&context=CSS">XSS - vulnerable (context: CSS) In progress</a><br><br>

<a href="${pageContext.request.contextPath}/test/xss.jsp?vulnerable=false&context=body">XSS - not vulnerable (context: Body)</a><br>
<a href="${pageContext.request.contextPath}/test/xss.jsp?vulnerable=false&context=attribute">XSS - not vulnerable (context: Attribute)</a><br>
<a href="${pageContext.request.contextPath}/test/xss.jsp?vulnerable=false&context=hidden">XSS - not vulnerable (context: Hidden variable)</a><br>
<a href="${pageContext.request.contextPath}/test/xss.jsp?vulnerable=false&context=JS">XSS - not vulnerable (context: Java Script)</a><br>
<a href="${pageContext.request.contextPath}/test/xssDom.jsp?vulnerable=false&context=DOM&userinput=<script>alert(1)</script>">XSS - not vulnerable (context: DOM)</a><br>
<a href="${pageContext.request.contextPath}/test/xss.jsp?vulnerable=false&context=CSS">XSS - not vulnerable (context: CSS) In progress</a><br><br>

<a href="${pageContext.request.contextPath}/test/CSRF.jsp?vulnerable=true&method=GET">CSRF GET - vulnerable</a><br>
<a href="${pageContext.request.contextPath}/test/CSRF.jsp?vulnerable=true&method=POST">CSRF POST - vulnerable</a><br>
<a href="${pageContext.request.contextPath}/test/CSRF.jsp?vulnerable=false&method=GET">CSRF GET - not vulnerable</a><br>
<a href="${pageContext.request.contextPath}/test/CSRF.jsp?vulnerable=false&method=POST">CSRF POST - not vulnerable</a><br><br>

<a href="${pageContext.request.contextPath}/test/xxe.jsp?vulnerable=true">XXE - vulnerable</a><br><br>

<a href="${pageContext.request.contextPath}/test/fileUpload.jsp?vulnerable=false">File upload - not vulnerable </a><br><br>

<a href="${pageContext.request.contextPath}/test/xhr.jsp?vulnerable=true">XML HTTP Request </a><br><br>

</body>
</html>
