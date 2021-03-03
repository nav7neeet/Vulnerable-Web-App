<!DOCTYPE html>
<html>
<head><title>Lab</title></head>
<body>
  <%@ include file="/commonPage.jsp"%>
  <h4>Lab: One Way CSRF</h4>
  
  Click below to send Post request with XML content.<br>
  <form enctype="text/plain"
  	action="${pageContext.request.contextPath}/result/One-Way-CSRF.jsp?vulnerable=${param.vulnerable}"
  	method="post">
  	 <input type="hidden" name='<?xml version' value='"1.0"?><employees><employee id="111"><firstName>Lokesh</firstName><lastName>Gupta</lastName><location>India</location></employee><employee id="333"><firstName>David</firstName><lastName>Feezor</lastName><location>USA</location></employee></employees>'>
  	 <input type="button" onclick=submit() value="Submit">
  </form>
  
  <script type="text/javascript">
  	function submit()
  	{
  		document.forms[0].submit()
  	}	
  </script>
  
  <%@ include file="/instructions/One-Way-CSRF.jsp"%>
</body>
</html>
