<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
    <style>
        .container {
            margin-top: 50px;
            display: flex;
            justify-content: center;
            align-items: center;
            flex-direction: column;
            font-family: Arial, sans-serif;
        }

        h1, h2 {
            color: #333;
            font-family: Arial, sans-serif;
        }

        form {
            margin-top: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
        }

        input {
            padding: 10px;
            font-size: 18px;
            border-radius: 5px;
            border: 1px solid #ccc;
            width: 600px;
            margin-right: 10px;
        }

        button {
            display: inline-block;
            background-color: #337ab7;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-family: inherit;
            font-size: 16px;
            transition: background-color 0.3s ease;
            width: 200px;
        }

        button[type="submit"]:hover {
            background-color: #286090;
        }

        .col-md-6 {
            display: flex;
            justify-content: center;
            align-items: center;
            margin: 20px;
            padding: 20px;
            background-color: #f5f5f5;
            border-radius: 5px;
            box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
        }

        .col-md-6 a {
            color: #337ab7;
            text-decoration: none;
            transition: color 0.3s ease;
        }

        .col-md-6 a:hover {
            color: #286090;
        }
    </style>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">
    <h1>Here Are all the ads!</h1>

    <form action="/searchResults" method="GET">
        <input type="text" name="query" placeholder="Enter your search query" />
        <button type="submit">Search</button>
    </form>

    <c:forEach var="ad" items="${ads}">
        <div class="col-md-6">

            <h2><a href="/ads/mainDetail?id=${ad.id}">${ad.title}</a></h2>

        </div>
    </c:forEach>
</div>

</body>
</html>
