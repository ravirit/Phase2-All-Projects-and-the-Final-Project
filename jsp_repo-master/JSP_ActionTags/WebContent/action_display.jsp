<%@ page language="java" import="com.simplilearn.Employee"  contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Welcome to action display page</h1>
<%

	Employee employee = (Employee)	session.getAttribute("employee");

	out.print(employee);
%>

EL-Expression:

${employee}


</body>
</html>