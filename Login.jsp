<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.container {
	margin-top: 30px;
	background-color: black;
	height: 300px;
	padding: 30px 30px;
}
</style>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
</head>
<%@include file="FrontHeader.jsp"%>
<body>

	<center>
		<%
		String m = (String) request.getAttribute("msg");
				if (m != null)
					out.print("<h2 style ='color: red;'>" + m + "</h2>");
		%>
	</center>
	<div class="container">
		<form action="Checklogin" method="post">

			<div class="form-group">
				<label for="exampleInputEmail1">User Name</label> <input type="text"
					class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" placeholder="USER NAME" name="uname">
			</div>

			<div class="form-group">
				<label for="exampleInputPassword1">Password</label> <input
					type="password" class="form-control" id="exampleInputPassword1"
					placeholder="PASSWORD" name="pwd">
			</div>

			<button type="submit" class="btn btn-primary">Submit</button>
		</form>
	</div>
</body>
</html>