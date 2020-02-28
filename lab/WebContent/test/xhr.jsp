<%@ include file="/commonPage.jsp"%>
<html>
<head>
	<title>Test XHR</title>
	<script>
		 function sendXHRRequest()
		 {
		     var xmlhttp = new XMLHttpRequest();
		     xmlhttp.open("POST","127.0.0.1/result/xhr");
		     var xmlDoc;
		     xmlhttp.onreadystatechange = function() 
		     {
		         if (xmlhttp.readyState == 4 && xmlhttp.status == 200)
		         {
		          document.getElementById("result").innerHTML=xmlhttp.responseText
		         }
		     };
		     xmlhttp.send(xml);
		   }
	</script>
</head>
<body>
	<h3>Demystify XML HTTP Request</h3>

	<form>
		Input - <input type="button" onclick="sendXHRRequest()" value="submit"><br><br>
	</form>
	<div id="result"></div>
</body>
</html>
