<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">
    <h1>Welcome, ${sessionScope.user.username}!</h1>

    <c:if test="${not empty ads}">
        <h2>Your Ads:</h2>
        <table class="table">
            <thead>
            <tr>
                <th>Title</th>
                <th>Description</th>
            </tr>
            </thead>
            <tbody>
            <c:forEach var="ad" items="${ads}">
                <tr>
                    <td><a href="/ads/detail?id=${ad.id}">${ad.title}</a></td>
                    <td>${ad.description}</td>
                </tr>
            </c:forEach>
            </tbody>
        </table>
    </c:if>


    <p>Username: ${sessionScope.user.username}</p>
    <p>Email: ${sessionScope.user.email}</p>

    <!-- Edit button -->
    <form  method="get" action="/edituser">
        <input type="hidden" name="userId" value="${sessionScope.user.id}">
        <input type="submit" value="Edit">
    </form>

    <!-- Delete button -->
    <form  method="get" action="/deleteUser">
        <input type="hidden" name="userId" value="${sessionScope.user.id}">
        <input type="submit" value="Delete">
    </form>

</div>

</body>
</html>

