<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>


<jsp:useBean  id="employee"  class="com.simplilearn.Employee"  scope="application">

</jsp:useBean>

<jsp:setProperty name="employee"    property="eid"   param="eid"></jsp:setProperty>
<jsp:setProperty name="employee"    property="ename"  param="ename"></jsp:setProperty>
<jsp:setProperty name="employee"    property="salary"  param="salary"></jsp:setProperty>

<br>
Data from getProperty ACtion tag:<br>

<jsp:getProperty name="employee"  property="ename"></jsp:getProperty>

<jsp:include  page="action_display.jsp"></jsp:include>

</body>
</html>