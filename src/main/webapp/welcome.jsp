<%--
  Created by IntelliJ IDEA.
  User: douglas
  Date: 5/27/21
  Time: 9:58 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Welcome, Marco</title>
    <%-- Must remember to not have any servlets listening on / (root) for this to work. --%>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
<%@ include file="partials/navbar.jsp" %>

<%! int counter = 0; %>
<%
    counter++;
    request.setAttribute("age", 39);
    request.setAttribute("numbers", new int[]{1, 2, 3, 4, 5, 6});
%>
<!-- Hello from a comment -->
<h1>Hello, Marco!</h1>

<%-- Demonstrate a JSP evaulation tag --%>
<p>What is 1 + 1? <%= 1 + 1 %> would be the answer.</p>

<p>This page was requested using the method <span><%= request.getMethod() %></span></p>
<p>Path: <%= request.getRequestURL() %></p>
<p>Name parameter in the query string <%= request.getParameter("name")%></p>
<p>name: ${param.name}</p>
<div>This page has been visited <%= counter %> times since the server started.</div>

<p>Douglas is ${age} years old.</p>

<%--    <c:if test="${age <= 10}" >--%>
<%--        <a href="http://www.neopets.com/">Neopets for the win!</a>--%>
<%--    </c:if>--%>
<%--    <c:if test="${age > 10}" >--%>
<%--        <p>You really should go find stuff.</p>--%>
<%--        <a href="http://www.google.com">Google</a>--%>
<%--    </c:if>--%>

<c:choose>
    <c:when test="${age <= 10}">
        <a href="http://www.neopets.com/">Neopets for the win!</a>
    </c:when>
    <c:when test="${age <= 25}">
        <a href="http://www.neopets.com/">Neopets are for kids but go anyway!</a>
    </c:when>
    <c:otherwise>
        <p>You really should go find stuff.</p>
        <a href="http://www.google.com">Google</a>
    </c:otherwise>
</c:choose>

<ul>
    <c:forEach items="${numbers}" var="number">
        <li>Item number ${number}</li>
    </c:forEach>
</ul>
<script src="js/scripts.js"></script>
</body>
</html>