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
	<jsp:include page="MainPage.jsp" />
	<div align="center" style="float: center;">
		<table border="1">
			<caption>Available Subjects</caption>
			<tr>
				<th>SubjectName</th>
			</tr>
			<%
			try {
				Class.forName(DBConnection.driver);
				Connection conn = DriverManager.getConnection(DBConnection.url, DBConnection.userName, DBConnection.password);
				System.out.println(conn);
				Statement st = conn.createStatement();

				String query = "select * from subject";
				ResultSet rSet = st.executeQuery(query);
				while (rSet.next()) {
			%>
			<tr>
				<td><%=rSet.getString("sname")%></td>
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
	<div align="center" style="float: centre;">
		<form action="classReport.jsp">
			ClassReport for the Subject:<input type="text" name="sname"><br>
			<input type="submit" name="newclass" value="Class Report" />
		</form>
	</div>
</body>
</html>