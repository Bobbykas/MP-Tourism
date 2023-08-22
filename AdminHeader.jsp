<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.navebar {
	width: 100%;
	border: 1px solid black;
	background: linear-gradient(white 0px, transparent);
	height: 55px;
	backdrop-filter: blur(1px);
}

.link {
	width: 600px;
	height: 30px;
	text-align: center;
	text-decoration: none;
	word-spacing: 10px;
	position: relative;
	left: 1010px;
	top: 10px;
	font-size: 25px;
	font-weight: bolder;
	transition: all 500ms;
}

.link:hover {
	transform: scale(1.1);
	font-size: 26px;
	text-decoration: underline;
}

body {
	background-image: url(images//desktop-1920x1080.jpg);
}
</style>
</head>
<body>
	<%
	response.setHeader("pragma", "no-chache");
	response.setHeader("cache-control", "no-store");
	response.setHeader("expire", "0");
	%>

	<nav class="navebar">
		<span class="Lo" style="font-size: 30px">ADMIN HOME</span> <span
			class="link"><a href="details">DETAILS</a></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
		<span class="link"><a href="Logoutctrl">LOGOUT</a></span>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
	</nav>
</body>
</html>