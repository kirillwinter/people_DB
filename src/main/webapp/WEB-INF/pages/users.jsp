<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: wballaba
  Date: 2019-05-10
  Time: 20:36
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Users</title>
</head>
<body>


    <h1>Users</h1>
    <table>
        <tr>
            <th>id</th>
            <th>First name</th>
            <th>Middle name</th>
            <th>Last name</th>
            <th>Date birth</th>
            <th>Sex</th>
            <th>Action</th>
        </tr>
        <c:forEach var="user" items="${userList}">
            <tr>
                <td>${user.id}</td>
                <td>${user.firstName}</td>
                <td>${user.middleName}</td>
                <td>${user.lastName}</td>
                <td>${user.dateBirth}</td>
                <td>${user.sex}</td>
                <td>
                    <a href="/edit/${user.id}">edit</a>
                    <a href="/delete/${user.id}">delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>

<h2>Add</h2>
<c:url value="/add" var="add"/>
<a href="${add}">Add new user</a>

</body>
</html>
