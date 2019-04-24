<%@ include file="/commonPage.jsp"%>
<html>
<head>
    <title>Test XXE</title>
    <script>
	    function sendXml()
	    {
		       var xmlhttp = new XMLHttpRequest();
		       xmlhttp.open("POST","${pageContext.request.contextPath}/result/xxe");
		       var xmlDoc;
		       xmlhttp.onreadystatechange = function() 
		       {
		           if (xmlhttp.readyState == 4 && xmlhttp.status == 200)
		           {
			           document.getElementById("result").innerHTML=xmlhttp.responseText
		           }
		       };
		       xmlhttp.setRequestHeader('Content-Type', 'text/xml');
		       var xml =document.getElementById("input").value;
		       xmlhttp.send(xml);
	      }
    </script>
</head>
<body>
<h3>Demystify XXE</h3>

	<form>
		Input <br> 
		<textarea name="input" id="input" rows="15" cols="50"></textarea><br>
		<input type="button" onclick="sendXml()" value="submit"><br><br>
	</form>
	<div id="result"></div>
</body>
</html>