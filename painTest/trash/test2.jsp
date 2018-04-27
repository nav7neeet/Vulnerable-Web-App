<%@ include file="/WEB-INF/views/commonPage.jsp"%>
<html>
<head>
<title>XSS</title>
</head>


<body>
	<%
		response.setHeader("X-XSS-Protection", "0");
	%>
</body>

<div id="testdom"></div>
<script type="text/javascript">

	var pos = document.URL.indexOf("default="); //finds the position of value 
	var userInput = document.URL.substring(pos, document.URL.length); //copy the value into userInput variable
	
	document.write(unescape(userInput)); //writes content to the webpage
	
	document.getElementById("testdom").innerHTML =userInput;
	
</script>

</html>
