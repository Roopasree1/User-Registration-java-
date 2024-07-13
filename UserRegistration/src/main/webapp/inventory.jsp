<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Inventory Management</title>
</head>
<body>
<h2>Inventory Management</h2>
    <table border="1">
        <tr>
            <th>ID</th>
            <th>Name</th>
            <th>Description</th>
            <th>Quantity</th>
            <th>Price</th>
            <th colspan="2">Actions</th>
        </tr>
        <c:forEach var="inventoryItem" items="${inventoryList}">
            <tr>
                <td>${inventoryItem.id}</td>
                <td>${inventoryItem.name}</td>
                <td>${inventoryItem.description}</td>
                <td>${inventoryItem.quantity}</td>
                <td>${inventoryItem.price}</td>
                <td><a href="edit?id=${inventoryItem.id}">Edit</a></td>
                <td><a href="delete?id=${inventoryItem.id}">Delete</a></td>
            </tr>
        </c:forEach>
    </table>
    <br>
    <a href="new">Add New Item</a>
</body>
</html>