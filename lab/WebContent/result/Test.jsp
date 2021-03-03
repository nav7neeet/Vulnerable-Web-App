<!DOCTYPE html>
<html>
<head><title>Result</title></head>
<body>
  <%@ include file="/commonPage.jsp"%>
  <% 
    String vulnerable=(String)request.getParameter("vulnerable");
    String input=(String)request.getParameter("input");
    
    if("true".equals(vulnerable))
    {	
    	out.print("<h4>User input inserted into . </h4>");
    }	
    else
    {
    	out.print("<h4>User input inserted into . </h4>");
    }	
  %>
</body>
</html>