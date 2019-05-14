<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: wballaba
  Date: 2019-05-10
  Time: 20:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <c:if test="${empty user.firstName}">
        <title>Add User</title>
    </c:if>
    <c:if test="${!empty user.firstName}">
        <title>Edit User</title>
    </c:if>
    <link href="<c:url value="/res/style.css"/>" rel="stylesheet" type="text/css"/>
</head>
<body>

    <c:if test="${empty user.firstName}">
        <h2>Add User</h2>
    </c:if>
    <c:if test="${!empty user.firstName}">
        <h2>Edit User</h2>
    </c:if>


    <c:if test="${empty user.firstName}">
        <c:url value="/add" var="var"/>
    </c:if>
    <c:if test="${!empty user.firstName}">
        <c:url value="/edit" var="var"/>
    </c:if>

    <form action="${var}" method="post">
        <c:if test="${!empty user.firstName}">
            <input type="hidden" name="id" value="${user.id}">
        </c:if>

        <div class="edit_list">
            <div style="float: left; width: 100px; height: 100px;" >
                <label for="firstName">First name</label><Br>
                <label for="middleName">Middle name</label><Br>
                <label for="lastName">Last name</label><Br>
                <label for="dateBirth">Date birth</label><Br>
                <label for="sex">Sex</label><Br>

            </div>
            <div>
                <input type="text" name="firstName" required pattern="^[a-zA-Z]+$" id="firstName" value="${user.firstName}"><Br>
                <input type="text" name="middleName" required pattern="^[a-zA-Z]+$" id="middleName" value="${user.middleName}"><Br>
                <input type="text" name="lastName" required pattern="^[a-zA-Z]+$" id="lastName" value="${user.lastName}"><Br>
                <input type="date" name="dateBirth" required id="dateBirth" value="${user.dateBirth}"><Br>

                <input type="radio" name="sex" id="sex" value="Male" checked>Male<Br>
                <input type="radio" name="sex" id="sex" value="Female">Female<Br>
            </div>
        </div>

        <br/>

        <c:if test="${empty user.firstName}">
            <input type="submit" value="Add new user" class="button">
        </c:if>
        <c:if test="${!empty user.firstName}">
            <input type="submit" value="Edit user" class="button">
        </c:if>

        <c:url value="/" var="users"/>
        <a href="${users}" class="button">back</a>

    </form>

</body>
</html>