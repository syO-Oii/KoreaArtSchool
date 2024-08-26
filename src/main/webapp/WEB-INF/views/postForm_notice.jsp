<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>한국예술학교</title>
    <style>
        .container {
            width: 500px;
            margin: 0 auto;
            padding: 20px;
            border: 1px solid #ccc;
            border-radius: 5px;
            background-color: #f9f9f9;
        }
        .form-group {
            margin-bottom: 15px;
        }
        .form-group label {
            display: block;
            font-weight: bold;
            margin-bottom: 5px;
        }
        .form-group input[type="text"] {
            width: calc(100% - 10px);
            padding: 5px;
            border: 1px solid #ccc;
            border-radius: 3px;
        }
        .btn-submit {
            padding: 8px 20px;
            background-color: #007bff;
            color: #fff;
            border: none;
            border-radius: 3px;
            cursor: pointer;
        }
        .btn-back {
            padding: 8px 20px;
            background-color: #6c757d;
            color: #fff;
            border: none;
            border-radius: 3px;
            cursor: pointer;
            text-decoration: none;
        }
    </style>
</head>
<body>

<div class="container">
    <form action="/post" method="post" >
        <%--enctype="multipart/form-data"--%>
        <div class="form-group">
            <label for="postTitle">제목</label>
            <input type="text" id="postTitle" name="postTitle">
        </div>
        <div class="form-group">
            <label for="postContent">내용</label>
            <input type="text" id="postContent" name="postContent">
        </div>
        <div class="form-group">
            <label for="writer">작성자</label>
            <input type="text" id="writer" name="writer">
        </div>

        <!-- Hidden input : bbsId 값 1로 고정(=공지사항) -->
        <input type="hidden" name="bbsId" value="1">



        <input type="hidden" name="delYn" value="N">
        <input type="hidden" name="adminEml" value="admin@example.com">

        <div class="form-group">
            <input type="submit" class="btn-submit" value="입력">
            <a href="post_list_notice" class="btn-back">목록</a>
        </div>
    </form>
</div>
</body>
</html>