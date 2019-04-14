<%@ include file="/commonPage.jsp"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>

<html>
<head>
<title>Test Result - SQL Injection</title>
</head>

<body>
		<h3>User details..</h3>

		<%
			if(request.getAttribute("exception") ==null)
			{
				List list = (List) request.getAttribute("details");
				if(!list.isEmpty())
				{
					Iterator iterator = list.iterator();
					int c=0;
					while (iterator.hasNext())
					{
						out.print(iterator.next()+" ");
						c++;
						if(c==3)
						{
							c=0;
							out.print("<br><br>");
						}
					}
				}
				else
				{
					out.print("<b>No records found corresponding to the details entered by you. <br><br>Try again.<b>");
				}
			}	
			else
			{
				if(request.getAttribute("context").equals("blind"))
				{	
					out.print("<b>No records found corresponding to the details entered by you. <br><br>Try again.<b>");
				}
				else
				{	
					Exception e=(Exception) request.getAttribute("exception");
					out.print(e.getMessage());
				}
			}
		%>
</body>
</html>
