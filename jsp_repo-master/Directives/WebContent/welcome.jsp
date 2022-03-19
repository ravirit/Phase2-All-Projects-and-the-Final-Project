<%@ page language="java" info="this is welcome jsp"  contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1" session="true"  isThreadSafe="false"  %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Welcome File</h1>

<%

	//request.getSession(false);

	/* RequestDispatcher rd =	request.getRequestDispatcher("hello.jsp");

		rd.include(request, response);
		 */
%>

<%@ include file="hello.jsp" %>


</body>
</html>