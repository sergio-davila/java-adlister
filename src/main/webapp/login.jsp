<%--
  Created by IntelliJ IDEA.
  User: sergiodavila
  Date: 5/27/21
  Time: 2:12 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%! int counter = 0; %>
<%counter++;%>

<html>
<head>
    <title>Login</title>
</head>
<body>
    <h1>Login</h1>

    <form method="POST" action="login.jsp">
        <label for="username">Username: </label>
        <input type="text" id="username" name="username" placeholder="Type in username here.">
        <label for="password">Password: </label>
        <input type="password" id="password" name="password" placeholder="Type in password here.">
        <button type="submit">Submit</button>
    </form>

    <p>You have visited this website: <%= counter %> times!</p>

    <p>"username" is: ${param.username}</p>
    <p>"password" is: ${param.password}</p>
    <c:choose>
        <c:when test="${param.username.equals('admin') && param.password.equals('password')}">
            <p>YOURE IN!</p>
            <c:redirect url="/profile.jsp"/>
        </c:when>
        <c:when test="${param.username == null && param.password == null}">
            <p>Hello</p>
        </c:when>
        <c:otherwise>
            <p>YOURE NOT IN LOL</p>
        </c:otherwise>
    </c:choose>

</body>
</html>
