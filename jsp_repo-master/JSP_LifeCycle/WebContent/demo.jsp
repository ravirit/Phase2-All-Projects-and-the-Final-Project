<%@ page language="java"  import="java.util.*" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<h1>Welcome to JSP DEMO</h1>

<%! 

private int eid;
public void m1(){ 
	System.out.print("this is m1() from declaration");
	} 

%>

<% m1(); %>


<% 

 	out.print(session);

	List  list = new ArrayList();

		list.add("king");	
		list.add("tom");
		list.add("ravi");
		list.add("kiran");
		
		out.print(list);

%><br>

<%= list  %> <br>

<%= new Date() %>

<%!

	static String name;

%>



</body>
</html>