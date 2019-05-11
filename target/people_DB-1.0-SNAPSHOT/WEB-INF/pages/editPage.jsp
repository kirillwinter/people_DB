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
        <br/>
        <label for="firstName">First name</label>
        <input type="text" name="firstName" id="firstName">
        <br/>
        <label for="middleName">Middle name</label>
        <input type="text" name="middleName" id="middleName">
        <br/>
        <label for="lastName">Last name</label>
        <input type="text" name="lastName" id="lastName">
        <br/>
        <label for="dateBirth">Date birth</label>
        <input type="date" name="dateBirth" id="dateBirth">
        <br/>
        <label for="sex">Sex</label><Br>
        <input type="radio" name="sex" id="sex" value="true" checked>Male<Br>
        <input type="radio" name="sex" id="sex" value="false">Female<Br>


<%--        <label for="sex">Sex</label>--%>
<%--        <input type="range" name="sex" id="sex">--%>
        <br/>

        <c:if test="${empty user.firstName}">
            <input type="submit" value="Add new user">
        </c:if>
        <c:if test="${!empty user.firstName}">
            <input type="submit" value="Edit user">
        </c:if>

    </form>


<%--    <h1>Edit user</h1>--%>
<%--    <c:url value="/edit" var="var"/>--%>
<%--    <form action="${var}" method="post">--%>
<%--        <input type="hidden" name="id" value="${user.id}">--%>

    </form>

</body>
</html>