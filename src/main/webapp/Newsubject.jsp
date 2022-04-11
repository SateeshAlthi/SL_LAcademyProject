<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Subject</title>
</head>
<body background="LASchool.jpg">
<form action="./AddSubject" method="post">
<table border="2" align="center">
<caption>Subject Form</caption>

<td>Enter Subject Name:</td>
<td><input type="text" name="sname" required="required"></td>
</tr>

<tr>
<td>Enter Time:</td>
<td><input type="text" name="time" required="required"></td>
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