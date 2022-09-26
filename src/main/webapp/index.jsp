<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
    <title>JSP - Hello World</title>
</head>
<body>
<form action="/Servlet" method="post">
    <label>Product Description: </label>
    <input type="text" name="description" placeholder="DESCRIPTION"><br>
    <label>List Price: </label><br>
    <input type="text" name="listPrice" placeholder="PRICE"><br>
    <label>Discount Percent: </label><br>
    <input type="text" name="discountPercent" placeholder="DISCOUNT"><br>
    <input type="submit" id="submit" value="Calculate Discount">
</form>
</body>
</html>