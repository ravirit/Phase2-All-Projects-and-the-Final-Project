<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"  isELIgnored="false"  %>
    
   <%@ taglib uri="http://java.sun.com/jsp/jstl/core"  prefix="c" %> 
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<%

	boolean  isValid = true;

		//session.setAttribute("salary", 40000);

%>
<c:set  var="salary"  scope="session" value="${80000}"></c:set>

Salary is : ${sessionScope.salary}

<br>
<c:if test="${true}">

<h1>5 Greater than 3 always</h1>

</c:if><br>

<c:forEach begin="1"  end="5"  step="1" var="i">

<c:out value="${i}"></c:out><br>

</c:forEach>

<c:choose>

<c:when test="${salary > 50000}"> Salary is High  </c:when>
<c:when test="${salary > 30000 && salary < 50000}"> Salary is Medium  </c:when>
<c:when test="${salary <  30000}"> Salary is Low  </c:when>
<c:otherwise>Invalid Salary</c:otherwise>
</c:choose>


<c:catch var="e">

<% int x = 9/0; %>

</c:catch>

<c:if test="${e != null}">

	<h2>The exception occur: ${e.message} </h2>
</c:if>

<c:remove  var="salary" scope="session"></c:remove>

<br>

Removed salary : ${salary}

</body>
</html>