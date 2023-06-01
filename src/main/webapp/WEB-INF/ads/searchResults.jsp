<%@ page import="com.codeup.adlister.models.User" %><%--
  Created by IntelliJ IDEA.
  User: princessauriel
  Date: 5/31/23
  Time: 12:06 PM
  To change this template use File | Settings | File Templates.
--%>

<%--<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>--%>
<%--<%@ page contentType="text/html;charset=UTF-8" language="java" %>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <jsp:include page="/WEB-INF/partials/head.jsp">--%>
<%--        <jsp:param name="title" value="Viewing All The Ads" />--%>
<%--    </jsp:include>--%>

<%--    <title>Search Results</title>--%>

<%--</head>--%>
<%--<body>--%>
<%--<jsp:include page="/WEB-INF/partials/navbar.jsp" />--%>

<%--<div class="container">--%>

<%--    &lt;%&ndash; Check if username exists &ndash;%&gt;--%>
<%--    <% if (request.getSession().getAttribute("user") != null) { %>--%>
<%--    <h1>Hey, <%= ((User) request.getSession().getAttribute("user")).getUsername() %>, here are your search results!</h1>--%>
<%--    <% } %>--%>
<%--    <ul>--%>
<%--        <c:forEach var="ad" items="${ads}">--%>
<%--            <li>${ad.title} - ${ad.description}</li>--%>
<%--        </c:forEach>--%>
<%--    </ul>--%>
<%--</div>--%>

<%--</body>--%>
<%--</html>--%>


<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
    <link rel="stylesheet" type="text/css" href="/css/style.css"> <!-- Add a CSS file -->

    <title>Search Results</title>

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
    <h1>Search Results</h1>
    <p> <%= ((User) request.getSession().getAttribute("user")).getUsername() %>, here are your search results!!</p>
    <c:forEach var="ad" items="${ads}">
        <div class="card">
            <div class="card-title">${ad.title}</div>
            <div class="card-description">${ad.description}</div>
        </div>
    </c:forEach>
</div>

</body>
</html>






