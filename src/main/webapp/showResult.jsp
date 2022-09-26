<%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 26/9/2022
  Time: 2:46 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Title</title>

</head>

<body>


<c:if test="${err!=null}"><h1>${err}</h1></c:if>
<c:if test="${err==null}"><h1>Show Result</h1>
    <h1>Name: ${name}</h1>
    <h1>ListPrice: ${price}</h1>
    <h1>Discount Percent: ${discount}</h1>
    <h1>Discount Amount: ${dAmount}</h1>
    <h1>Discount Price: ${dcPrice}</h1></c:if>
</body>
</html>
