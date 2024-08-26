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
    <title>KAS :: 한국예술학교 입학페이지</title>

    <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

    <link rel="stylesheet" href="assets/css/fontawesome.css">
    <link rel="stylesheet" href="assets/css/templatemo-edu-meeting.css">
    <link rel="stylesheet" href="assets/css/owl.css">
    <link rel="stylesheet" href="assets/css/lightbox.css">

    <link href="assets/css/style.css" rel="stylesheet">
</head>
<body>
<!-- ***** Header Area Start ***** -->
<header class="header-area header-sticky">
    <div class="container">
        <div class="row">
            <div class="col-12">

                <nav class="main-nav">
                    <a href="/main" class="logo">
                        Korea Art School
                    </a>
                    <!-- ***** Menu Start ***** -->
                    <ul class="nav">
                        <li><a href="/apply">원서접수</a></li>
                        <li><a href="/list" class="active">공지사항</a></li>
                        <li><a href="/ApplicantCheck">접수 조회</a></li>
                        <li><a href="/ApplicantResultCheck">결과 조회</a></li>
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
                        <form>
                        <section>
                                <div class="card form-label form-group">
                                    <div class="card-body">
                                        <h5 class="card-title" readonly="">${dto.postTitle}</h5>
                                        <div class="quill-editor-default">
                                            <textarea class="form-control"  rows="15" readonly> ${dto.postContent}</textarea>

                                            <!-- 파일 다운로드 링크 추가 -->
<%--                                            <label for="fileName">첨부파일: </label>--%>
<%--                                            <a href="${dto.filePath}" id="fileName" name="fileName" download="${dto.fileName}">--%>
<%--                                                ${dto.fileName}--%>
<%--                                            </a>--%>
                                        </div>
                                    </div>
                                </div>
                            </section>
                            <script>
                                document.addEventListener("DOMContentLoaded", function() {
                                    document.getElementById("postTitle").setAttribute("readonly", true);
                                    document.getElementById("postContent").setAttribute("readonly", true);
                                    document.getElementById("fileName").setAttribute("readonly", true);
                                });
                            </script>
                            <style>
                                /* '목록' 버튼 */
                                .page-list {
                                    color: white;
                                    background-color: #22201e;

                                    border-color: white;
                                }
                                .page-list:hover {
                                    color: white;
                                    background-color:#f5a425;
                                    border-color: #f5a425;

                                    color:#22201e
                                }
                            </style>
                            <div class="col-lg-12">
                                <div class="main-button-black text-center ">
                                    <a class="btn btn-primary btn-next page-list" href="/list">목록</a>
                                </div>
                            </div>
                        </form>
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

<!-- Scripts -->
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

        applyCustomColor();

        birthdayInput.addEventListener('input', applyCustomColor);
    });

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

        applyCustomColor();

        birthdayInput.addEventListener('input', applyCustomColor);
    });
</script>

</body>
</html>