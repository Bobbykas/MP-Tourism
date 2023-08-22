<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="frontCSS.css">
</head>
<body>
	<%
	response.setHeader("pragma", "no-chache");
	response.setHeader("cache-control", "no-store");
	response.setHeader("expire", "0");
	%>

	<nav class="navebar">
		<span class="Lo"font-size:30px">MERA BHARAT </span> <span class="link"><a
			href="Home.jsp">HOME</a></span> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span
			class="link"><a href="Gallery.jsp">GALLERY</a></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<span class="link"><a href="About.jsp">ABOUT</a></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<span class="link"><a href="Contact.jsp">CONTACT</a></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<span class="link"><a href="Login.jsp">LOGIN</a></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	</nav>

</body>
</html>