<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	String name = request.getParameter("uname");
	System.out.println("name= " + name);
	String pwd = request.getParameter("password");
	System.out.println("name= " + pwd);
	if (name.equals("Admin") && pwd.equals("admin")) {
		HttpSession s = request.getSession();
		out.println("<center><h1>Welocme: " + name + "</h1>");
		out.println("<br/><br>)Login Successful..");
		response.sendRedirect("MainPage.jsp");
	} else {
		String message = "Username and password is invalid";
		response.getWriter().write("Invalid user");%>
	<script type="text/javascript">
		window.alert("Invalid User");
	</script>
	<%
	response.sendRedirect("index.html");
	}
	%>
</body>
</html>
