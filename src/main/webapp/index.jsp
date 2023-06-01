<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Welcome to my site!" />
    </jsp:include>
</head>
<style>
    * {
        box-sizing: border-box;
    }


    .container {
        background-image: url("img/background.jpg");
        width: 1000px;
        height: 100vh;
        background-repeat: no-repeat;
        background-size: cover;
        display: flex;
        flex-direction: column;
        align-items: center;
    }

    h1, h3 {
        color: #fff;
        margin: 0;
        padding: 20px;
        text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.5);
    }
    h1 {
        font-size: 50px;
    }
</style>
<body>
    <jsp:include page="/WEB-INF/partials/navbar.jsp" />
    <div class="container">
        <h1>Welcome to the Adlister!</h1>
        <h3>You are not a member? Click <a href="/register">here</a>!</h3>
        <h3>Click here to <a href="/login">Login</a>!</h3>
    </div>
</body>
</html>
