<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>Forms / Layouts - NiceAdmin Bootstrap Template</title>
    <meta content="" name="description">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <link href="/assets/img/favicon.png" rel="icon">
    <link href="/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.gstatic.com" rel="preconnect">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i"
          rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="/assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="/assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="/assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="/assets/vendor/quill/quill.snow.css" rel="stylesheet">
    <link href="/assets/vendor/quill/quill.bubble.css" rel="stylesheet">
    <link href="/assets/vendor/remixicon/remixicon.css" rel="stylesheet">
    <link href="/assets/vendor/simple-datatables/style1.css" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="/assets/css/style1.css" rel="stylesheet">

    <!-- =======================================================
    * Template Name: NiceAdmin
    * Template URL: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/
    * Updated: Apr 20 2024 with Bootstrap v5.3.3
    * Author: BootstrapMade.com
    * License: https://bootstrapmade.com/license/
    ======================================================== -->

</head>

<body>

<!-- ======= Header ======= -->
<header id="header" class="header fixed-top d-flex align-items-center">

    <div class="d-flex align-items-center justify-content-between">
        <a href="index.html" class="logo d-flex align-items-center">
            <img src="/assets/img/logo.png" alt="">
            <span class="d-none d-lg-block">NiceAdmin</span>
        </a>
        <i class="bi bi-list toggle-sidebar-btn"></i>
    </div><!-- End Logo -->

    <nav class="header-nav ms-auto">
        <ul class="d-flex align-items-center">

            <li class="nav-item dropdown">

                <a class="nav-link nav-icon" href="#" data-bs-toggle="dropdown">
                    <i class="bi bi-bell"></i>
                    <span class="badge bg-primary badge-number">4</span>
                </a><!-- End Notification Icon -->

                <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow notifications">
                    <li class="dropdown-header">
                        You have 4 new notifications
                        <a href="#"><span class="badge rounded-pill bg-primary p-2 ms-2">View all</span></a>
                    </li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>

                    <li class="notification-item">
                        <i class="bi bi-exclamation-circle text-warning"></i>
                        <div>
                            <h4>Lorem Ipsum</h4>
                            <p>Quae dolorem earum veritatis oditseno</p>
                            <p>30 min. ago</p>
                        </div>
                    </li>

                    <li>
                        <hr class="dropdown-divider">
                    </li>

                    <li class="notification-item">
                        <i class="bi bi-x-circle text-danger"></i>
                        <div>
                            <h4>Atque rerum nesciunt</h4>
                            <p>Quae dolorem earum veritatis oditseno</p>
                            <p>1 hr. ago</p>
                        </div>
                    </li>

                    <li>
                        <hr class="dropdown-divider">
                    </li>

                    <li class="notification-item">
                        <i class="bi bi-check-circle text-success"></i>
                        <div>
                            <h4>Sit rerum fuga</h4>
                            <p>Quae dolorem earum veritatis oditseno</p>
                            <p>2 hrs. ago</p>
                        </div>
                    </li>

                    <li>
                        <hr class="dropdown-divider">
                    </li>

                    <li class="notification-item">
                        <i class="bi bi-info-circle text-primary"></i>
                        <div>
                            <h4>Dicta reprehenderit</h4>
                            <p>Quae dolorem earum veritatis oditseno</p>
                            <p>4 hrs. ago</p>
                        </div>
                    </li>

                    <li>
                        <hr class="dropdown-divider">
                    </li>
                    <li class="dropdown-footer">
                        <a href="#">Show all notifications</a>
                    </li>

                </ul><!-- End Notification Dropdown Items -->

            </li><!-- End Notification Nav -->

            <li class="nav-item dropdown">

                <a class="nav-link nav-icon" href="#" data-bs-toggle="dropdown">
                    <i class="bi bi-chat-left-text"></i>
                    <span class="badge bg-success badge-number">3</span>
                </a><!-- End Messages Icon -->

                <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow messages">
                    <li class="dropdown-header">
                        You have 3 new messages
                        <a href="#"><span class="badge rounded-pill bg-primary p-2 ms-2">View all</span></a>
                    </li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>

                    <li class="message-item">
                        <a href="#">
                            <img src="/assets/img/messages-1.jpg" alt="" class="rounded-circle">
                            <div>
                                <h4>Maria Hudson</h4>
                                <p>Velit asperiores et ducimus soluta repudiandae labore officia est ut...</p>
                                <p>4 hrs. ago</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>

                    <li class="message-item">
                        <a href="#">
                            <img src="/assets/img/messages-2.jpg" alt="" class="rounded-circle">
                            <div>
                                <h4>Anna Nelson</h4>
                                <p>Velit asperiores et ducimus soluta repudiandae labore officia est ut...</p>
                                <p>6 hrs. ago</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>

                    <li class="message-item">
                        <a href="#">
                            <img src="/assets/img/messages-3.jpg" alt="" class="rounded-circle">
                            <div>
                                <h4>David Muldon</h4>
                                <p>Velit asperiores et ducimus soluta repudiandae labore officia est ut...</p>
                                <p>8 hrs. ago</p>
                            </div>
                        </a>
                    </li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>

                    <li class="dropdown-footer">
                        <a href="#">Show all messages</a>
                    </li>

                </ul><!-- End Messages Dropdown Items -->

            </li><!-- End Messages Nav -->

            <li class="nav-item dropdown pe-3">

                <a class="nav-link nav-profile d-flex align-items-center pe-0" href="#" data-bs-toggle="dropdown">
                    <img src="/assets/img/profile-img.jpg" alt="Profile" class="rounded-circle">
                    <span class="d-none d-md-block dropdown-toggle ps-2">K. Anderson</span>
                </a><!-- End Profile Iamge Icon -->

                <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
                    <li class="dropdown-header">
                        <h6>Kevin Anderson</h6>
                    </li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>

                    <li>
                        <a class="dropdown-item d-flex align-items-center" href="users-profile.html">
                            <i class="bi bi-gear"></i>
                            <span>설정</span>
                        </a>
                    </li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>

                    <li>
                        <a class="dropdown-item d-flex align-items-center" href="#">
                            <i class="bi bi-box-arrow-right"></i>
                            <span>로그아웃</span>
                        </a>
                    </li>

                </ul><!-- End Profile Dropdown Items -->
            </li><!-- End Profile Nav -->

        </ul>
    </nav><!-- End Icons Navigation -->

</header><!-- End Header -->

<!-- ======= Sidebar ======= -->
<aside id="sidebar" class="sidebar">

    <ul class="sidebar-nav" id="sidebar-nav">

        <li class="nav-item">
            <a class="nav-link collapsed" href="/admin/evaluator_info">
                <i class="bi bi-grid"></i>
                <span>평가위원 정보관리</span>
            </a>
        </li><!-- End Dashboard Nav -->

        <li class="nav-item">
            <a class="nav-link " href="/admin/evaluator_selection">
                <i class="bi bi-menu-button-wide"></i>
                <span>평가위원 선정</span>
            </a>
        </li><!-- End Components Nav -->

        <li class="nav-item">
            <a class="nav-link collapsed" href="#">
                <i class="bi bi-journal-text"></i>
                <span>Forms</span>
            </a>
        </li><!-- End Forms Nav -->

        <li class="nav-item">
            <a class="nav-link collapsed" data-bs-target="#tables-nav" data-bs-toggle="collapse" href="#">
                <i class="bi bi-layout-text-window-reverse"></i><span>Tables</span><i
                    class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="tables-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                <li>
                    <a href="tables-general.html">
                        <i class="bi bi-circle"></i><span>General Tables</span>
                    </a>
                </li>
                <li>
                    <a href="tables-data.html">
                        <i class="bi bi-circle"></i><span>Data Tables</span>
                    </a>
                </li>
            </ul>
        </li><!-- End Tables Nav -->

        <li class="nav-item">
            <a class="nav-link collapsed" data-bs-target="#charts-nav" data-bs-toggle="collapse" href="#">
                <i class="bi bi-bar-chart"></i><span>Charts</span><i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="charts-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                <li>
                    <a href="charts-chartjs.html">
                        <i class="bi bi-circle"></i><span>Chart.js</span>
                    </a>
                </li>
                <li>
                    <a href="charts-apexcharts.html">
                        <i class="bi bi-circle"></i><span>ApexCharts</span>
                    </a>
                </li>
                <li>
                    <a href="charts-echarts.html">
                        <i class="bi bi-circle"></i><span>ECharts</span>
                    </a>
                </li>
            </ul>
        </li><!-- End Charts Nav -->

        <li class="nav-item">
            <a class="nav-link collapsed" data-bs-target="#icons-nav" data-bs-toggle="collapse" href="#">
                <i class="bi bi-gem"></i><span>Icons</span><i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="icons-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                <li>
                    <a href="icons-bootstrap.html">
                        <i class="bi bi-circle"></i><span>Bootstrap Icons</span>
                    </a>
                </li>
                <li>
                    <a href="icons-remix.html">
                        <i class="bi bi-circle"></i><span>Remix Icons</span>
                    </a>
                </li>
                <li>
                    <a href="icons-boxicons.html">
                        <i class="bi bi-circle"></i><span>Boxicons</span>
                    </a>
                </li>
            </ul>
        </li><!-- End Icons Nav -->

    </ul>

</aside><!-- End Sidebar-->

<main id="main" class="main">

    <section class="section">
        <div class="row">
            <div class="col-lg-12">

                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title"></h5>

                        <!-- General Form Elements -->
                        <form action="/admin/selectRecruitment" method="get">
                            <div class="row mb-3">
                                <label class="col-sm-1 col-form-label">입학년도</label>
                                <div class="col-sm-2">
                                    <select name="mtcltn_yd_cd" class="form-select" aria-label="Default select example">
                                        <option selected>선택해주세요</option>
                                        <option value="10">2021년도</option>
                                        <option value="20">2022년도</option>
                                        <option value="30">2023년도</option>
                                        <option value="40">2024년도</option>
                                    </select>
                                </div>
                                <label class="col-sm-1 col-form-label">학과 선택</label>
                                <div class="col-sm-2">
                                    <select name="department" class="form-select" aria-label="Default select example">
                                        <option selected>선택해주세요</option>
                                        <option value="10">시각디자인</option>
                                        <option value="20">무대영화미술</option>
                                        <option value="30">연기</option>
                                        <option value="40">모델</option>
                                        <option value="50">보컬</option>
                                        <option value="60">싱어송라이터</option>
                                    </select>
                                </div>
                                <label class="col-sm-1 col-form-label">전형 선택</label>
                                <div class="col-sm-2">
                                    <select name="rcrt_cd" class="form-select" aria-label="Default select example">
                                        <option selected>선택해주세요</option>
                                        <option value="10">일반전형</option>
                                        <option value="20">특기생전형</option>
                                    </select>
                                </div>
                                <div class="col-sm-2">
                                    <button class="btn btn-primary" type="submit">조회</button>
                                </div>
                            </div>

                        </form><!-- End General Form Elements -->
                    </div>
                </div>
            </div>

            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Recruitment Department Information</h5>

                        <table class="table table-hover">
                            <thead>
                            <tr>
                                <th scope="col">입학년도</th>
                                <th scope="col">기수</th>
                                <th scope="col">학과</th>
                                <th scope="col">전형</th>
                                <th scope="col">모집시작일</th>
                                <th scope="col">모집종료일</th>
                                <th scope="col">평가단계</th>
                                <th scope="col">진행상태</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="rcrt" items="${rcrtInformation}">
                                <tr>
                                    <td>
                                        <c:if test="${rcrt.mtcltn_yd_cd == 10}">2021년도</c:if>
                                        <c:if test="${rcrt.mtcltn_yd_cd == 20}">2022년도</c:if>
                                        <c:if test="${rcrt.mtcltn_yd_cd == 30}">2023년도</c:if>
                                        <c:if test="${rcrt.mtcltn_yd_cd == 40}">2024년도</c:if>
                                    </td>
                                    <td>
                                        <c:if test="${rcrt.year_cd == 10}">1기</c:if>
                                        <c:if test="${rcrt.year_cd == 20}">2기</c:if>
                                        <c:if test="${rcrt.year_cd == 30}">3기</c:if>
                                        <c:if test="${rcrt.year_cd == 40}">4기</c:if>
                                    </td>
                                    <td>
                                        <c:if test="${rcrt.dept_cd == 10}">시각디자인</c:if>
                                        <c:if test="${rcrt.dept_cd == 20}">무대영화미술</c:if>
                                        <c:if test="${rcrt.dept_cd == 30}">연기</c:if>
                                        <c:if test="${rcrt.dept_cd == 40}">모델</c:if>
                                        <c:if test="${rcrt.dept_cd == 50}">보컬</c:if>
                                        <c:if test="${rcrt.dept_cd == 60}">싱어송라이터</c:if>
                                    </td>
                                    <td>
                                        <c:if test="${rcrt.rcrt_cd == 10}">일반전형</c:if>
                                        <c:if test="${rcrt.rcrt_cd == 20}">특기생전형</c:if>
                                    </td>
                                    <td>${rcrt.bgng_ymd}</td>
                                    <td>${rcrt.end_ymd}</td>
                                    <td>
                                        <a href="/admin/selectStgEvaluator?rcrt_no=${rcrt.rcrt_no}&evl_stg_no=${rcrt.evl_stg_no}" class="selectStgEvaluator">
                                                ${rcrt.evl_stg_nm}
                                        </a>
                                    </td>
                                    <td>
                                        <c:if test="${rcrt.rcrt_cd == 10}">진행중</c:if>
                                        <c:if test="${rcrt.rcrt_cd == 20}">완료</c:if>
                                    </td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <form id="evaluatorForm">
                            <div class="d-flex align-items-center justify-content-between">
                                <h5 class="card-title">Evaluator Selection</h5>
                                <div class="d-flex gap-2">
                                <div class="d-flex align-items-end gap-2">
                                <label class="col-sm-4 col-form-label">입학년도</label>
<%--                                <div class="col-sm-2">--%>
                                    <select name="mtcltn_yd_cd" class="form-select col-sm-2" aria-label="Default select example">
                                        <option selected>선택해주세요</option>
                                        <option value="10">2021년도</option>
                                        <option value="20">2022년도</option>
                                        <option value="30">2023년도</option>
                                        <option value="40">2024년도</option>
                                    </select>
<%--                                </div>--%>
                                </div>
                                <div class="col-mb-2">
                                    <button class="btn btn-primary" type="button" onclick="Select()">조회</button>
                                    <button class="btn btn-primary" type="button" onclick="Update()">저장</button>
                                </div>
                                </div>
                            </div>

                            <table class="table table-hover">
                                <thead>
                                <tr>
                                    <th scope="col">
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="selectAll">
                                            <label class="form-check-label" for="selectAll">
                                            </label>
                                        </div>
                                    </th>
                                    <th scope="col">위원번호</th>
                                    <th scope="col">이름</th>
                                    <th scope="col">성별</th>
                                    <th scope="col">학과</th>
                                    <th scope="col">이메일</th>
                                    <th scope="col">휴대폰번호</th>
                                </tr>
                                </thead>
                                <tbody id="evaluatorTable">
                                <c:forEach var="evl" items="${stgEvaluators}">
                                    <tr>
                                        <td>
                                            <div class="form-check">
                                                <input class="form-check-input row-check" type="checkbox">
                                                <label class="form-check-label" for="gridCheck${evl.rcrt_no}">
                                                </label>
                                            </div>
                                        </td>
                                        <td>${evl.evl_no}</td>
                                        <td>${evl.evl_nm}</td>
                                        <td>
                                            <c:if test="${evl.gndr_cd == 10}">남</c:if>
                                            <c:if test="${evl.gndr_cd == 20}">여</c:if>
                                        </td>
                                        <td>
                                            <c:if test="${evl.dept_cd == 10}">시각디자인</c:if>
                                            <c:if test="${evl.dept_cd == 20}">무대영화미술</c:if>
                                            <c:if test="${evl.dept_cd == 30}">연기</c:if>
                                            <c:if test="${evl.dept_cd == 40}">모델</c:if>
                                            <c:if test="${evl.dept_cd == 50}">보컬</c:if>
                                            <c:if test="${evl.dept_cd == 60}">싱어송라이터</c:if>
                                        </td>
                                        <td>${evl.evl_eml}</td>
                                        <td>${evl.evl_tel}</td>
                                    </tr>
                                </c:forEach>
                                </tbody>
                            </table>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>

</main><!-- End #main -->

<!-- ======= Footer ======= -->
<footer id="footer" class="footer">
    <div class="copyright">
        &copy; Copyright <strong><span>NiceAdmin</span></strong>. All Rights Reserved
    </div>
    <div class="credits">
        <!-- All the links in the footer should remain intact. -->
        <!-- You can delete the links only if you purchased the pro version. -->
        <!-- Licensing information: https://bootstrapmade.com/license/ -->
        <!-- Purchase the pro version with working PHP/AJAX contact form: https://bootstrapmade.com/nice-admin-bootstrap-admin-html-template/ -->
        Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
    </div>
</footer><!-- End Footer -->

<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i
        class="bi bi-arrow-up-short"></i></a>

<!-- Vendor JS Files -->
<script src="/assets/vendor/apexcharts/apexcharts.min.js"></script>
<script src="/assets/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="/assets/vendor/chart.js/chart.umd.js"></script>
<script src="/assets/vendor/echarts/echarts.min.js"></script>
<script src="/assets/vendor/quill/quill.js"></script>
<script src="/assets/vendor/simple-datatables/simple-datatables.js"></script>
<script src="/assets/vendor/tinymce/tinymce.min.js"></script>
<script src="/assets/vendor/php-email-form/validate.js"></script>

<!-- Template Main JS File -->
<script src="/assets/js/main.js"></script>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

<script>

    $(document).ready(function() {
        // .selectStgEvaluator 클래스를 가진 요소가 클릭되면 실행됩니다.
        $("body").on("click", "a.selectStgEvaluator", function(event) {
            // 기본 동작을 중지시킵니다.
            event.preventDefault();

            var selectStgEvaluator = $(this).attr("href");

            // AJAX 요청을 보냅니다.
            $.ajax({
                type: 'GET',
                url: selectStgEvaluator,
                success: function(response) {
                    // 성공적으로 응답을 받았을 때 실행됩니다.
                    displayEvaluators(response);
                },
                error: function(xhr, status, error) {
                    // 오류가 발생했을 때 실행됩니다.
                    console.error(xhr.responseText);
                }
            });
        });
    });

    //서버로부터 받은 JSON 데이터를 처리하여 화면에 표시하는 함수
    function displayEvaluators(data) {
        var tableBody = $("#evaluatorTable");
        tableBody.empty(); // 테이블 내용 비우기

        var deptMap = {
            "10": "시각디자인",
            "20": "무대영화미술",
            "30": "연기",
            "40": "모델",
            "50": "보컬",
            "60": "싱어송라이터"
        };

        // 각 평가자 정보를 테이블에 추가
        data.forEach(function(evl) {
            var newRow = $("<tr>");
            newRow.append("<td><input class='form-check-input row-check' type='checkbox'></td>");
            newRow.append("<td>" + evl.evl_no + "</td>");
            newRow.append("<td>" + evl.evl_nm + "</td>");
            newRow.append("<td>" + (evl.gndr_cd == 10 ? '남' : '여') + "</td>");
            var deptName = deptMap[evl.dept_cd] || evl.dept_cd;
            newRow.append("<td>" + deptName + "</td>");
            newRow.append("<td>" + evl.evl_eml + "</td>");
            newRow.append("<td>" + evl.evl_tel + "</td>");

            tableBody.append(newRow);
        });
    }
</script>
</body>

</html>