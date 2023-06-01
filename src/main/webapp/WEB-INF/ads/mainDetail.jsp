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
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      font-family: Arial, sans-serif;
    }

    h1, h2, h3 {
      color: #333;
      font-family: inherit;
      text-align: center;
    }

    .col-md-6 {
      display: flex;
      flex-direction: column;
      justify-content: center;
      align-items: center;
      margin: 50px auto;
      padding: 100px;
      background-color: #f5f5f5;
      border-radius: 5px;
      box-shadow: 0 2px 5px rgba(0, 0, 0, 0.1);
    }
  </style>
</head>
<body>
<jsp:include page="/WEB-INF/partials/navbar.jsp" />
<body>
<div class="container">
  <h1>Here is Ad Detail</h1>
  <div class="col-md-6">

    <h2>${ad.title}</h2>

    <h3>${ad.description}</h3>

  </div>
</div>
</body>
</html>
