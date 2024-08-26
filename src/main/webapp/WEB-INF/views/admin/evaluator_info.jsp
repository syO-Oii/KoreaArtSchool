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
            <a class="nav-link " href="/admin/evaluator_info">
                <i class="bi bi-grid"></i>
                <span>평가위원 정보관리</span>
            </a>
        </li><!-- End Dashboard Nav -->

        <li class="nav-item">
            <a class="nav-link collapsed" href="/admin/evaluator_selection">
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
                        <form action="/admin/selectEvaluator" method="get">
                            <div class="row mb-3">
                                <label class="col-sm-1 col-form-label">학과 선택</label>
                                <div class="col-sm-2">
                                    <select name="department" class="form-select" aria-label="Default select example">
                                        <option selected>선택해주세요</option>
                                        <option value="0">(전체)</option>
                                        <option value="10">시각디자인</option>
                                        <option value="20">무대영화미술</option>
                                        <option value="30">연기</option>
                                        <option value="40">모델</option>
                                        <option value="50">보컬</option>
                                        <option value="60">싱어송라이터</option>
                                    </select>
                                </div>
                                <label class="col-sm-1 col-form-label">선정 여부</label>
                                <div class="col-sm-2">
                                    <select name="is_selected" class="form-select" aria-label="Default select example">
                                        <option selected>선택해주세요</option>
                                        <option value="0">(전체)</option>
                                        <option value="Y">Y</option>
                                        <option value="N">N</option>
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

            <div class="col-lg-6">
                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title">Evaluator List</h5>

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
                                <th scope="col">학과</th>
                                <th scope="col">선정 여부</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="evaluators" items="${evaluators}">
                                <tr>
                                    <td>
                                        <div class="form-check">
                                            <input class="form-check-input row-check" type="checkbox"
                                                   id="gridCheck${evaluators.evl_no}"
                                                   data-evl-no="${evaluators.evl_no}"
                                                   data-gndr-cd="${evaluators.gndr_cd}"
                                                   data-evl-brdt="${evaluators.evl_brdt}"
                                                   data-evl-nm="${evaluators.evl_nm}"
                                                   data-dept-cd="${evaluators.dept_cd}"
                                                   data-evl-ogdp="${evaluators.evl_ogdp}"
                                                   data-evl-eml="${evaluators.evl_eml}"
                                                   data-is-selected="${evaluators.is_selected}"
                                                   data-evl-tel="${evaluators.evl_tel}"
                                                   data-addr="${evaluators.addr}"
                                                   data-addr-detail="${evaluators.addr_detail}"
                                                   data-bank-nm="${evaluators.bank_nm}"
                                                   data-act-no="${evaluators.act_no}"
                                                   data-slry="${evaluators.slry}"
                                                   onclick="fillForm(this)">
                                            <label class="form-check-label" for="gridCheck${evaluators.evl_no}">
                                            </label>
                                        </div>
                                    </td>
                                    <td>${evaluators.evl_no}</td>
                                    <td>${evaluators.evl_nm}</td>
                                    <td>
                                        <c:if test="${evaluators.dept_cd == 10}">시각디자인</c:if>
                                        <c:if test="${evaluators.dept_cd == 20}">무대영화미술</c:if>
                                        <c:if test="${evaluators.dept_cd == 30}">연기</c:if>
                                        <c:if test="${evaluators.dept_cd == 40}">모델</c:if>
                                        <c:if test="${evaluators.dept_cd == 50}">보컬</c:if>
                                        <c:if test="${evaluators.dept_cd == 60}">싱어송라이터</c:if>
                                    </td>
                                    <td>${evaluators.is_selected}</td>
                                </tr>
                            </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>

            <div class="col-lg-6">

                <div class="card">
                    <div class="card-body">
                        <!-- Horizontal Form -->
                        <form id="evaluatorForm">
                            <div class="d-flex align-items-center justify-content-between">
                                <h5 class="card-title">Evaluator Information</h5>
                                <div class="col-mb-2">
                                    <button class="btn btn-primary" type="button" onclick="Insert()">신규</button>
                                    <button class="btn btn-primary" type="button" onclick="Update()">저장</button>
                                    <button class="btn btn-primary" type="button" onclick="Delete()">삭제</button>
                                </div>
                            </div>

                            <div class="row mb-3">
                                <label for="evl_no" class="col-sm-2 col-form-label">평가위원번호</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="evl_no" name="evl_no" readonly>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label for="evl_nm" class="col-sm-2 col-form-label">평가위원명</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="evl_nm" name="evl_nm">
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label for="gndr_cd" class="col-sm-2 col-form-label">성별</label>
                                <div class="col-sm-10">
                                    <select name="gndr_cd" class="form-select" id="gndr_cd" >
                                        <option value="" selected>선택해주세요</option>
                                        <option value="10">남</option>
                                        <option value="20">여</option>
                                    </select>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label for="evl_brdt" class="col-sm-2 col-form-label">생년월일</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="evl_brdt" name="evl_brdt">
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label for="dept_cd" class="col-sm-2 col-form-label">학과</label>
                                <div class="col-sm-10">
                                    <select name="dept_cd" class="form-select" id="dept_cd" >
                                        <option value="" selected>선택해주세요</option>
                                        <option value="10">시각디자인</option>
                                        <option value="20">무대영화미술</option>
                                        <option value="30">연기</option>
                                        <option value="40">모델</option>
                                        <option value="50">보컬</option>
                                        <option value="60">싱어송라이터</option>
                                    </select>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label for="evl_ogdp" class="col-sm-2 col-form-label">소속</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="evl_ogdp" name="evl_ogdp">
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label for="evl_eml" class="col-sm-2 col-form-label">이메일</label>
                                <div class="col-sm-10">
                                    <input type="email" class="form-control" id="evl_eml" name="evl_eml">
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label for="is_selected" class="col-sm-2 col-form-label">선정여부</label>
                                <div class="col-sm-10">
                                    <select name="is_selected" class="form-select" id="is_selected">
                                        <option value="" selected>선택해주세요</option>
                                        <option value="Y">Y</option>
                                        <option value="N">N</option>
                                    </select>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label for="evl_tel" class="col-sm-2 col-form-label">휴대폰번호</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="evl_tel" name="evl_tel">
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label for="addr" class="col-sm-2 col-form-label">주소</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="addr" name="addr">
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label for="addr_detail" class="col-sm-2 col-form-label">상세주소</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="addr_detail" name="addr_detail">
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label for="bank_nm" class="col-sm-2 col-form-label">은행명</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="bank_nm" name="bank_nm">
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label for="act_no" class="col-sm-2 col-form-label">계좌번호</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="act_no" name="act_no">
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label for="slry" class="col-sm-2 col-form-label">급여</label>
                                <div class="col-sm-10">
                                    <input type="text" class="form-control" id="slry" name="slry">
                                </div>
                            </div>
                        </form><!-- End Horizontal Form -->
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

<script>
    document.getElementById('selectAll').addEventListener('change', function () {
        const checkboxes = document.querySelectorAll('.row-check');
        checkboxes.forEach(checkbox => checkbox.checked = this.checked);
    });

    function validateDeleteForm() {
        const checkboxes = document.querySelectorAll('.row-check');
        let isChecked = false;
        checkboxes.forEach(checkbox => {
            if (checkbox.checked) {
                isChecked = true;
            }
        });
        if (!isChecked) {
            alert('삭제할 항목을 선택해주세요.');
            return false;
        }
        return true;
    }

    function validateUpdateForm() {
        const checkboxes = document.querySelectorAll('.row-check');
        let isChecked = false;
        checkboxes.forEach(checkbox => {
            if (checkbox.checked) {
                isChecked = true;
            }
        });
        if (!isChecked) {
            alert('저장할 항목을 선택해주세요.');
            return false;
        }
        return true;
    }

    function Delete() {
        if (validateDeleteForm()) {
            document.getElementById("evaluatorForm").action = "/admin/deleteEvaluator";
            document.getElementById("evaluatorForm").submit();
        }
    }

    function Update() {
        if (validateUpdateForm()) {
            document.getElementById("evaluatorForm").action = "/admin/updateEvaluator";
            document.getElementById("evaluatorForm").submit();
        }
    }

    function validateInsertForm() {
        const requiredFields = [
            { id: 'evl_nm', message: '평가위원명을 입력해주세요.' },
            { id: 'gndr_cd', message: '성별을 선택해주세요.', isSelect: true },
            { id: 'evl_brdt', message: '생년월일을 입력해주세요.' },
            { id: 'dept_cd', message: '학과를 선택해주세요.', isSelect: true },
            { id: 'evl_ogdp', message: '소속을 입력해주세요.' },
            { id: 'evl_eml', message: '이메일을 입력해주세요.' },
            { id: 'is_selected', message: '선정여부를 선택해주세요.', isSelect: true },
            { id: 'evl_tel', message: '휴대폰번호를 입력해주세요.' },
            { id: 'addr', message: '주소를 입력해주세요.' },
            { id: 'addr_detail', message: '상세주소를 입력해주세요.' },
            { id: 'bank_nm', message: '은행명을 입력해주세요.' },
            { id: 'act_no', message: '계좌번호를 입력해주세요.' },
            { id: 'slry', message: '급여를 입력해주세요.' },
        ];

        for (let field of requiredFields) {
            const element = document.getElementById(field.id);
            if (field.isSelect) {
                if (element.value === '') {
                    alert(field.message);
                    element.focus();
                    return false;
                }
            } else {
                if (element.value.trim() === '') {
                    alert(field.message);
                    element.focus();
                    return false;
                }
            }
        }
        return true;
    }

    function Insert() {
        if (validateInsertForm()) {
            document.getElementById("evaluatorForm").action = "/admin/insertEvaluator";
            document.getElementById("evaluatorForm").submit();
        }
    }

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
            document.getElementById('gndr_cd').value = lastChecked.dataset.gndrCd;
            document.getElementById('evl_brdt').value = lastChecked.dataset.evlBrdt;
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
            document.getElementById('gndr_cd').value = '';
            document.getElementById('evl_brdt').value = '';
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