<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>User Form</title>
</head>
<body>
<h2>${user.id == null ? 'Add New User' : 'Edit User'}</h2>

<form action="<c:url value='/users/save' />" method="post">
    <input type="hidden" name="id" value="${user.id}" />

    <label for="name">Name:</label><br/>
    <input type="text" id="name" name="name" value="${user.name}" required/><br/>

    <label for="email">Email:</label><br/>
    <input type="email" id="email" name="email" value="${user.email}" /><br/>

    <label for="age">Age:</label><br/>
    <input type="number" id="age" name="age" value="${user.age}" /><br/>

    <br/>
    <input type="submit" value="${user.id == null ? 'Add User' : 'Update User'}" />
</form>

<br/>
<a href="<c:url value='/users' />">Back to User List</a>
</body>
</html>
