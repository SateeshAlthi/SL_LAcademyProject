<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Student</title>
</head>
<body background="LASchool.jpg">
<form action="./AddStudent" method="post">
<table border="2" align="center">
<caption>Student Form</caption>

<td>Enter Student Name:</td>
<td><input type="text" name="fname" required="required"></td>
</tr>

<tr>
<td>Enter Email_id:</td>
<td><input type="email" name="email" required="required"></td>
</tr>

<tr>
<td>Enter Subject:</td>
<td><input type="text" name="subject" required="required"></td>
</tr>

<tr>
<td colspan="2" align="right">
<td><input type="submit" value="Submit"></td>
</tr>
</table>
</form>
<input type="button" value="Go back"
onclick="window.location.href='MainPage.jsp'"/>
</body>
</html>