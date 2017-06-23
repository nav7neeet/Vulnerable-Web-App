
<%@ include file="/WEB-INF/views/commonPage.jsp" %>
<html>
<head>
	<title>Home</title>
</head>
<body>
<a href="${pageContext.request.contextPath}/restricted/test/sql?path=unpatched" class="test">SQL Injection - unpatched</a><br>
<a href="${pageContext.request.contextPath}/restricted/test/sql?path=patched">SQL Injection - patched</a><br><br>

<a href="${pageContext.request.contextPath}/restricted/test/xss?path=unpatched&context=body">XSS - unpatched (context: Body)</a><br>
<a href="${pageContext.request.contextPath}/restricted/test/xss?path=unpatched&context=attribute">XSS - unpatched (context: Attribute)</a><br>
<a href="${pageContext.request.contextPath}/restricted/test/xss?path=unpatched&context=hidden">XSS - unpatched (context: Hidden variable)</a><br>
<a href="${pageContext.request.contextPath}/restricted/test/xss?path=unpatched&context=js">XSS - unpatched (context: Java Script)</a><br>
<a href="${pageContext.request.contextPath}/restricted/test/xss?path=unpatched&context=dom&default=test<>">XSS - unpatched (context: dom)</a><br>
<a href="${pageContext.request.contextPath}/restricted/test/xss?path=unpatched&context=css">XSS - unpatched (context: CSS) In progress</a><br><br>

<a href="${pageContext.request.contextPath}/restricted/test/xss?path=patched&context=body">XSS - patched (context: Body)</a><br>
<a href="${pageContext.request.contextPath}/restricted/test/xss?path=patched&context=attribute">XSS - patched (context: Attribute)</a><br>
<a href="${pageContext.request.contextPath}/restricted/test/xss?path=patched&context=hidden">XSS - patched (context: Hidden variable)</a><br>
<a href="${pageContext.request.contextPath}/restricted/test/xss?path=patched&context=js">XSS - patched (context: Java Script)</a><br><br>
<a href="${pageContext.request.contextPath}/restricted/test/xss?path=patched&context=dom&default=test<>">XSS - unpatched (context: dom)</a><br>
<a href="${pageContext.request.contextPath}/restricted/test/xss?path=patched&context=css">XSS - unpatched (context: CSS) In progress</a><br><br>

<a href="${pageContext.request.contextPath}/restricted/test/XXssProtection?path=unpatched">X-XSS-protection Header absent</a><br>
<a href="${pageContext.request.contextPath}/restricted/test/XXssProtection?path=patched">X-XSS-protection Header present</a><br><br>

<a href="${pageContext.request.contextPath}/restricted/test/fraudWebsite">Fraud Web Site</a><br><br>
<a href="${pageContext.request.contextPath}/restricted/test/csrf?path=unpatched&method=get">CSRF GET - unpatched</a><br>
<a href="${pageContext.request.contextPath}/restricted/test/csrf?path=unpatched&method=post">CSRF POST - unpatched</a><br>
<a href="${pageContext.request.contextPath}/restricted/test/csrf?path=patched&method=get">CSRF(GET & POST) - patched</a><br><br>

<a href="${pageContext.request.contextPath}/restricted/test/clickJacking?path=unpatched">Click Jacking - unpatched</a><br>
<a href="${pageContext.request.contextPath}/restricted/test/clickJacking?path=patched">Click Jacking - patched </a><br><br>

<a href="${pageContext.request.contextPath}/restricted/test/roleBasedAuthorization">Role Based Authorization</a><br><br>
<a href="${pageContext.request.contextPath}/test">Test HSTS Header - In progress</a><br><br>

<a href="${pageContext.request.contextPath}/restricted/test/csp?path=unpatched">Content Security Policy - not present</a><br>
<a href="${pageContext.request.contextPath}/restricted/test/csp?path=patched">Content Security Policy - present</a><br><br>

<a href="${pageContext.request.contextPath}/restricted/test/cors?path=unpatched">Cross origin resource sharing - not present</a><br>
<a href="${pageContext.request.contextPath}/restricted/test/cors?path=patched">Cross origin resource sharing - present</a><br><br>


<a href="${pageContext.request.contextPath}/restricted/testPhishingDirect">Phishing Direct</a><br>
<a href="${pageContext.request.contextPath}/restricted/testPhishingIndirect">Phishing Indirect - In progress</a><br>

</body>
</html>
