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
        h1{
            font-size: 60px;
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

        .btn {
            background-color: #337ab7;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            font-family: Arial, sans-serif;
            font-size: 16px;
            transition: background-color 0.3s ease;
            width: 150px;
        }

        .btn:hover {
            background-color: #286090;
        }
        .btn:focus{
            transform: scale(0.98);
        }
        .user-info {
            margin-bottom: 100px;
        }

        .user-info p {
            margin: 5px;
        }
        .edit-delete-buttons {
            margin-top: 20px;
            display: table;
            margin: 0 auto;
        }

        .edit-delete-buttons form {
            display: table-cell;
            padding: 10px;
            vertical-align: middle;
            text-align: center;
        }

        .edit-delete-buttons h4 {
            margin-top: 14px;
            padding-bottom: 10px;
        }

        .edit-delete-buttons input[type="submit"] {
            display: block;
            margin: 0 auto;
        }

        .edit-delete-buttons .form-container {
            display: flex;
            flex-direction: column;
            align-items: center;
        }

        .edit-delete-buttons .form-container h4,
        .edit-delete-buttons .form-container input[type="submit"] {
            margin: 5px 0;
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
        <form method="get" action="/edituser" class="editForm">
            <input type="hidden" name="userId" value="${sessionScope.user.id}">
            <input type="submit" class="Btn" value="Edit">
        </form>

        <!-- Delete button -->
        <h4>Do you want to delete account? This will delete all your ads!</h4>
        <form method="get" action="/deleteUser" class="deleteForm">
            <input type="hidden" name="userId" value="${sessionScope.user.id}">
            <input type="submit" class="Btn" value="Delete">
        </form>
    </div>

</div>

</body>
</html>

