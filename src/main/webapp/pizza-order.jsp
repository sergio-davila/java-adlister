<%--
  Created by IntelliJ IDEA.
  User: sergiodavila
  Date: 5/31/21
  Time: 7:58 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Pizza Order</title>
</head>
<body>

<form method="post" action="">
    <label for="crustselect">Choose a crust!</label>
    <select name="crust" id="crustselect">
        <option value="crust1" name="hand-tossed">Hand Tossed</option>
        <option value="crust2" name="thin-crust">Thin Crust</option>
    </select>
    <label for="suaceselect">Choose a suace!</label>
    <select name="suaces" id="suaceselect">
        <option value="suace1" name="marinara">Marinara</option>
        <option value="suace2" name="alfreda">Alfredo</option>
    </select>
    <label for="sizeselect">Choose a size!</label>
    <select name="sizes" id="sizeselect">
        <option value="size1">Personal</option>
        <option value="size2">Small</option>
        <option value="size3">Medium</option>
        <option value="size4">Large</option>
        <option value="size5">X-Large</option>
    </select>
    <label for="toppingselect">Choose your toppings!</label>
    <div id="toppingselect">
        <label for="pepperoni">Pepperoni</label>
        <input type="checkbox" name="toppings" value="Pepperoni" id="pepperoni"><br>
        <label for="pineapple">Pineapple</label>
        <input type="checkbox" name="toppings" value="Pineapple" id="pineapple">
    </div>
    <button type="submit" formmethod="post">Submit</button>
</form>


</body>
</html>
