<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ page import="com.simplilearn.DBConnection"%>
<%@ page import="java.sql.*"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body background="LASchool.jpg">
	<form>
		<table border="2" align="center">
			<caption>Class Report</caption>
			<tr>
				<td>Student Name:</td>
				<td>Subject Name:</td>
				<td>Time:</td>
				<td>Teacher Name:</td>
			</tr>
			<%
			try {
				Class.forName(DBConnection.driver);
				Connection conn = DriverManager.getConnection(DBConnection.url, DBConnection.userName, DBConnection.password);
				System.out.println(conn);
				Statement st = conn.createStatement();
				String sub = request.getParameter("sname");
				System.out.println("subject= " + sub);
				String query = " select student.fname,subject.sname,subject.time,teacher.tname from student,subject,teacher where subject.sname=teacher.subject and student.subject=subject.sname and subject.sname='"
				+ request.getParameter("sname") + "'";
				ResultSet rSet = st.executeQuery(query);
				while (rSet.next()) {
			%>
			<tr>
				<td><%=rSet.getString("fname")%></td>
				<td><%=rSet.getString("sname")%></td>
				<td><%=rSet.getString("time")%></td>
				<td><%=rSet.getString("tname")%></td>
			</tr>
			<%
			}
			} catch (Exception e) {
			e.printStackTrace();
			}
			%>
		</table>
		<br>
		<br>
	</form>
	<input type="button" value="Go back"
		onclick="window.location.href='MainPage.jsp'" />
</body>
</html>