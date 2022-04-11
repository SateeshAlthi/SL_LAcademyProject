<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%@ page import="javax.xml.stream.events.Comment"%>
<%@ page import="com.simplilearn.DBConnection"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>DashBoard</title>
<link type="text/css" rel="stylesheet" href="css/mainpage.css" />
</head>
<body background="bgr.jpg">

    <div align="justify">
	<jsp:include page="MainPage.jsp" />
	<table border="1" align="center">
		<caption>Teacher List</caption>
		
		<tr>
			<th>Id</th>
			<th>Name</th>
			<th>Email</th>
			<th>Subject</th>
			<th>Action</th>
		</tr>
		<%
		try {
			Class.forName(DBConnection.driver);
			Connection conn = DriverManager.getConnection(DBConnection.url, DBConnection.userName, DBConnection.password);
			System.out.println(conn);
			Statement st = conn.createStatement();

			String query = "select * from teacher";
			ResultSet rSet = st.executeQuery(query);
			while (rSet.next()) {
				String id = rSet.getString("id");
		%>
		<tr>
			<th><%=rSet.getInt("id")%></th>
			<th><%=rSet.getString("tname")%></th>
			<th><%=rSet.getString("email")%></th>
			<th><%=rSet.getString("subject")%></th>
			<th><a href="delteacher.jsp?id=<%=id%>">Delete</a>
		</tr>
		<%
		}
		} catch (Exception e) {
		e.printStackTrace();
		}
		%>
		
	</table>
	</div>
	<br>
	<br>
	<div align="center">
		<form action="Newteacher.jsp">
			<input type="submit" name="newteacher" value="Assign Teacher to Subject" /><br>
			<br>
		</form>
	</div>
</body>
</html>