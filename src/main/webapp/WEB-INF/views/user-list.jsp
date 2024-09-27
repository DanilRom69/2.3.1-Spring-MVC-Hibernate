<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User List</title>
</head>
<body>
<h2>List of Users</h2>

<table border="1" cellpadding="5" cellspacing="0">
    <thead>
    <tr>
        <th>ID</th>
        <th>Name</th>
        <th>Email</th>
        <th>Age</th>
        <th>Actions</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="user" items="${users}">
        <tr>
            <td>${user.id}</td>
            <td>${user.name}</td>
            <td>${user.email}</td>
            <td>${user.age}</td>
            <td>
                <a href="<c:url value='/users/edit?id=${user.id}' />">Edit</a> |
                <a href="<c:url value='/users/delete?id=${user.id}' />">Delete</a>
            </td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<br/>
<a href="<c:url value='/users/new' />">Add New User</a>
</body>
</html>
