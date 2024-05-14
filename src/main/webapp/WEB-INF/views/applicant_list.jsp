<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <meta http-equiv="content-type" content="text/html"; charset="UTF-8">
    <title>Insert title here</title>
</head>
<body>

<p>MyBatis : Hello World</p>
<br>
<c:forEach var="dto" items="${testers}">
    <p>${dto.apl_no} / ${dto.dept}<p>
</c:forEach>

</body>
</html>



