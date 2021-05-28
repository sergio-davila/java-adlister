<%--
  Created by IntelliJ IDEA.
  User: sergiodavila
  Date: 5/28/21
  Time: 11:56 AM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Guess</title>
</head>
<body>

    <h1>Hello user. Guess between 1 and 3. Your life depends on it. Choose wisely.</h1>
    <form method="POST" action="/guess">
        <label for="guess"></label>
        <input id="guess" name="guess" type="number" min="1" max="3">
        <button type="submit" formmethod="post">Submit</button>
    </form>
</body>
</html>
