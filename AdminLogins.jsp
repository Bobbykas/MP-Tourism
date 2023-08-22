<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<style>
.form-group {
	font-size: 25px;
	color: white;
}
</style>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
	integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
	crossorigin="anonymous">
</head>
<%@include file="AdminHeader.jsp"%>

<body>
	<div class="container">

		<div class="jumbotron">
			<h1 style="color: black;">RAGISTRATION PAGE</h1>
			
			
			<%
		String username = (String) session.getAttribute("username");
		%>

		<div style="color:black; font-size: 40px;">
			<%
			if (username != null) {
			%>
			Welcome
			<i><%=username%></i>
			<%
			} else {
			response.sendRedirect("Login.jsp");
			}
			%>
		</div>
			
		</div>

		
		<%
		String m = (String) request.getAttribute("msg");
		if (m != null) {
			out.print("<h2 style ='color:Aqua;'>" + m + "</h2>");
		}
		%>

		<form action="RagisterCtrl" method="post">

			<div class="form-group">
				<label for="exampleInputEmail1">FIRST NAME</label> <input
					type="text" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" placeholder="USER NAME" name="name">
			</div>

			<div class="form-group">
				<label for="exampleInputPassword1">LAST NAME</label> <input
					type="text" class="form-control" id="exampleInputPassword1"
					placeholder="LAST NAME" name="lname">
			</div>

			<div class="form-group">
				<label for="exampleInputPassword1">CITY</label> <input type="text"
					class="form-control" id="exampleInputPassword1" placeholder="CITY"
					name="city">
			</div>

			<button type="submit" class="btn btn-primary">RAGISTER</button>
			&nbsp;&nbsp;&nbsp; <input type="reset" class="btn btn-primary"
				value="CLEAR" />
		</form>
	</div>

</body>
</html>