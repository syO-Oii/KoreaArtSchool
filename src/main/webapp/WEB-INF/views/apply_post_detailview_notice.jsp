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
    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="assets/css/fontawesome.css">
    <link rel="stylesheet" href="assets/css/templatemo-edu-meeting.css">
    <link rel="stylesheet" href="assets/css/owl.css">
    <link rel="stylesheet" href="assets/css/lightbox.css">
    <!-- Template Main CSS File -->
    <link href="assets/css/style.css" rel="stylesheet">
</head>
<body>
<!-- ***** Header Area Start ***** -->

<header class="header-area header-sticky">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <nav class="main-nav">
                    <a href="" class="logo">
                        한국예술학교
                    </a>
                    <!-- ***** Menu Start ***** -->
                    <ul class="nav">
                        <li class="scroll-to-section"><a href="apply_step_one.jsp" class="active">원서접수</a></li>
                        <li><a href="meetings.jsp">공지사항</a></li>
                        <li class="has-sub">
                            <a href="javascript:void(0)">입학 안내</a>
                            <ul class="sub-menu">
                                <li><a href="meetings.html">전형일정</a></li>
                                <li><a href="meeting-details.html">학과소개</a></li>
                            </ul>
                        </li>
                        <li class="has-sub">
                            <a href="javascript:void(0)">접수/결과 조회</a>
                            <ul class="sub-menu">
                                <li><a href="">접수조회</a></li>
                                <li><a href="">결과조회</a></li>
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
<section class="heading-page header-text" id="top">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <h6>Notice</h6>
                <h2>공지사항</h2>
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
                        <form action="/view" method="GET">
                        <section>
                                <div class="card form-label form-group">
                                    <div class="card-body">
                                        <h5 class="card-title"></h5>
                                        <div class="quill-editor-default">
                                            ${dto.postTitle}
                                            ${dto.postContent}
                                            ${dto.writer}
                                        </div>
                                    </div>
                                </div>
                            </section>

                            <div class="col-lg-12">
                                <div class="main-button-black text-center">
                                    <a class="btn btn-primary btn-next" href="/list">목록</a>
                                </div>
                            </div>
<%--                        </form>--%>
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
    <!-- <p>© CloudStudying | <a href="#">Privacy</a> | <a href="#">Terms</a></p> -->
</footer>

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
<script src="https://cdnjs.cloudflare.com/ajax/libs/cleave.js/1.6.0/cleave.min.js"></script>

<script>
    document.addEventListener('DOMContentLoaded', function () {
        const birthdayInput = document.getElementById('birthday');

        function applyCustomColor() {
            if (birthdayInput.value == '20050101') {
                birthdayInput.classList.add('custom-color');
            } else {
                birthdayInput.classList.remove('custom-color');
            }
        }

        // Apply color on page load
        applyCustomColor();

        // Apply color on input change
        birthdayInput.addEventListener('input', applyCustomColor);
    });

    //according to loftblog tut
    $('.nav li:first').addClass('active');
    var showSection = function showSection(section, isAnimate) {
        var
            direction = section.replace(/#/, ''),
            reqSection = $('.section').filter('[data-section="' + direction + '"]'),
            reqSectionPos = reqSection.offset().top - 0;
        if (isAnimate) {
            $('body, html').animate({
                scrollTop: reqSectionPos
            }, 800);
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

    // 생년월일 script
    var cleave = new Cleave('.input-element', {
        date: true,
        delimiter: '-',
        datePattern: ['Y', 'm', 'd']
    });

    function checkNum(event){
        var key = event.key;
        console.log(key);
        if((key >= 0 && key < 10) || key == 'Backspace'){
            return true;
        } else {
            event.preventDefault();
        }
    }

</script>
<script>
    document.addEventListener('DOMContentLoaded', function () {
        const birthdayInput = document.getElementById('birthday');

        function applyCustomColor() {
            if (birthdayInput.value == '20050101') {
                birthdayInput.classList.add('custom-color');
            } else {
                birthdayInput.classList.remove('custom-color');
            }
        }

        // Apply color on page load
        applyCustomColor();

        // Apply color on input change
        birthdayInput.addEventListener('input', applyCustomColor);
    });
</script>

</body>
</html>