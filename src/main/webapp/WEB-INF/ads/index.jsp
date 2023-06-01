<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
    <link rel="stylesheet" type="text/css" href="/css/style.css"> <!-- Add a CSS file -->

    <style>
        /* Inline CSS styles for demonstration purposes */
        .container {
            margin-top: 20px;
        }

        .card {
            border: 1px solid #ccc;
            border-radius: 5px;
            padding: 10px;
            margin-bottom: 10px;
        }

        .card-title {
            font-weight: bold;
        }

        .card-description {
            margin-top: 5px;
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
        <div class="card">
            <h2><a href="/ads/detail?id=${ad.id}">${ad.title}</a></h2>
            <p class="card-description">${ad.description}</p>
            <form action="/ads/edit" method="get">
                <input type="hidden" name="id" value="${ad.id}">
                <button>Edit</button>
            </form>
            <form action="/ads/delete" method="post">
                <input type="hidden" name="id" value="${ad.id}">
                <button>Delete</button>
            </form>
        </div>
    </c:forEach>
</div>

</body>
</html>
