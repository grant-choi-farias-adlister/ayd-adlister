<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <jsp:include page="/WEB-INF/partials/head.jsp">
        <jsp:param name="title" value="Viewing All The Ads" />
    </jsp:include>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />

<div class="container">
<h1>Edit Ad</h1>
<form action="/ads/edit" method="post">
    <div class="form-group">
    <input type="hidden" name="id" value="${ad.id}">
    </div>
    <div>
        <label for="title">Title:</label>
        <input type="text" name="title" id="title" value="${ad.title}">
    </div>
    <div class="form-group">
        <label for="description">Description:</label>
        <textarea name="description" id="description">${ad.description}</textarea>
    </div>
    <input type="submit" class="btn btn-block btn-primary">
</form>
</div>
</body>
</html>
