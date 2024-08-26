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
            <main id="main" class="main">
                <div class="card">
                    <div class="card-body" style="margin-top: 30px;">
                        <main class="main">

                            <form action="/view" method="get">
                            <div class="table-responsive">
                                <table class="table table-hover">
                                    <thead>
                                    <tr>
                                        <th scope="col">No</th>
                                        <th scope="col" style="width: 55%;">제목</th>
                                        <th scope="col">작성자</th>
                                        <th scope="col">작성일자</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${post_list}" var="dto">
                                        <tr>
                                            <td>${dto.postNumber}</td>
                                            <td><a href="view?postNumber=${dto.postNumber}">${dto.postTitle}</a></td>
                                            <td>${dto.writer}</td>
                                            <td>${dto.writeDate}</td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </form>
                    </div>
                </div>
            </main>
        </div>
    </div>
</section>

<!-- 페이징 코드 -->
<style>
    /* '다음페이지', '이전페이지' 버튼 */
    .page-item {
        background-color: #22201e;
        border-color: white;
        border-radius: 7px;
        color:#22201e
    }
    .page-item:hover {
        background-color: #f5a425;
        color: white;
        border-color: #f5a425;

        color:#22201e
    }
    .page-link .page-item-active {
        color: #22201e;
        background-color: white;

        border-color: #22201e;
        color:#22201e
    }
    .page-link:hover {
        color: white;
        background-color:#f5a425;
        border-color: #f5a425;

        color:#22201e
    }
    .page-link {
        color: #22201e;
    }
</style>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-12 mt-5">
            <nav aria-label="Pagination">
                <ul class="pagination justify-content-center">
                    <c:if test="${current_page > 1}">
                        <li class="page-item">
                            <a href="/list?page=${current_page - 1}" class="page-link">Prev</a>
                        </li>
                    </c:if>
                    <c:forEach var="pageNum" items="${page_numbers}">
                        <li class="page-item ${pageNum == current_page ? 'page-item-active' : ''}">
                            <a href="/list?page=${pageNum}" class="page-link">${pageNum}</a>
                        </li>
                    </c:forEach>
                    <c:if test="${current_page < total_pages}">
                        <li class="page-item">
                            <a href="/list?page=${current_page + 1}" class="page-link">Next</a>
                        </li>
                    </c:if>
                </ul>
            </nav>
        </div>
    </div>
</div>

</main><!-- End #main -->

<!-- End General Form Elements -->
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

<script src="https://cdnjs.cloudflare.com/ajax/libs/cleave.js/1.6.0/cleave.min.js"></script>

<script>
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

    function next(val, len, nextId){
        if(val.length == len){
            document.getElementById(nextId).focus();
        }
    }

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