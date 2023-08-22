<%@page import="com.crtl.Person"%>
<%@page import="java.util.ArrayList"%>
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
<%
response.setHeader("pragma", "no-chache");
response.setHeader("cache-control", "no-store");
response.setHeader("expire", "0");
%>
<body>

	<%
	String username = (String) session.getAttribute("username");
	%>



	<%
	ArrayList<Person> li = (ArrayList<Person>) request.getAttribute("LIST");
	String m = (String) request.getAttribute("msg");
	%>
	<div class="container">
		<h1 style="color: yellow;">Person Records</h1>

		<h2 style="color: red;">
			<%
			if (m != null)
				out.print(m);
			%>
		</h2>
		
		<div style="color: Yellow ; font-size:40px;">
		<%
		if(username != null){
			
		%>
		Welcome <%=username%>
		<%
		}else{
			response.sendRedirect("Login.jsp");
		}
		%>
		</div>

		<br>
		<table border="2" class="table"
			style="color: white; font-size: 40px; font-weight: 500">

			<thead>
				<td>NAME</td>
				<td>LAST NAME</td>
				<td>CITY</td>
				<td>DELETE</td>
				<td>UPDATE</td>
			</thead>
			<%
			for (Person pp : li) {
			%>
			<tr>
				<td><%=pp.getName()%></td>
				<td><%=pp.getLastname()%></td>
				<td><%=pp.getCity()%></td>
				<td><a href="deletectrl?name=<%=pp.getName()%>"
					class="btn btn-danger"
					onclick="return confirm('Are you Sure to delete The Record in the table')">DELETE</a></td>
				<%-- <td><a href="UpdateCtrl?name=<%=pp.getName()%>"
					class="btn btn-primary">EDIT</a></td> --%>
				<td><a href="updateCtrl?name=<%=pp.getName()%>"
					class="btn btn-primary">UPDATE</a></td>
			</tr>
			<%
			}
			%>
		</table>
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