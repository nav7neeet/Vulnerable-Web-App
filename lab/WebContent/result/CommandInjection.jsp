<%@ page import="java.util.Scanner" %>
<!DOCTYPE html>
<html>
<head><title>Result</title></head>

<body>
  <%@ include file="/commonPage.jsp"%>
  <%
    String vulnerable=(String)request.getParameter("vulnerable");
    String input=(String)request.getParameter("input");
    String output="";
    
    if("true".equals(vulnerable))
    {	
    	out.print("<h4>User input passed to application without any validation. </h4>");
    	String command="cmd /c ping " + input;
    	System.out.print(command);
    	Process process=Runtime.getRuntime().exec(command);
              
    	Scanner scanner = new Scanner(process.getInputStream());
          while (scanner.hasNextLine())
    	{
    		output=output+scanner.nextLine()+"<br>";
    	}
          scanner.close();
          out.print(output);
    }	
  %>
</body>
</html>
