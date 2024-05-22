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
                        <li class="scroll-to-section"><a href="apply_step_one.jsp" >원서접수</a></li>
                        <li><a href="meetings.jsp" class="active">공지사항</a></li>
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

                        <!-- General Form Elements -->
<%--                        <form action="/apply" method="post">--%>
                            <main id="main" class="main">
                                <div class="card">
                                    <div class="card-body">
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
                                                    <tbody id="table-body">

                                                    </tbody>
                                                    <script>

                                                        // 페이지가 로드될 때 실행되는 함수
                                                        window.onload = function() {
                                                            // 페이지 로드 후 첫 페이지 데이터를 가져와서 테이블에 표시
                                                            loadData(1);
                                                        };

                                                        // 페이징 처리 함수
                                                        function loadData(page) {
                                                            // 페이지 번호에 해당하는 데이터를 서버로부터 요청하고 받아옴 (예: Ajax 요청)

                                                            // 받아온 데이터를 테이블에 표시 (예시: 데이터는 JSON 형태라 가정)
                                                            var tableBody = document.getElementById("table-body");
                                                            tableBody.innerHTML = ""; // 테이블 내용 비우기

                                                            // 받아온 데이터를 테이블에 추가
                                                            for (var i = (page - 1) * 10; i < Math.min(page * 10, postData.length); i++) {
                                                                var post = postData[i];
                                                                var row = "<tr>" +
                                                                    "<td>" + post.postNumber + "</td>" +
                                                                    "<td><a href='view?postNumber=" + post.postNumber + "'>" + post.postTitle + "</a></td>" +
                                                                    "<td>" + post.writer + "</td>" +
                                                                    "<td>" + post.writeDate + "</td>" +
                                                                    "</tr>";
                                                                tableBody.innerHTML += row;
                                                            }

                                                            // 페이징 버튼 업데이트
                                                            updatePagination(page);
                                                        }

                                                        // 페이징 버튼 업데이트 함수
                                                        function updatePagination(currentPage) {
                                                            var paginationDiv = document.getElementById("pagination");
                                                            paginationDiv.innerHTML = ""; // 기존 버튼 제거

                                                            // 총 페이지 수 계산 (예: postData는 전체 데이터 배열)
                                                            var totalPages = Math.ceil(postData.length / 10); // 한 페이지에 10개씩 보여줌

                                                            // 이전 페이지 버튼 추가
                                                            if (currentPage > 1) {
                                                                var prevButton = "<button onclick='loadData(" + (currentPage - 1) + ")'>이전</button>";
                                                                paginationDiv.innerHTML += prevButton;
                                                            }

                                                            // 페이지 번호 버튼 추가
                                                            for (var i = 1; i <= totalPages; i++) {
                                                                var pageButton = "<button onclick='loadData(" + i + ")'>" + i + "</button>";
                                                                if (i === currentPage) {
                                                                    pageButton = "<button class='active'>" + i + "</button>";
                                                                }
                                                                paginationDiv.innerHTML += pageButton;
                                                            }

                                                            // 다음 페이지 버튼 추가
                                                            if (currentPage < totalPages) {
                                                                var nextButton = "<button onclick='loadData(" + (currentPage + 1) + ")'>다음</button>";
                                                                paginationDiv.innerHTML += nextButton;
                                                            }
                                                        }
                                                    </script>
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
</section>
<!-- 페이징 코드 -->
<style>
    /* '다음페이지', '이전페이지' 버튼 */
    .page-item {
        background-color: #22201e; /* 다음페이지 버튼의 배경색 */
        border-color: white;
        border-radius: 7px;
        color:#22201e
    }
    .page-item:hover {
        background-color: #f5a425; /* 원하는 hover 시 배경색 */
        color: white; /* 원하는 hover 시 텍스트색 */
        border-color: #f5a425; /* 이전페이지 버튼의 테두리색 */

        color:#22201e
    }
    .page-link .page-item-active {
        color: #22201e;
        background-color: white; /* 이전페이지 버튼의 배경색 */

        border-color: #22201e; /* 이전페이지 버튼의 테두리색 */
        color:#22201e
    }
    .page-link:hover {
        color: white;
        background-color:#f5a425; /* 이전페이지 버튼의 배경색 */
        border-color: #f5a425; /* 이전페이지 버튼의 테두리색 */

        color:#22201e
    }
    .page-link {
        color: #22201e; /* 버튼의 기본 텍스트색 */
    }
</style>
<div class="container">
    <div class="row justify-content-center">
        <div class="col-12 mt-5">
            <nav aria-label="Pagination">
                <ul class="pagination justify-content-center">
                    <li class="page-item">
                        <a href="#" class="page-link">Prev</a>
                    </li>
                    <li class="page-item-active">
                        <a href="#" class="page-link">1</a>
                    </li>
                    <li class="page-item">
                        <a href="#" class="page-link">2</a>
                    </li>
                    <li class="page-item">
                        <a href="#" class="page-link">3</a>
                    </li>
                    <li class="page-item">
                        <a href="#" class="page-link">Next</a>
                    </li>
                </ul>
            </nav>
        </div>
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
    <!-- <p>© CloudStudying | <a href="#">Privacy</a> | <a href="#">Terms</a></p> -->
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

        // Apply color on page load
        applyCustomColor();

        // Apply color on input change
        birthdayInput.addEventListener('input', applyCustomColor);
    });
</script>

</body>
</html>