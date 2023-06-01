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
<body>
<div class="container">
  <h1>Here is Ad Detail</h1>
  <div class="col-md-6">
    <h2>Title: ${ad.title}</h2>
    <p>Description: ${ad.description}</p>
  </div>
</div>
</body>
</html>
