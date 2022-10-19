<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
<head>
<title>Save Customer</title>
<link type="text/css" rel="styleSheet" href="${pageContext.request.contextPath}/resources/css/style.css"/>

<link type="text/css" rel="styleSheet" href="${pageContext.request.contextPath}/resources/css/add-customer-style.css"/></head>
<body>
<div id="wrapper">
   <div id="header">
   <h2>Add new Employee Here ::</h2>
   </div>
</div>

<div id="container">

<form:form action="saveCustomer" modelAttribute="customer" method="POST">

<table>
<tbody>
<tr>
<td><label>First name</label></td>
<td><form:input path="firstName"/></td>
</tr> <br>
<tr>
<td><label>Last name</label></td>
<td><form:input path="lastName"/></td>
</tr>
<tr>
<td><label>Email</label></td>
<td><form:input path="email"/></td>
</tbody>
</table>
   <center><input type="submit" value="save" class="save"/></center>
</form:form>
    <div style ="clear;both"></div>
    <p>  <a href="${pageContext.request.contextPath}/customer/list">Back to list</a>
</div>


</body>
</html>