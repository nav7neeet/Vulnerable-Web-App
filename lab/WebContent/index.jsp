<!DOCTYPE html>
<html>
  <head><title>Vulnerable Web Application</title></head>
<body>
  <%
  	String contextPath = request.getContextPath();
  	String path = contextPath+"/test";
  %>
  <b>Click on the items listed below to go to the vulnerable lab.</b><br><br>
	
  <a href="<%= path %>/angularInjection.jsp?vulnerable=true">AngularJS template Injection - vulnerable</a><br>
  <a href="<%= path %>/angularInjection.jsp?vulnerable=false">AngularJS template Injection - not vulnerable</a><br><br>
  
  <a href="<%= path %>/SQLInjection_Error.jsp?vulnerable=true&context=error">SQL Injection - vulnerable (context: error)</a><br>
  <a href="<%= path %>/SQLInjection_Blind.jsp?vulnerable=true&context=blind">SQL Injection - vulnerable (context: blind)</a><br><br>
  <a href="<%= path %>/SQLInjection_Blind2.jsp?vulnerable=true&context=blind">SQL Injection - vulnerable (context: blind2)</a><br><br>
  
  <a href="<%= path %>/sqlInjection.jsp?vulnerable=false&context=error">SQL Injection - not vulnerable (context: error)</a><br>
  <a href="<%= path %>/sqlInjection2.jsp?vulnerable=false&context=blind">SQL Injection - not vulnerable (context: blind)</a><br><br>
  
  <a href="<%= path %>/XSS.jsp?vulnerable=true&context=HTML">XSS - vulnerable (context: HTML)</a><br>
  <a href="<%= path %>/XSS.jsp?vulnerable=true&context=HTML_Attribute">XSS - vulnerable (context: Attribute)</a><br>
  <a href="<%= path %>/XSS.jsp?vulnerable=true&context=Hidden_Variable">XSS - vulnerable (context: Hidden variable)</a><br>
  <a href="<%= path %>/XSS.jsp?vulnerable=true&context=JS">XSS - vulnerable (context: Java Script)</a><br>
  <a href="<%= path %>/XSSDom.jsp?vulnerable=true&context=DOM&input=<script>alert()</script>">XSS - vulnerable (context: DOM)</a><br>
  <a href="<%= path %>/Brutelogic-XSS-DOM.jsp">XSS - Brutelogic (context: DOM)</a><br>
  
  <a href="<%= path %>/XSS.jsp?vulnerable=true&context=CSS">XSS - vulnerable (context: CSS) In progress</a><br><br>
  
  <a href="<%= path %>/XSS.jsp?vulnerable=false&context=HTML">XSS - not vulnerable (context: HTML)</a><br>
  <a href="<%= path %>/XSS.jsp?vulnerable=false&context=HTML_Attribute">XSS - not vulnerable (context: HTML Attribute)</a><br>
  <a href="<%= path %>/XSS.jsp?vulnerable=false&context=Hidden_Variable">XSS - not vulnerable (context: Hidden Variable)</a><br>
  <a href="<%= path %>/XSS.jsp?vulnerable=false&context=JS">XSS - not vulnerable (context: Java Script)</a><br>
  <a href="<%= path %>/XSSDom.jsp?vulnerable=false&context=DOM&input=<script>alert('xss')</script>">XSS - not vulnerable (context: DOM)</a><br>
  <a href="<%= path %>/XSS.jsp?vulnerable=false&context=CSS">XSS - not vulnerable (context: CSS) In progress</a><br><br>
  
  <a href="<%= path %>/CSRF.jsp?vulnerable=true&method=GET">CSRF GET - vulnerable</a><br>
  <a href="<%= path %>/CSRF.jsp?vulnerable=true&method=POST">CSRF POST - vulnerable</a><br>
  <a href="<%= path %>/CSRF.jsp?vulnerable=false&method=GET">CSRF GET - not vulnerable</a><br>
  <a href="<%= path %>/CSRF.jsp?vulnerable=false&method=POST">CSRF POST - not vulnerable</a><br>
  <a href="<%= path %>/One-Way-CSRF.jsp?vulnerable=false&method=POST">One Way CSRF - vulnerable</a><br><br>
  
  <a href="<%= path %>/XXE.jsp?vulnerable=true">Normal XXE - vulnerable</a><br>
  <a href="<%= path %>/XXE.jsp?vulnerable=true&context=blind">Blind XXE - vulnerable</a><br><br>
  
  <a href="<%= path %>/fileUpload.jsp?vulnerable=false">File upload - not vulnerable </a><br><br>
  
  <a href="<%= path %>/xhr.jsp?vulnerable=true">XML HTTP Request </a><br><br>
  
  <a href="<%= path %>/CommandInjection.jsp?vulnerable=true">Command Injection - vulnerable </a><br><br>

</body>
</html>
