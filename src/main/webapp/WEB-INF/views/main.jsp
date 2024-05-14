<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta name="description" content="">
    <meta name="author" content="TemplateMo">
    <link href="https://fonts.googleapis.com/css?family=Poppins:100,200,300,400,500,600,700,800,900" rel="stylesheet">

    <title>한국예술학교</title>

    <!-- Bootstrap core CSS -->
    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">


    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="assets/css/fontawesome.css">
    <link rel="stylesheet" href="assets/css/templatemo-edu-meeting.css">
    <link rel="stylesheet" href="assets/css/owl.css">
    <link rel="stylesheet" href="assets/css/lightbox.css">

    <style>
        h4 {
            font-size: 100px; /* 원하는 크기로 조절 */
        }
    </style>

</head>

<body>

<!-- ***** Header Area Start ***** -->

<header class="header-area header-sticky">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <nav class="main-nav">
                    <a href="" class="school-name">
                        한국예술학교
<%--                        <span class="sub-name">입학정보</span>--%>
                    </a>

                    <!-- ***** Logo End ***** -->
                    <!-- ***** Menu Start ***** -->
                    <ul class="nav">
                        <li class="scroll-to-section"><a href="apply.jsp" class="active">원서접수</a></li>
                        <li><a href="meetings.jsp">공지사항</a></li>
                        <li class="has-sub">
                            <a href="javascript:void(0)">입학 안내</a>
                            <ul class="sub-menu">
                                <li><a href="meetings.html">전형일정</a></li>
                                <li><a href="meeting-details.html">학과소개</a></li>
                            </ul>
                        </li>
<%--                        <li class="scroll-to-section"><a href="#">접수조회</a></li>--%>
                        <li class="has-sub">
                            <a href="javascript:void(0)">접수/결과 조회</a>
                            <ul class="sub-menu">
                                <li><a href="meetings.html">접수조회</a></li>
                                <li><a href="meeting-details.html">결과조회</a></li>
                            </ul>
                        </li>
                        <li class="scroll-to-section"><a href="#apply">입학 Q&A</a></li>
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

<!-- ***** Main Banner Area Start ***** -->
<section class="section main-banner" id="top" data-section="section1">
    <video autoplay muted loop id="bg-video">
        <source src="assets/images/course-video.mp4" type="video/mp4" />
    </video>

    <div class="video-overlay header-text">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="caption">
                        <h5>예술과 창의력의 새로운 표준</h5>
                        <h1>Korea National University of Arts</h1>
                        <p>한국예술학교는 창의적인 예술 교육으로 미래를 준비합니다. 다양한 예술적 영역을 탐구하고 교수진이 탄탄한 지도 아래에서 자신만의 예술적 목소리를 발견할 수 있으며, 예술의 세계에서 독창적으로 발전할 수 있는 기반을 마련할 수 있습니다</a>.</p><br>
                        <div class="main-button-yellow">
                            <div class="scroll-to-section"><a href="#">원서 접수하기</a></div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- ***** Main Banner Area End ***** -->

<section class="services">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="owl-service-item owl-carousel">
                    <div class="item">
                        <div class="icon">
                            <img src="../../../resources/static/assets/images/service-icon-01.png" alt="">
                        </div>
                        <div class="down-content">
                            <h4>디자인 계열<br><span class="sub-text">시각디자인 / 무대영화미술</span></h4>
                            <p>현대 디자인의 핵심 기술과 이론을 깊이 있게 학습하여 실무 능력을 함양한 디자인 전문가로 성장할 수 있도록 지원합니다<br>      </p>
                        </div>
                    </div>

                    <div class="item">
                        <div class="icon">
                            <img src="../../../resources/static/assets/images/service-icon-02.png" alt="">
                        </div>
                        <div class="down-content">
                            <h4>연기 계열<br><span class="sub-text">연기 / 모델</span></h4>
                            <p>연기 분야에 대한 기본기를 다지고 다채로운 표현력을 갖춘 연기자로 성장하여 다양한 모델링 분야에서 활동할 수 있도록 지원합니다 </p>
                        </div>
                    </div>

                    <div class="item">
                        <div class="icon">
                            <img src="../../../resources/static/assets/images/service-icon-03.png" alt="">
                        </div>
                        <div class="down-content">
                            <h4>음악 계열<br><span class="sub-text">보컬 / 싱어송라이터</span></h4>
                            <p>다양한 음악 장르와 스타일을 배울 수 있는 기회를 제공하여 전문가로 활약할 수 있는 능력을 기를 수 있도록 지원합니다 </p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>

<section class="upcoming-meetings" id="meetings">
    <div class="container">
        <div class="row">
<%--            <div class="col-lg-12">--%>

<%--                <h2>Upcoming Meetings</h2>--%>
<%--            </div>--%>
        </div>
    </div>
</section>

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
<script>
    //according to loftblog tut
    $('.nav li:first').addClass('active');

    var showSection = function showSection(section, isAnimate) {
        var
            direction = section.replace(/#/, ''),
            reqSection = $('.section').filter('[data-section="' + direction + '"]'),
            reqSectionPos = reqSection.offset().top - 0;

        if (isAnimate) {
            $('body, html').animate({
                    scrollTop: reqSectionPos },
                800);
        } else {
            $('body, html').scrollTop(reqSectionPos);
        }

    };

    var checkSection = function checkSection() {
        $('.section').each(function () {
            var
                $this = $(this),
                topEdge = $this.offset().top - 80,
                bottomEdge = topEdge + $this.height(),
                wScroll = $(window).scrollTop();
            if (topEdge < wScroll && bottomEdge > wScroll) {
                var
                    currentId = $this.data('section'),
                    reqLink = $('a').filter('[href*=\\#' + currentId + ']');
                reqLink.closest('li').addClass('active').
                siblings().removeClass('active');
            }
        });
    };

    $('.main-menu, .responsive-menu, .scroll-to-section').on('click', 'a', function (e) {
        e.preventDefault();
        showSection($(this).attr('href'), true);
    });

    $(window).scroll(function () {
        checkSection();
    });
</script>
</body>


</html>