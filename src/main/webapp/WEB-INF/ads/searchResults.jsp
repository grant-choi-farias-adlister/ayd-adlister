<%@ page import="com.codeup.adlister.models.User" %><%--
  Created by IntelliJ IDEA.
  User: princessauriel
  Date: 5/31/23
  Time: 12:06 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>

    <title>Search Results</title>

</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">

    <%-- Check if username exists --%>
    <% if (request.getSession().getAttribute("user") != null) { %>
    <h1>Hey, <%= ((User) request.getSession().getAttribute("user")).getUsername() %>, here are your search results!</h1>
    <% } %>
    <ul>
        <c:forEach var="ad" items="${ads}">
            <li>${ad.title} - ${ad.description}</li>
        </c:forEach>
    </ul>
</div>

</body>
</html>





