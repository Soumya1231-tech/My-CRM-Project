<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>

<!DOCTYPE html>
<html>

<head>
<title>List Customers</title>
<link type="text/css" rel="styleSheet" href="${pageContext.request.contextPath}/resources/css/style.css"/>
<body>
   <center><h2 style="text-decoration: underline;color:red">WelCome To Shivit Techinology ERP </h2></center>
<div id="wrapper">
   <div id="header">
   <h2>Customer Relational Manage</h2>
   </div>
</div>
<div id="container">
    <div id="content">
    <!-- add table here -->
    
    <input type="button" value="AddCustomer" onclick="window.location.href='showFormForAdd';return false" class="add-vutton"/>
    <br><br>
    
    <table>
    <tr>
    <th>firstName</th>
    <th>lastName</th>
    <th>email</th>
    <th>Action</th>
    </tr>
    
    
    <!-- loop to print all the customer -->
    <c:forEach var="tempCustomer" items="${customers}">
				
					<!-- Construct an "update" link with customer id -->
					<c:url var="updateLink" value="/customer/showFormForUpdate">
						<c:param name="customerId" value="${tempCustomer.id}"/>
					</c:url>
					<!-- Construct an "delete" link with customer id -->
					<c:url var="deleteLink" value="/customer/delete">
						<c:param name="customerId" value="${tempCustomer.id}"/>
					</c:url>
					<tr>
						<td>${tempCustomer.firstName}</td>
						<td>${tempCustomer.lastName}</td>
						<td>${tempCustomer.email}</td>
						<td>
						<!-- display the update link -->
							<a href="${updateLink}">Update</a>
							|
							<a href="${deleteLink}" onclick="if(!(confirm('Are you sure you want to delete this customer?'))) return false">Delete</a>
						</td>
						
					</tr>
				</c:forEach>
    </table>
    
    
    </div>
</div>
</body>
</head>
</html>