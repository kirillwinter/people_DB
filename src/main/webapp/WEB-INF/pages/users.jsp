<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--&lt;%&ndash;--%>
<%--  Created by IntelliJ IDEA.--%>
<%--  User: wballaba--%>
<%--  Date: 2019-05-10--%>
<%--  Time: 20:36--%>
<%--  To change this template use File | Settings | File Templates.--%>
<%--&ndash;%&gt;--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <title>Users</title>--%>
<%--    <link href="<c:url value="/res/style.css"/>" rel="stylesheet" type="text/css"/>--%>
<%--    <style>--%>
<%--        .text,--%>
<%--        input[type="checkbox"] {--%>
<%--            display: none;--%>
<%--        }--%>
<%--        input[type="checkbox"]:checked ~ .text {--%>
<%--            display: block;--%>
<%--        }--%>

<%--        /* Стилизация псевдокнопки */--%>
<%--        .btn {--%>
<%--            display: inline-block;--%>
<%--            margin-bottom: 4px;--%>
<%--            padding: 4px 8px;--%>
<%--            background-color: #ffffff;--%>
<%--            border: 1px solid #eeeeee;--%>
<%--            cursor: pointer;--%>
<%--        }--%>

<%--    </style>--%>
<%--</head>--%>
<%--<body>--%>


<%--    <h1>Users</h1>--%>
<%--    <table>--%>
<%--        <tr>--%>
<%--            <th>id</th>--%>
<%--            <th>First name</th>--%>
<%--            <th>Middle name</th>--%>
<%--            <th>Last name</th>--%>
<%--            <th>Date birth</th>--%>
<%--            <th>Sex</th>--%>
<%--            <th>Action</th>--%>
<%--        </tr>--%>
<%--        <c:forEach var="user" items="${userList}">--%>
<%--            <tr>--%>
<%--                <td>${user.id}</td>--%>
<%--                <td>${user.firstName}</td>--%>
<%--                <td>${user.middleName}</td>--%>
<%--                <td>${user.lastName}</td>--%>
<%--                <td>${user.dateBirth}</td>--%>
<%--                <td>${user.sex}</td>--%>
<%--                <td>--%>
<%--&lt;%&ndash;                    <a href="/edit/${user.id}">edit</a>&ndash;%&gt;--%>
<%--                    <label for="pseudoBtn" class="btn">"Кнопка"</label>--%>

<%--                    <a href="/delete/${user.id}">delete</a>--%>
<%--                </td>--%>
<%--            </tr>--%>
<%--        </c:forEach>--%>
<%--    </table>--%>

<%--<h2>Add</h2>--%>
<%--<c:url value="/add" var="add"/>--%>
<%--<a href="${add}">Add new user</a><br/>--%>

<%--<c:url value="/sort" var="sort"/>--%>
<%--<a href="${sort}">Sort users</a>--%>

<%--&lt;%&ndash;    <iframe src="${add}" width="468" height="60" align="left">&ndash;%&gt;--%>
<%--&lt;%&ndash;        Ваш браузер не поддерживает плавающие фреймы!&ndash;%&gt;--%>
<%--&lt;%&ndash;    </iframe>&ndash;%&gt;--%>

<%--    <label for="pseudoBtn" class="btn">"Кнопка"</label>--%>
<%--    <input type="checkbox" id="pseudoBtn">--%>
<%--    <div class="text" align="center">--%>

<%--        <c:if test="${empty user.firstName}">--%>
<%--            <h2>Add User</h2>--%>
<%--        </c:if>--%>
<%--        <c:if test="${!empty user.firstName}">--%>
<%--            <h2>Edit User</h2>--%>
<%--        </c:if>--%>


<%--        <c:if test="${empty user.firstName}">--%>
<%--            <c:url value="/add" var="var"/>--%>
<%--        </c:if>--%>
<%--        <c:if test="${!empty user.firstName}">--%>
<%--            <c:url value="/edit" var="var"/>--%>
<%--        </c:if>--%>

<%--        <form action="${var}" method="post">--%>
<%--            <c:if test="${!empty user.firstName}">--%>
<%--                <input type="hidden" name="id" value="${user.id}">--%>
<%--            </c:if>--%>
<%--            <br/>--%>
<%--            <label for="firstName">First name</label>--%>
<%--            <input type="text" name="firstName" required pattern="^[a-zA-Z]+$" id="firstName" value="${user.firstName}">--%>
<%--            <br/>--%>
<%--            <label for="middleName">Middle name</label>--%>
<%--            <input type="text" name="middleName" required pattern="^[a-zA-Z]+$" id="middleName" value="${user.middleName}">--%>
<%--            <br/>--%>
<%--            <label for="lastName">Last name</label>--%>
<%--            <input type="text" name="lastName" required pattern="^[a-zA-Z]+$" id="lastName" value="${user.lastName}">--%>
<%--            <br/>--%>
<%--            <label for="dateBirth">Date birth</label>--%>
<%--            <input type="date" name="dateBirth" required id="dateBirth" value="${user.dateBirth}">--%>
<%--            <br/>--%>
<%--            <label for="sex">Sex</label><Br>--%>
<%--            <input type="radio" name="sex" id="sex" value="Male" checked>Male<Br>--%>
<%--            <input type="radio" name="sex" id="sex" value="Female">Female<Br>--%>
<%--            <br/>--%>



<%--            <c:if test="${empty user.firstName}">--%>
<%--                <input type="submit" value="Add new user">--%>
<%--            </c:if>--%>
<%--            <c:if test="${!empty user.firstName}">--%>
<%--                <input type="submit" value="Edit user">--%>
<%--            </c:if>--%>

<%--            <c:url value="/" var="users"/>--%>
<%--            <a href="${users}">back</a>--%>

<%--        </form>--%>
<%--            <button type="button" onClick="window.location.reload();">Close</button>--%>
<%--    </div>--%>




<%--</body>--%>
<%--</html>--%>





<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Users</title>
    <link href="<c:url value="/res/style.css"/>" rel="stylesheet" type="text/css"/>
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

<c:url value="/sort" var="sort"/>
<a href="${sort}">Sort users</a>

</body>
</html>