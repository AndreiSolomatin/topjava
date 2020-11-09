<%@ page import="ru.javawebinar.topjava.util.TimeUtil" %>
<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<html lang="ru">
    <head>
        <title>Meals</title>
        <style>
            .notExceeded {color: green}
            .exceeded {color: red}
        </style>
    </head>
    <body>
        <h2><a href="index.html">Home</a></h2>
        <hr>
        <h3>Meals</h3>
        <br>
        <table border="1" cellpadding="10" cellspacing="0">
            <caption></caption>
            <thead>
                <tr>
                    <th>Date</th>
                    <th>Description</th>
                    <th>Calories</th>
                </tr>
            </thead>
            <tbody>
                <c:forEach items="${meals}" var="meal">
                    <jsp:useBean id="meal" scope="page" type="ru.javawebinar.topjava.model.MealTo"/>
                    <tr class="${meal.excess ? 'exceeded' : 'notExceeded'}">
                        <td>
                        <%=TimeUtil.toString(meal.getDateTime())%>>
                        </td>
                        <td>${meal.description}</td>
                        <td>${meal.calories}</td>
                    </tr>
                </c:forEach>
            <tbody>
        </table>
    </body>
</html>