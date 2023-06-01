<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Your Profile" />
    </jsp:include>
    <style>
        .container {
            margin-top: 50px;
            text-align: center;
        }

        h1, h2, h3 {
            color: #333;
            font-family: Arial, sans-serif;
        }

        p {
            color: #666;
            font-family: Arial, sans-serif;
        }

        table {
            width: 100%;
            border-collapse: collapse;
        }

        table, th, td {
            border: 1px solid #ddd;
            padding: 8px;
        }

        th {
            background-color: #f5f5f5;
        }

        a {
            text-decoration: none;
            color: #337ab7;
        }

        a:hover {
            text-decoration: underline;
        }

        form {
            display: inline-block;
            margin-top: 20px;
        }

        input[type="submit"] {
            background-color: #337ab7;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-family: Arial, sans-serif;
            font-size: 16px;
            transition: background-color 0.3s ease;
        }

        input[type="submit"]:hover {
            background-color: #286090;
        }
        input[type="submit"]:focus{
            transform: scale(0.98);
        }
        .user-info {
            margin-bottom: 20px;
        }

        .user-info p {
            margin: 5px;
        }

        .edit-delete-buttons {
            margin-top: 20px;

        }
    </style>
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
    <h3>Do you want to create a new ad? Click <a href="/ads/create">here</a>!</h3>

    <div class="user-info">
        <p>Username: ${sessionScope.user.username}</p>
        <p>Email: ${sessionScope.user.email}</p>
    </div>

    <div class="edit-delete-buttons">
        <!-- Edit button -->
        <h4>Do you want to change info on your account? Click Edit!</h4>
        <form method="get" action="/edituser">
            <input type="hidden" name="userId" value="${sessionScope.user.id}">
            <input type="submit" value="Edit">
        </form>

        <!-- Delete button -->
        <h4>Do you want to delete account? This will delete all your ads!</h4>
        <form method="get" action="/deleteUser">
            <input type="hidden" name="userId" value="${sessionScope.user.id}">
            <input type="submit" value="Delete">
        </form>
    </div>

</div>

</body>
</html>

