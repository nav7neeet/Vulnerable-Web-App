<%@ include file="/commonPage.jsp"%>
<html>
<head>
    <title>Test XXE</title>
    <script>
	    function sendXml()
	    {
		       var xhr = new XMLHttpRequest();
		       xhr.open("POST", "${pageContext.request.contextPath}/result/XXE.jsp");
		       var xmlDoc;
		       
		       xhr.onreadystatechange = function() 
		       {
		           if (xhr.readyState == 4 && xhr.status == 200)
		           {
			           document.getElementById("result").innerHTML=xhr.responseText
		           }
		       };
		       
		       xhr.setRequestHeader('Content-Type', 'text/xml');
		       var xml = document.getElementById("input").value;
		       xhr.send(xml);
	      }
    </script>
</head>

<body>
<h4>Chapter: XXE</h4>

	<form>
		Input <br> 
		<textarea name="input" id="input" rows="15" cols="60"></textarea><br><br>
		<input type="button" onclick="sendXml()" value="submit"><br><br>
	</form>
	<div id="result"></div>
	
	<%@ include file = "/instructions/XXE.jsp" %>
	
</body>
</html>