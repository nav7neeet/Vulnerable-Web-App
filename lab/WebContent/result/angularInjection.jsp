<%@ include file="/commonPage.jsp"%>
<html ng-app>
<head>
<title>Test Result - Angular Template Injection</title>
<script
	src="https://ajax.googleapis.com/ajax/libs/angularjs/1.7.8/angular.min.js">
</script>
</head>

<body>
		<% 
			String patched=(String)request.getAttribute("patched");
			String userInput=(String)request.getAttribute("userInput");
			
			if("true".equals(patched))
			{	
				out.print("<h4>User input inserted into AngularJS template with ng-non-bindable directive</h4> Check the page source<br><br>");
				out.print("<div  ng-non-bindable>"+userInput+"</div>");
			}	
			else
			{
				out.print("<h4>User input inserted into AngularJS template without ng-non-bindable directive</h4> Check the page source<br><br>");
				out.print("<div>"+userInput+"</div>");
			}	
		%>
		<br>

</body>
</html>
