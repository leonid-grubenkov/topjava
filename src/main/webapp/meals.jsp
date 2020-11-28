<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib uri="http://sargue.net/jsptags/time" prefix="javatime" %>
<html lang="ru">
<head>
    <title>Meals</title>
</head>
<body>
<h3><a href="index.html">Home</a></h3>
<hr>
<h2>Meals</h2>
<table border="1" cellspacing="0" cellpadding="10">
    <tr>
        <td>Date</td>
        <td>Description</td>
        <td>Calories</td>
    </tr>
    <c:forEach items="${mealsTo}" var="meal">
        <tr style="color:${meal.excess ? 'green' : 'red'}">
            <javatime:format value="${meal.dateTime}" pattern="yyyy-MM-dd HH:mm" var="parsedDate"/>
        <td>${parsedDate}</td>
        <td>${meal.description}</td>
        <td>${meal.calories}</td>
        </tr>
    </c:forEach>
</table>
</body>
</html>
