<%@ page import = "org.owasp.esapi.ESAPI" %>
<!DOCTYPE html>
<html ng-app>
<head><title>Result</title>
  <script
    src="https://ajax.googleapis.com/ajax/libs/angularjs/1.7.8/angular.min.js">
  </script>
</head>

<body>
  <%@ include file="/commonPage.jsp"%>
  <% 
  	String vulnerable=(String)request.getParameter("vulnerable");
  	String input=(String)request.getParameter("input");
  	
  	if("false".equals(vulnerable))
  	{	
  		out.print("<h4>User input inserted into AngularJS template with ng-non-bindable directive</h4> Check the page source<br><br>");
  		out.print("<div  ng-non-bindable>"+input+"</div>");
  	}	
  	else
  	{
  		input = ESAPI.encoder().encodeForHTML(input);
  		out.print("<h4>User input inserted into AngularJS template without ng-non-bindable directive</h4> Check the page source<br><br>");
  		out.print("<div>"+input+"</div>");
  	}	
  %>
</body>
</html>
