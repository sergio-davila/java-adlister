<%--
  Created by IntelliJ IDEA.
  User: sergiodavila
  Date: 5/27/21
  Time: 9:58 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Welcome, Marco</title>
    <%-- Must remember to not have any servlets listening on / (root)   --%>
    <link rel="stylesheet" href="css/styles.css">
</head>
<body>
<%@ include file="partials/navbar.jsp" %>

    <%! int counter = 0; %>

    <%
        counter++;
        request.setAttribute("age", 39);
    %>

    <!-- Hello from a comment -->
    <h1>Hello, Marco!</h1>

    <%-- Demonstrate a JSP evaluation tag --%>
    <p>What is 1 + 1? <%= 1 + 1 %> would be the answer.</p>

    <p>This page was requested using the method <span><%= request.getMethod()%></span></p>

    <p>Path: <%= request.getRequestURL() %></p>

    <p>Name parameter in query string <%= request.getParameter("name")%></p>
    <p>name: ${param.name}</p>
    <div>This page has been visited <%= counter %> times since the server started</div>

    <p>Douglas is ${age} years old</p>

    <script src="js/scripts.js"></script>
</body>
</html>
