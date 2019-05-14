<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--&lt;%&ndash;--%>
<%--  Created by IntelliJ IDEA.--%>
<%--  User: wballaba--%>
<%--  Date: 2019-05-10--%>
<%--  Time: 20:36--%>
<%--  To change this template use File | Settings | File Templates.--%>
<%--&ndash;%&gt;--%>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Users</title>
    <link href="<c:url value="/res/style.css"/>" rel="stylesheet" type="text/css"/>
    <script type="text/javascript" src="<c:url value="/res/script.js"/>"></script>
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
                <a href="/edit/${user.id}" class="button">edit</a>
<%--                Здесь должна быть поддержка по API в модальном окне--%>
<%--                <a href="/api/user/${user.id}" class="button">edit</a>--%>
                <a href="/delete/${user.id}" class="button">delete</a>
            </td>
        </tr>
    </c:forEach>
</table>

<c:url value="/add" var="add"/>
<a href="${add}" class="button">Add new user</a>

<c:url value="/sort" var="sort"/>
<a href="${sort}" class="button">Sort users</a>

<%----------------%>


</body>
</html>