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

<%--    카카오 맵 clusterer: 마커를 클러스터링 할 수 있는 클러스터러 라이브러리 입니다.
services: 장소 검색 과 주소-좌표 변환 을 할 수 있는 services 라이브러리 입니다.
drawing: 지도 위에 마커와 그래픽스 객체를 쉽게 그릴 수 있게 그리기 모드를 지원하는 drawing 라이브러리 입니다.--%>
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ce9646be8c13a51adf403404c1e06369&libraries=LIBRARY"></script>
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ce9646be8c13a51adf403404c1e06369&libraries=services"></script>
    <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ce9646be8c13a51adf403404c1e06369&libraries=services,clusterer,drawing"></script>

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
<!-- ***** Header Area Start ***** -->

<header class="header-area header-sticky">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <nav class="main-nav">
                    <a href="/main" class="logo" style="width: 350px">
                        Korea Art School
                    </a>
                    <!-- ***** Menu Start ***** -->
                    <ul class="nav">
                        <li><a href="/apply" >원서접수</a></li>
                        <li><a href="/notice_list" >공지사항</a></li>
                        <li class="has-sub">
                            <a href="javascript:void(0)" class="active" >접수/결과 조회</a>
                            <ul class="sub-menu">
                                <li><a href="/ApplicantCheck" >접수조회</a></li>
                                <li><a href="/ApplicantResultCheck">결과조회</a></li>
                            </ul>
                        </li>
                    </ul>
                    <a class='menu-trigger'>
                        <span>Menu</span>
                    </a>
                    <!-- ***** Menu End ***** -->
                </nav>
            </div>
        </div>
    </div>
</header>
<!-- ***** Header Area End ***** -->
<section class="heading-page header-text" id="top">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h2>실기 면접 장소</h2>
            </div>
        </div>
    </div>
</section>
<!-- ***** 본문 시작 ***** -->
<section class="meetings-page" id="meetings">
    <div class="container">
        <div class="row justify-content-center">
            <!-- ***** main 태그 시작 ***** -->
            <main id="main" class="main">
                <div class="card">
                    <div class="card-body">

                        <!-- General Form Elements -->

                        <main id="main2" class="main">
                            <fieldset class="row mb-3 ">
                                <style>
                                    legend {
                                        font-weight: bold; /* 텍스트 bold */
                                        font-size: 1.5em; /* 텍스트 크기 1.5em으로 설정 */
                                        text-align: center;
                                    }
                                </style>
                                <legend>실기 면접 장소</legend>
                            </fieldset>
                            <section class="section">
                                    <!-- 지도 -->
                                <div id="map" style="width:1000px;height:400px;"></div>
                            </section>
                            <section class="section" style="margin-top: 50px; margin-bottom: 60px;"></section>
                            <script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=ce9646be8c13a51adf403404c1e06369"></script>
                            <script>
                                var mapContainer = document.getElementById('map'), // 지도를 표시할 div
                                    mapOption = {
                                        center: new kakao.maps.LatLng(37.5564844, 126.9451737), // 지도의 중심좌표
                                        level: 3 // 지도의 확대 레벨
                                    };

                                var map = new kakao.maps.Map(mapContainer, mapOption); // 지도를 생성합니다

                                // 마커를 표시할 위치입니다
                                var position =  new kakao.maps.LatLng(37.5564844, 126.9451737);

                                // 마커를 생성합니다
                                var marker = new kakao.maps.Marker({
                                    position: position,
                                    clickable: true // 마커를 클릭했을 때 지도의 클릭 이벤트가 발생하지 않도록 설정합니다
                                });

                                // 아래 코드는 위의 마커를 생성하는 코드에서 clickable: true 와 같이
                                // 마커를 클릭했을 때 지도의 클릭 이벤트가 발생하지 않도록 설정합니다
                                // marker.setClickable(true);

                                // 마커를 지도에 표시합니다.
                                marker.setMap(map);

                                // 마커를 클릭했을 때 마커 위에 표시할 인포윈도우를 생성합니다
                                var iwContent = '<div  style="padding:2px; width:290px; height=80px; ">서울 마포구 신촌로 176 중앙빌딩 5층<br><a href="https://www.choongang.co.kr/" style="color:blue" target="_blank">중앙정보처리학원</a></div>', // 인포윈도우에 표출될 내용으로 HTML 문자열이나 document element가 가능합니다
                                    iwRemoveable = false; // removeable 속성을 ture 로 설정하면 인포윈도우를 닫을 수 있는 x버튼이 표시됩니다

                                // 인포윈도우를 생성합니다
                                var infowindow = new kakao.maps.InfoWindow({
                                    content : iwContent,
                                    removable : iwRemoveable
                                });

                                // 마커에 클릭이벤트를 등록합니다
                                kakao.maps.event.addListener(marker, 'click', function() {
                                    // 마커 위에 인포윈도우를 표시합니다
                                    infowindow.open(map, marker);
                                });
                            </script>




                        </main><!-- End #main -->

                    </div>
                </div>
            </main>
            <!-- ***** 두 번째 페이지의 main 태그 끝 ***** -->
        </div>
    </div>
</section>
<footer class="footer">
    <p>서울특별시 마포구 신촌로 176 신입학 문의 : 02-123-4567 재학생 문의 : 02-123-4567</p>
    <p>Copyright © 2024 Maximum Co., Ltd. All Rights Reserved.</p>
</footer>
<!-- ***** 본문 끝 ***** -->
<!-- Scripts -->
<!-- Bootstrap core JavaScript -->
<script src="vendor/jquery/jquery.min.js"></script>
<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="assets/js/isotope.min.js"></script>
<script src="assets/js/owl-carousel.js"></script>
<script src="assets/js/lightbox.js"></script>
<script src="assets/js/tabs.js"></script>
<script src="assets/js/video.js"></script>
<script src="assets/js/slick-slider.js"></script>
<script src="assets/js/custom.js"></script>

<script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

<!-- 생년월일 설정 script -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/cleave.js/1.6.0/cleave.min.js"></script>

<%-- 이미지 업로드 설정 --%>
<script src="/js/jQuery-2.1.4.min.js"></script>

<script>
    $(document).ready(function (){
        var formObj = $("#item");
        $("#btnRegister").on("click",function (){
            formObj.attr("action", "/item/register");
            formObj.attr("method","post");
            formObj.submit();
        });

        $("#btnList").on("click",function (){
            self.location="/item/list"
        })
    });
</script>
</body>
</html>