<%@ page language="java"  isELIgnored="false" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %> 
 <%@ taglib  uri="http://java.sun.com/jsp/jstl/sql" prefix="sql" %>
 
  
  <sql:setDataSource  var="conn" 
  driver="com.mysql.cj.jdbc.Driver"
  url="jdbc:mysql://localhost:3306/ecommerce"
  user="root"   password="admin" /> 
 
  
Database connection object : ${conn}   <br>


<sql:query var="rs"  dataSource="${conn}">
select * from eproduct;
</sql:query>

<br>
ResultSet : ${rs}

<br>
<table border="1" style="background-color:  red">
<c:forEach  var="product"  items="${rs.rows}">
<tr>
<td><c:out value="${product.id }"></c:out> </td>
<td><c:out value="${product.name}"></c:out> </td>
<td> <c:out value="${product.price}"></c:out></td>
</tr>
<br>
</c:forEach>
</table>

<sql:update  dataSource="${conn}" var="count">

insert into eproduct(id,name,price) values(?,?,?);

<sql:param  value="12"></sql:param >
<sql:param  value="medicine"></sql:param >
<sql:param  value="4000"></sql:param >

</sql:update>
<br>
${count} number of records effected...
