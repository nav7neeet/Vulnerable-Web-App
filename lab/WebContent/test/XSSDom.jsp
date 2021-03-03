<!DOCTYPE html>
<html>
<head><title>Lab</title>
  <script>
    //Get the value of input parameter
    var urlParams = document.location.search;
    var searchParams = new URLSearchParams(urlParams);
    var input = searchParams.get('input');
    
    var vulnerable = "${param.vulnerable}";
    
    if (vulnerable === "false")
    {	
    	document.write("<h4>User input inserted into JS DOM after output encoding.</h4>");
    	document.write(escape(input));
    }
    else if (vulnerable === "true")
    {
    	document.write("<h4>User input inserted into JS DOM without any output encoding.</h4>")
    	document.write(unescape(input));
    }
  </script>
</head>

<body>
  <%@ include file="/commonPage.jsp"%>
  <%
  	response.setHeader("X-XSS-Protection", "0");
  %>
</body>
</html>
