<%@ page import="com.simplilearn.Employee"  isELIgnored="false"  language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<h1>Welcome to display page</h1>
<%

	Employee emp = (Employee)session.getAttribute("employee");

	out.print(emp);

%>
<br>
JSP Expression
<%=  session.getAttribute("employee") %>

<br>
EL-Expression<BR>
${employee}


</body>
</html>