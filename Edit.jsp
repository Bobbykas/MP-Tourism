<%@page import="com.crtl.Person"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC"
	crossorigin="anonymous">
</head>


<%@include file="AdminHeader.jsp"%>
<body>
	<div class="container">
		<%
		Person pp = (Person) request.getAttribute("msg");
		%>
		<%
		response.setHeader("pragma", "no-chache");
		response.setHeader("cache-control", "no-store");
		response.setHeader("expire", "0");
		%>

		<h1 style="color: White;">Person Record update</h1>
		<form action="updateCtrl" method="post">

			<div class="form-group">
				<label for="exampleInputEmail1">FIRST NAME</label> <input
					type="text" class="form-control" id="exampleInputEmail1"
					aria-describedby="emailHelp" placeholder="USER NAME" name="name"
					value=<%=pp.getName()%> readonly>
			</div>

			<div class="form-group">
				<label for="exampleInputPassword1">LAST NAME</label> <input
					type="text" class="form-control" id="exampleInputPassword1"
					placeholder="LAST NAME" name="lname" value=<%=pp.getLastname()%>>
			</div>

			<div class="form-group">
				<label for="exampleInputPassword1">CITY</label> <input type="text"
					class="form-control" id="exampleInputPassword1" placeholder="CITY"
					name="city" value=<%=pp.getCity()%>>
			</div>

			<button type="submit" class="btn btn-primary"
				onclick="return confirm('Are You Sure to Update The data Finally')">FINAL
				UPDATE</button>
			&nbsp;&nbsp;&nbsp; <input type="reset" class="btn btn-primary"
				value="CLEAR" />
		</form>
	</div>




	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.bundle.min.js"
		integrity="sha384-MrcW6ZMFYlzcLA8Nl+NtUVF0sA7MsXsP1UyJoMp4YLEuNSfAP+JcXn/tWtIaxVXM"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/@popperjs/core@2.9.2/dist/umd/popper.min.js"
		integrity="sha384-IQsoLXl5PILFhosVNubq5LC7Qb9DXgDA9i+tQ8Zj3iwWAwPtgFTxbJ8NT4GN1R8p"
		crossorigin="anonymous"></script>
	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/js/bootstrap.min.js"
		integrity="sha384-cVKIPhGWiC2Al4u+LWgxfKTRIcfu0JTxR+EQDz/bgldoEyl4H0zUF0QKbrJ0EcQF"
		crossorigin="anonymous"></script>
</body>
</html>