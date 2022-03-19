<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Adminstretive Learner Academy </title>
 <link type="text/css" rel="stylesheet" href="css/login.css"> 
</head>
<body style="background-image: url('css/background.jpg');">
		
<h1 style="Color:blue">Learner's Academy</h1><b>Developer Name: Ankita Patil 
&nbsp;&nbsp;Adminstrator Learner Academy portal</b>
 
<h2 style="text-align:center; Color:green"> Welcome To Your Academy Login Page!</h2>
<br/>
<br/>

<div style="text-align:center;">
<form action="AdimnControlServlet" method="post">
<table border="1" style="text-align:center; margin-left:auto;margin-right:auto;" > 
<tr><td><br/>&nbsp;&nbsp;Please Enter Your Username: <input type="text" name="username" placeholder="username">&nbsp;&nbsp;<br/><br/>
&nbsp;&nbsp;Please Enter Your Password: <input type="password" name="password" placeholder="password">&nbsp;&nbsp;<br/><br/></td></tr>
<tr><td><input type="submit" value="login"></td></tr>
            <br/>
            <input type="checkbox" checked="checked"> Remember me   
             
        </div>   
    </form>
</body>
</html>