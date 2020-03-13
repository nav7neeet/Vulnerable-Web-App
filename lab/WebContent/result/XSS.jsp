<%@ include file = "/commonPage.jsp" %>
<%@ page import = "java.io.IOException" %>
<%@ page import = "java.io.PrintWriter" %>
<%@ page import = "org.owasp.esapi.ESAPI" %>

<html>
<% 
	String vulnerable = (String)request.getParameter("vulnerable");
	String context = request.getParameter("context");
	String input = (String)request.getParameter("input");
	String message = "";
	
	if("true".equals(vulnerable))
	{
		message = "<h4>User input inserted in context: '"+context+"' without output encoding. </h4>";
		
	}
	else
	{
		message = "<h4>User input inserted in context: '"+context+"' after output encoding. </h4>";
		
		switch (context)
		{
		case "HTML":
			input = ESAPI.encoder().encodeForHTML(input);
			break;
	
		case "HTML_Attribute":
			input = ESAPI.encoder().encodeForHTMLAttribute(input);
			break;
	
		case "Hidden_Variable":
			input = ESAPI.encoder().encodeForHTMLAttribute(input);
			break;
	
		case "JS":
			input = ESAPI.encoder().encodeForJavaScript(input);
			break;
	
		case "CSS":
			input = ESAPI.encoder().encodeForCSS(input);
			break;
		}
	}
	
	vulnerable(out, context, input, message);
%>

<body>	
	<%!
	void  vulnerable(JspWriter out, String context, String input, String message) throws ServletException, IOException
		{
			out.println(message+"<br><br>");
			
			switch (context)
			{
			case "HTML":
				out.print(input);
				break;
		
			case "HTML_Attribute":
				out.print("Input: <input type='text' maxlength='255' value='" +input+ "'>");
				break;
		
			case "Hidden_Variable":
				out.print("<input type='hidden' value='" +input+ "'>");
				break;
		
			case "JS":
				out.print("<script>  \n"
						+ "var a=10; \n"
						+ "var b=20; \n"
						+ "var c='" +input+ "'; \n"
						+ "</script>");
				break;
		
			case "CSS":
				out.print("<style> \n"
						+ "h4 \n"
						+ "{ \n"
						+	"color:" +input+ "\n"
						+ "} \n"
						+ "</style>");
				break;
			
			default:
				out.print("Some error occured, please try again.");
				break;
			}
		}
	%>
</body>
</html>
