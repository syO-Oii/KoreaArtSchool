<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>Forms / Editors - NiceAdmin Bootstrap Template</title>
    <meta content="" name="description">
    <meta content="" name="keywords">

    <!-- Favicons -->
    <link href="/assets/admin/img/favicon.png" rel="icon">
    <link href="/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

    <!-- Google Fonts -->
    <link href="https://fonts.gstatic.com" rel="preconnect">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

    <!-- Vendor CSS Files -->
    <link href="/vendor/admin/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="/vendor/admin/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="/vendor/admin/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="/vendor/admin/quill/quill.snow.css" rel="stylesheet">
    <link href="/vendor/admin/quill/quill.bubble.css" rel="stylesheet">
    <link href="/vendor/admin/remixicon/remixicon.css" rel="stylesheet">
    <link href="/vendor/admin/simple-datatables/style.css" rel="stylesheet">

    <!-- Template Main CSS File -->
    <link href="/assets/admin/css/style1.css" rel="stylesheet">
    `
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
            <img src="/assets/admin/img/logo.png" alt="">
            <span class="d-none d-lg-block">NiceAdmin</span>
        </a>
        <i class="bi bi-list toggle-sidebar-btn"></i>
    </div><!-- End Logo -->

    <div class="search-bar">
        <form class="search-form d-flex align-items-center" method="POST" action="#">
            <input type="text" name="query" placeholder="Search" title="Enter search keyword">
            <button type="submit" title="Search"><i class="bi bi-search"></i></button>
        </form>
    </div><!-- End Search Bar -->

    <nav class="header-nav ms-auto">
        <ul class="d-flex align-items-center">

            <li class="nav-item d-block d-lg-none">
                <a class="nav-link nav-icon search-bar-toggle " href="#">
                    <i class="bi bi-search"></i>
                </a>
            </li><!-- End Search Icon-->

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
                            <img src="/assets/admin/img/messages-1.jpg" alt="" class="rounded-circle">
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
                            <img src="/assets/admin/img/messages-2.jpg" alt="" class="rounded-circle">
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
                            <img src="/assets/admin/img/messages-3.jpg" alt="" class="rounded-circle">
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
                    <img src="/assets/admin/img/profile-img.jpg" alt="Profile" class="rounded-circle">
                    <span class="d-none d-md-block dropdown-toggle ps-2">K. Anderson</span>
                </a><!-- End Profile Iamge Icon -->

                <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
                    <li class="dropdown-header">
                        <h6>Kevin Anderson</h6>
                        <span>Web Designer</span>
                    </li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>

                    <li>
                        <a class="dropdown-item d-flex align-items-center" href="users-profile.html">
                            <i class="bi bi-person"></i>
                            <span>My Profile</span>
                        </a>
                    </li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>

                    <li>
                        <a class="dropdown-item d-flex align-items-center" href="users-profile.html">
                            <i class="bi bi-gear"></i>
                            <span>Account Settings</span>
                        </a>
                    </li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>

                    <li>
                        <a class="dropdown-item d-flex align-items-center" href="pages-faq.html">
                            <i class="bi bi-question-circle"></i>
                            <span>Need Help?</span>
                        </a>
                    </li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>

                    <li>
                        <a class="dropdown-item d-flex align-items-center" href="#">
                            <i class="bi bi-box-arrow-right"></i>
                            <span>Sign Out</span>
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
            <a class="nav-link collapsed" href="index.html">
                <i class="bi bi-grid"></i>
                <span>Dashboard</span>
            </a>
        </li><!-- End Dashboard Nav -->

        <li class="nav-item">
            <a class="nav-link collapsed" data-bs-target="#components-nav" data-bs-toggle="collapse" href="#">
                <i class="bi bi-menu-button-wide"></i><span>Components</span><i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="components-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                <li>
                    <a href="components-alerts.html">
                        <i class="bi bi-circle"></i><span>Alerts</span>
                    </a>
                </li>
                <li>
                    <a href="components-accordion.html">
                        <i class="bi bi-circle"></i><span>Accordion</span>
                    </a>
                </li>
                <li>
                    <a href="components-badges.html">
                        <i class="bi bi-circle"></i><span>Badges</span>
                    </a>
                </li>
                <li>
                    <a href="components-breadcrumbs.html">
                        <i class="bi bi-circle"></i><span>Breadcrumbs</span>
                    </a>
                </li>
                <li>
                    <a href="components-buttons.html">
                        <i class="bi bi-circle"></i><span>Buttons</span>
                    </a>
                </li>
                <li>
                    <a href="components-cards.html">
                        <i class="bi bi-circle"></i><span>Cards</span>
                    </a>
                </li>
                <li>
                    <a href="components-carousel.html">
                        <i class="bi bi-circle"></i><span>Carousel</span>
                    </a>
                </li>
                <li>
                    <a href="components-list-group.html">
                        <i class="bi bi-circle"></i><span>List group</span>
                    </a>
                </li>
                <li>
                    <a href="components-modal.html">
                        <i class="bi bi-circle"></i><span>Modal</span>
                    </a>
                </li>
                <li>
                    <a href="components-tabs.html">
                        <i class="bi bi-circle"></i><span>Tabs</span>
                    </a>
                </li>
                <li>
                    <a href="components-pagination.html">
                        <i class="bi bi-circle"></i><span>Pagination</span>
                    </a>
                </li>
                <li>
                    <a href="components-progress.html">
                        <i class="bi bi-circle"></i><span>Progress</span>
                    </a>
                </li>
                <li>
                    <a href="components-spinners.html">
                        <i class="bi bi-circle"></i><span>Spinners</span>
                    </a>
                </li>
                <li>
                    <a href="components-tooltips.html">
                        <i class="bi bi-circle"></i><span>Tooltips</span>
                    </a>
                </li>
            </ul>
        </li><!-- End Components Nav -->

        <li class="nav-item">
            <a class="nav-link " data-bs-target="#forms-nav" data-bs-toggle="collapse" href="#">
                <i class="bi bi-journal-text"></i><span>Forms</span><i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="forms-nav" class="nav-content collapse show" data-bs-parent="#sidebar-nav">
                <li>
                    <a href="forms-elements.html">
                        <i class="bi bi-circle"></i><span>Form Elements</span>
                    </a>
                </li>
                <li>
                    <a href="forms-layouts.html">
                        <i class="bi bi-circle"></i><span>Form Layouts</span>
                    </a>
                </li>
                <li>
                    <a href="forms-editors.html" class="active">
                        <i class="bi bi-circle"></i><span>Form Editors</span>
                    </a>
                </li>
                <li>
                    <a href="forms-validation.html">
                        <i class="bi bi-circle"></i><span>Form Validation</span>
                    </a>
                </li>
            </ul>
        </li><!-- End Forms Nav -->

        <li class="nav-item">
            <a class="nav-link collapsed" data-bs-target="#tables-nav" data-bs-toggle="collapse" href="#">
                <i class="bi bi-layout-text-window-reverse"></i><span>Tables</span><i class="bi bi-chevron-down ms-auto"></i>
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

        <li class="nav-heading">Pages</li>

        <li class="nav-item">
            <a class="nav-link collapsed" href="users-profile.html">
                <i class="bi bi-person"></i>
                <span>Profile</span>
            </a>
        </li><!-- End Profile Page Nav -->

        <li class="nav-item">
            <a class="nav-link collapsed" href="pages-faq.html">
                <i class="bi bi-question-circle"></i>
                <span>F.A.Q</span>
            </a>
        </li><!-- End F.A.Q Page Nav -->

        <li class="nav-item">
            <a class="nav-link collapsed" href="pages-contact.html">
                <i class="bi bi-envelope"></i>
                <span>Contact</span>
            </a>
        </li><!-- End Contact Page Nav -->

        <li class="nav-item">
            <a class="nav-link collapsed" href="pages-register.html">
                <i class="bi bi-card-list"></i>
                <span>Register</span>
            </a>
        </li><!-- End Register Page Nav -->

        <li class="nav-item">
            <a class="nav-link collapsed" href="pages-login.html">
                <i class="bi bi-box-arrow-in-right"></i>
                <span>Login</span>
            </a>
        </li><!-- End Login Page Nav -->

        <li class="nav-item">
            <a class="nav-link collapsed" href="pages-error-404.html">
                <i class="bi bi-dash-circle"></i>
                <span>Error 404</span>
            </a>
        </li><!-- End Error 404 Page Nav -->

        <li class="nav-item">
            <a class="nav-link collapsed" href="pages-blank.html">
                <i class="bi bi-file-earmark"></i>
                <span>Blank</span>
            </a>
        </li><!-- End Blank Page Nav -->

    </ul>

</aside><!-- End Sidebar-->



<main id="main" class="main">

    <section class="section">

        <!-- Evaluator List -->
        <div class="row">
            <style>
                /* CSS 코드 */
                .table-fixed thead {
                    width: 100%;
                }

                .table-fixed tbody {
                    height: 200px; /* 테이블 본문의 높이를 조절하고자 하는 높이로 지정 */
                    overflow-y: auto; /* 세로 스크롤을 활성화하여 테이블 본문 내용을 스크롤할 수 있게 함 */
                    width: 100%;
                }

                .table-fixed thead, .table-fixed tbody, .table-fixed tr, .table-fixed td, .table-fixed th {
                    display: block;
                }

                .table-fixed tbody td, .table-fixed thead th {
                    float: left; /* 셀을 왼쪽으로 띄움 */
                }

                .table-fixed thead th:first-child, .table-fixed tbody td:first-child {
                    border-left: none; /* 첫 번째 열의 왼쪽 테두리를 없앰 */
                }


            </style>
            <!-- Notice List -->
            <div class="col-lg-6">
                <div class="card">
                    <div class="card-body">
                        <form action="/delete" method="post">
                            <div class="d-flex align-items-center justify-content-between">
                                <h5 class="card-title">Notice List</h5>
                                <div class="col-mb-2">
                                    <button class="btn btn-dark" type="submit">삭제</button>
                                </div>
                            </div>
                            <div class="table-responsive">
                                <table class="table table-hover">
                                    <thead>
                                    <tr>
                                        <th scope="col">
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" id="selectAll">
                                                <label class="form-check-label" for="selectAll"></label>
                                            </div>
                                        </th>
                                        <th scope="col">No</th>
                                        <th scope="col">제목</th>
                                        <th scope="col">내용</th>
                                        <th scope="col">작성일자</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${post_list}" var="dto">
                                        <tr>
                                            <td>
                                                <div class="form-check">
                                                    <input class="form-check-input row-check" type="checkbox" id="gridCheck${dto.postNumber}">
                                                    <label class="form-check-label" for="gridCheck${dto.postNumber}"></label>
                                                </div>
                                            </td>
                                            <td>${dto.postNumber}</td>
                                            <td><a href="/getPost?postNumber=${dto.postNumber}" class="post-link">${dto.postTitle}</a></td>
                                            <td>${dto.writer}</td>
                                            <td>${dto.writeDate}</td>
                                            <td style="display: none;">${dto.postContent}</td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </form>
                    </div>
                </div>
            </div>


            <!-- New Notice -->
            <div class="col-lg-6">
                <div class="card">
                    <div class="card-body">
                        <form id="noticeForm" action="/submit" method="post" enctype="multipart/form-data">
                            <input type="hidden" id="action" name="action" value="post">
                            <input type="hidden" id="postNumber" name="postNumber" value="${dto.postNumber}">
                            <div class="d-flex align-items-center justify-content-between">
                                <h5 class="card-title">New Notice</h5>
                                <div class="form-group">
                                    <button class="btn btn-dark" type="submit" id="saveChanges">변경사항 저장</button>
                                    <button class="btn btn-primary" type="submit" id="createNew">등록</button>
                                </div>
                            </div>
                            <!-- 제목 -->
                            <div class="form-group col-mb-2">
                                <label for="postTitle" class="col-sm-3 col-form-label">제목</label>
                                <input type="text" class="form-control" id="postTitle" name="postTitle" required minlength="2" maxlength="15">
                            </div>
                            <!-- 내용 -->
                            <div class="form-group col-mb-2">
                                <label for="postContent" class="col-sm-3 col-form-label">내용</label>
                                <textarea class="form-control" id="postContent" name="postContent"></textarea>
                            </div>
                            <div class="form-group">
                                <input type="hidden" id="writer" name="writer" value="관리자">
                                <input type="hidden" name="bbsId" value="1">
                                <label for="fileNm">첨부 파일</label>
                                <input type="file" id="fileNm" name="fileNm">
                                <input type="hidden" name="filePath">
                                <input type="hidden" name="delYn" value="N">
                                <input type="hidden" name="adminEml" value="admin@example.com">
                            </div>
                        </form>
                    </div>
                </div>
            </div>

        </div><!-- End .row -->

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

<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

<!-- Vendor JS Files -->
<script src="/vendor/admin/apexcharts/apexcharts.min.js"></script>
<script src="/vendor/admin/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="/vendor/admin/chart.js/chart.umd.js"></script>
<script src="/vendor/admin/echarts/echarts.min.js"></script>
<script src="/vendor/admin/quill/quill.js"></script>
<script src="/vendor/admin/simple-datatables/simple-datatables.js"></script>
<script src="/vendor/admin/tinymce/tinymce.min.js"></script>
<script src="/vendor/admin/php-email-form/validate.js"></script>

<!-- Template Main JS File -->
<script src="/assets/admin/js/main.js"></script>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
    $(document).ready(function() {
        // 제목을 클릭하면 해당 게시물 정보를 불러오는 함수
        $("body").on("click", "a.post-link", function(event) {
            event.preventDefault(); // 기본 동작 방지

            // 클릭된 제목의 href 속성을 가져와서 AJAX 요청을 보냄
            var postLink = $(this).attr("href");
            $.ajax({
                url: postLink, // 게시물 정보를 가져올 URL
                type: "GET", // GET 요청
                success: function(response) {
                    // 요청이 성공하면 받은 데이터를 처리
                    $("#postNumber").val(response.postNumber); // 게시물 번호 설정
                    $("#postTitle").val(response.postTitle); // 제목 입력란에 제목 설정
                    $("#postContent").val(response.postContent); // 내용 설정
                    // 액션을 수정으로 변경
                    $("#action").val("edit");
                },
                error: function(xhr, status, error) {
                    // 요청이 실패하면 에러 메시지 출력
                    console.error("Error:", error);
                }
            });
        });

        // 저장 버튼 클릭 시 폼의 action을 수정으로 설정
        $("#saveChanges").click(function() {
            $("#action").val("edit");
        });

        // 등록 버튼 클릭 시 폼의 action을 등록으로 설정
        $("#createNew").click(function() {
            $("#action").val("post");
        });
    });
</script>


<%--단일 게시물의 정보를 비동기적으로 로드--%>
<script>
    document.getElementById('selectAll').addEventListener('change', function () {
        const checkboxes = document.querySelectorAll('.row-check');
        checkboxes.forEach(checkbox => checkbox.checked = this.checked);
    });


    let selectedEvaluators = [];

    function fillForm(checkbox) {
        if (checkbox.checked) {
            // 체크박스를 선택하면 배열에 추가
            selectedEvaluators.push(checkbox);
        } else {
            // 체크박스를 해제하면 배열에서 제거
            selectedEvaluators = selectedEvaluators.filter(item => item !== checkbox);
        }

        // 배열의 마지막 요소로 폼을 채우기
        if (selectedEvaluators.length > 0) {
            const lastChecked = selectedEvaluators[selectedEvaluators.length - 1];
            document.getElementById('evl_no').value = lastChecked.dataset.evlNo;
            document.getElementById('evl_nm').value = lastChecked.dataset.evlNm;
            document.getElementById('dept_cd').value = lastChecked.dataset.deptCd;
            document.getElementById('evl_ogdp').value = lastChecked.dataset.evlOgdp;
            document.getElementById('evl_eml').value = lastChecked.dataset.evlEml;
            document.getElementById('is_selected').value = lastChecked.dataset.isSelected;
            document.getElementById('evl_tel').value = lastChecked.dataset.evlTel;
            document.getElementById('addr').value = lastChecked.dataset.addr;
            document.getElementById('addr_detail').value = lastChecked.dataset.addrDetail;
            document.getElementById('bank_nm').value = lastChecked.dataset.bankNm;
            document.getElementById('act_no').value = lastChecked.dataset.actNo;
            document.getElementById('slry').value = lastChecked.dataset.slry;
        } else {
            // 배열이 비어 있으면 폼을 초기화
            document.getElementById('evl_no').value = '';
            document.getElementById('evl_nm').value = '';
            document.getElementById('dept_cd').value = '';
            document.getElementById('evl_ogdp').value = '';
            document.getElementById('evl_eml').value = '';
            document.getElementById('is_selected').value = '';
            document.getElementById('evl_tel').value = '';
            document.getElementById('addr').value = '';
            document.getElementById('addr_detail').value = '';
            document.getElementById('bank_nm').value = '';
            document.getElementById('act_no').value = '';
            document.getElementById('slry').value = '';
        }
    }
</script>

</body>

</html>