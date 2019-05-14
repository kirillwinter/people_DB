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

<%--<a href="#" class="js-open-modal" data-modal="1">Add User</a>--%>


<%--<div class="modal" data-modal="1">--%>
<%--    <svg class="modal__cross js-modal-close" xmlns="http://www.w3.org/2000/svg"  viewBox="0 0 24 24">--%>
<%--        <path d="M23.954 21.03l-9.184-9.095 9.092-9.174-2.832-2.807-9.09 9.179-9.176-9.088-2.81 2.81 9.186 9.105-9.095 9.184 2.81 2.81 9.112-9.192 9.18 9.1z"/>--%>
<%--    </svg>--%>
<%--    <p class="modal__title"><span id </p>--%>
<%--</div>--%>

<%--<div class="overlay js-overlay-modal"></div>--%>



</body>
</html>