<%@page import="java.net.http.HttpRequest"%>
<%@ include file="/commonPage.jsp"%>
<html>
<head>
    <title>Test XXE</title>
    <style>
		li{line-height: 1.8;}
		
		/* Style the tab */
		.tab {
			overflow: hidden;
			border: 1px solid #ccc;
			background-color: #f1f1f1;
		}
		
		/* Style the buttons inside the tab */
		.tab button {
			background-color: inherit;
			float: left;
			border: none;
			outline: none;
			cursor: pointer;
			padding: 10px 12px;
			transition: 0.3s;
			font-size: 16px;
		}
		
		/* Change background color of buttons on hover */
		.tab button:hover {
			background-color: #ddd;
		}
		
		/* Create an active/current tablink class */
		.tab button.active {
			background-color: #ccc;
		}
		
		/* Style the tab content */
		.tabcontent {
			display: none;
			padding: 6px 12px;
			border: 1px solid #ccc;
			border-top: none;
		}
	</style>
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
	<%
		String context=request.getParameter("context");
		session.setAttribute("context", context);
	%>
	
</body>
</html>