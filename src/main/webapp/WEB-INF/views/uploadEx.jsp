<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="Template Mo">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900" rel="stylesheet">
    <title>Education Template - Meeting Detail Page</title>
    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <%--  Bootstrap 및 jQuery 라이브러리  --%>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="assets/css/fontawesome.css">
    <link rel="stylesheet" href="assets/css/templatemo-edu-meeting.css">
    <link rel="stylesheet" href="assets/css/owl.css">
    <link rel="stylesheet" href="assets/css/lightbox.css">
    <!-- Template Main CSS File -->
    <link href="assets/css/style.css" rel="stylesheet">
    <style>
        /* 필수입력항목 *로 표시 */
        .required {
            color: red; /* 빨간색 */
            margin-right: 4px; /* 별표와 레이블 사이의 간격 조절 */
        }

        /*!* 비밀번호 일치 메시지 *!*/
        /*#password-match-message {*/
        /*    color: blue; !* 파란색으로 설정 *!*/
        /*}*/
    </style>
</head>
<body>
<!-- 파일 등록 테스트 -->
<div class="row mb-3">
    <div class="col-sm-7">
        <input class="form-control" type="file" name="uploadFiles" multiple/>
        <button class="uploadBtn">Upload</button>
    </div>
    <div class="col-sm-7 uploadResult" multiple>

    </div>
</div>
<script
        src="https://code.jquery.com/jquery-3.5.1.min.js"
        integrity="sha256-9/aliU8dGd2tb60SsuzixeV4y/faTqgFtohetphbbj0="crossorigin="anonymous">
</script>
<script>
    // Upload버튼 클릭 시
    // FormData를 생성하여 가상의 form 객체로 파일 전송
    // 컨트롤러에서 uploadFiles라는 이름으로 파일데이터 추가
    $('.uploadBtn').click(function (){
        var formData = new FormData();

        var inputFile = $("input[type='file']");

        var files = inputFile[0].files;

        for(var i = 0; i < files.length; i++){
            console.log(files[i]);
            formData.append("uploadFiles", files[i]);
        }

        //실제 업로드 부분 (upload ajax)
        $.ajax({
            url: '/uploadAjax',
            processData: false,
            contentType: false,
            data: formData,
            type: 'POST',
            dataType: 'json',
            success: function (result){
                console.log(result);
                //업로드 후 이미지 호출
                showUploadedImages(result);
            },
            error: function(jqXHR, textStatus, errorThrown){
                console.log(textStatus);
            }
        }); //$.ajax
    });


    //ajax업로드 이후 이미지들을 호출
    function showUploadedImages(arr){
        console.log(arr);

        var divArea = $(".uploadResult")

        for(var i = 0; i < arr.length; i++){
            divArea.append("<img src='/display?fileName="+arr[i].thumbnailURL+"'>");
        }
    }
</script>
</body>
</html>