<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<%
response.setHeader("pragma", "no-chache");
response.setHeader("cache-control", "no-store");
response.setHeader("expire", "0");
%>

<%@include file="FrontHeader.jsp"%>
<body>
	<Div class="dd">
		<h3>Welcome To India</h3>
		<h1>
			DO COME & VISIT <span style="color: darkslateblue;" class="change"></span>
		</h1>
		<p>"India Once is Not Enough"</p>
</body>
</html>