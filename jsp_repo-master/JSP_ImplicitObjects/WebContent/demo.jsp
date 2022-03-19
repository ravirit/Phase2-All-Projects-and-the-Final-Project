<%@ page language="java" errorPage="error.jsp" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

<% 

	String  uname = request.getParameter("uname");
	String pwd = request.getParameter("pwd");
	
		session.setAttribute("uname", uname);
		application.setAttribute("pwd", pwd);
	
		

		
		
			response.sendRedirect("success.jsp");

			
			
				
			
%>


</body>
</html>