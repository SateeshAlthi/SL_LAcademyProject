<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.util.List"%>
<%@ page import="javax.xml.stream.events.Comment"%>
<%@ page import="com.simplilearn.DBConnection"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Delete Subject</title>
</head>
<body>
	<%
	String id = request.getParameter("id");
	System.out.println("IN THE DELSUBJECT the id=" + id);
	try {
		Class.forName(DBConnection.driver);
		Connection conn = DriverManager.getConnection(DBConnection.url, DBConnection.userName, DBConnection.password);
		System.out.println(conn);
		Statement st = conn.createStatement();

		String query = "delete from subject where id= '" + id + "'";
		ResultSet rSet = st.executeQuery(query);
	%>
	<script>
		alert("successful");
	</script>
	<%
	response.sendRedirect("subject.jsp");
	} catch (Exception e) {
	e.printStackTrace();
	}
	%>
</body>