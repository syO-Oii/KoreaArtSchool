<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>공통 코드 예시</title>
</head>
<body>

<!-- cdSe와 cd 값을 사용하여 가져온 코드 이름 출력 -->
<div>코드 이름: <span>${cdSeCdName}</span></div>

<!-- cdSe 값을 사용하여 가져온 코드 목록 출력 -->
<table border="1">
    <thead>
    <tr>
        <th>코드</th>
        <th>코드 이름</th>
        <th>설명</th>
        <th>활성화 여부</th>
        <th>생성일</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="commCd" items="${cdSeCodeList}">
        <tr>
            <td>${commCd.cd}</td>
            <td>${commCd.cdNm}</td>
            <td>${commCd.cdDesc}</td>
            <td>${commCd.isYn}</td>
            <td>${commCd.createdAt}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>

<table border="1">
    <thead>
    <tr>
        <th>코드</th>
        <th>코드 이름</th>
        <th>설명</th>
        <th>활성화 여부</th>
        <th>생성일</th>
    </tr>
    </thead>
    <tbody>
    <c:forEach var="commCd" items="${cdACList}">
        <tr>
            <td>${commCd.cd}</td>
            <td>${commCd.cdNm}</td>
            <td>${commCd.cdDesc}</td>
            <td>${commCd.isYn}</td>
            <td>${commCd.createdAt}</td>
        </tr>
    </c:forEach>
    </tbody>
</table>

</body>
</html>