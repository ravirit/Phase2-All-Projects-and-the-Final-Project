<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
<style>
body{
    background-image: linear-gradient(135deg, #d54595 30%, #034d60 100%);
    background-position: center 0;
    background-repeat: no-repeat;
    background-attachment: fixed;
    background-size: cover;
    -webkit-background-size: cover;
    -o-background-size: cover;
    -moz-background-size: cover;
    -ms-background-size: cover;
}

h1 {
    color: #adf4f3;
}
</style>
</head>
<body background color= red>

 <marquee behavior="scroll" direction="left"
           onmousedown="this.stop();"
           onmouseup="this.start();">Welcome ${user.username } !!</marquee>
<center>

<h1><b>BOOKING DETAILS</b></h1>
<br>

<form action="flightDetails" method="POST">

<table style="width:50%; margin: 0px auto;">
  <tr>
    <td><label for="date" style="font-size:16pt;" >Date of Travel :</label></td>
    <td><input type="date" name="travelDate" style="font-size:16pt; width:270px;" /></td>
  </tr>
  
  <tr>
    <td><label for="source" style="font-size:16pt;" >Source :</label></td>
    <td><input type="text" name="source" style="font-size:16pt;" /></td>
  </tr>
  
  <tr>
    <td><label for="destination" style="font-size:16pt;" >Destination :</label></td>
    <td><input type="text" name="destination" style="font-size:16pt;" /></td>
  </tr>
  
  <tr>
    <td><label for="persons" style="font-size:16pt;" >No. of Seats :</label></td>
    <td><input type="number" name="seats" style="font-size:16pt;" /></td>
  </tr>
 </table>
 
 <br> <br>
 <table style="width:20%">
  <tr>
  <td> <input type="submit" value="Login" style="font-size:20pt; width:86pt; background:#DEB4B4"/> </td>
  </tr>
</table>

 </form>
 <br>
<a href="logout"><h2 align="center">Logout</h2></a>
<br><br>
</center>

</body>

</html>