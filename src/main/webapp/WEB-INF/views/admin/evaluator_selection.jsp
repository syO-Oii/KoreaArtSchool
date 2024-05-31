<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>Korea Art School Admin Page</title>
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
            <span class="d-none d-lg-block">Korea Art School</span>
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
            <a class="nav-link collapsed" href="#">
                <i class="bi bi-grid"></i>
                <span>공통코드관리</span>
            </a>
        </li><!-- End Dashboard Nav -->

        <li class="nav-item">
            <a class="nav-link collapsed" href="#">
                <i class="bi bi-grid"></i>
                <span>공지사항관리</span>
            </a>
        </li><!-- End Components Nav -->

        <li class="nav-item">
            <a class="nav-link collapsed" href="#">
                <i class="bi bi-journal-text"></i>
                <span>입학모집관리</span>
            </a>
        </li><!-- End Forms Nav -->

        <li class="nav-item">
            <a class="nav-link collapsed" href="/admin/evaluator_info">
                <i class="bi bi-journal-text"></i>
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
                <i class="bi bi-menu-button-wide"></i>
                <span>평가위원별 지원자 선정</span>
            </a>
        </li><!-- End Components Nav -->

        <li class="nav-item">
            <a class="nav-link collapsed" data-bs-target="#charts-nav" data-bs-toggle="collapse" href="#">
                <i class="bi bi-layout-text-window-reverse"></i><span>평가관리 및 조회</span><i
                    class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="charts-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                <li>
                    <a href="charts-chartjs.html">
                        <i class="bi bi-circle"></i><span>서류평가</span>
                    </a>
                </li>
                <li>
                    <a href="charts-apexcharts.html">
                        <i class="bi bi-circle"></i><span>실기평가</span>
                    </a>
                </li>
                <li>
                    <a href="charts-echarts.html">
                        <i class="bi bi-circle"></i><span>최종평가</span>
                    </a>
                </li>
            </ul>
        </li><!-- End Charts Nav -->

    </ul>

</aside><!-- End Sidebar-->

<main id="main" class="main">

    <section class="section">
        <div class="row">
            <div class="col-lg-12">

                <div class="card">
                    <div class="card-body">
                        <h5 class="card-title"></h5>

                        <!-- 1 : 셀렉트박스 START -->
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

                        </form> <!-- 1 : 셀렉트박스 END -->
                    </div>
                </div>
            </div>

            <!-- 2 : 'Recruitment Department Information' START -->
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
                                        <a href="/admin/selectStgEvaluator?rcrt_no=${rcrt.rcrt_no}&evl_stg_no=${rcrt.evl_stg_no}&evl_stg_cd=${rcrt.evl_stg_cd}"
                                           class="selectStgEvaluator">
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
            <!-- 2 : 'Recruitment Department Information' END -->

            <!-- 3 : 'Evaluator Information' START -->
            <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">
                        <!-- Horizontal Form -->
                        <form id="selectIsSelected">
                            <div class="d-flex align-items-center justify-content-between">
                                <h5 class="card-title">Evaluator Information</h5>
                                <div class="d-flex align-items-center">
                                    <div class="d-flex align-items-center flex-grow-1 me-5">
                                        <label class="col-form-label col-sm-6 me-2">선정 여부</label>
                                        <div class="col-sm-7">
                                            <select name="is_selected" class="form-select" aria-label="Default select example">
                                                <option value="0" selected>전체</option>
                                                <option value="Y">Y</option>
                                                <option value="N">N</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-mb-3">
                                        <button class="btn btn-primary me-0" type="button" onclick="filterData()">조회</button>
                                    </div>
                                </div>

                            </div>

                            <table class="table table-hover">
                                <thead>
                                <tr>
                                    <th scope="col">
                                        <div class="form-check">
                                            <input class="form-check-input" type="checkbox" id="selectAll" onclick="selectAllCheckboxes(this)">
                                            <label class="form-check-label" for="selectAll">
                                            </label>
                                        </div>
                                    </th>
                                    <th scope="col">위원번호</th>
                                    <th scope="col">이름</th>
                                    <th scope="col">성별</th>
                                    <th scope="col">학과</th>
                                    <th scope="col">전형</th>
                                    <th scope="col">평가단계</th>
                                    <th scope="col">선정여부</th>
                                    <th scope="col">이메일</th>
                                    <th scope="col">휴대폰번호</th>
                                    <th scope="col"></th>
                                </tr>
                                </thead>
                                <tbody id="evaluatorTable">
                                <c:forEach var="evl" items="${stgEvaluators}">
                                    <tr>
                                        <td>
                                            <div class="form-check">
                                                <input class="form-check-input row-check" type="checkbox" name="selectedEvaluators" value="${evl.evl_no}">
                                                <label class="form-check-label" for="checkbox_${evl.evl_no}">
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
                                        <td>${evl.rcrt_cd}</td>


                                        <td >${evl.is_selected}</td>
                                        <td>${evl.evl_eml}</td>
                                        <td>${evl.evl_tel}</td>
                                        <td><button class="btn btn-primary" onclick="updateEvaluatorInfo()">저장</button></td>
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
    <!-- 3 : 'Evaluator Information' END -->

</main><!-- End #main -->

<!-- ======= Footer ======= -->
<footer id="footer" class="footer">
    <div class="copyright">
        &copy; Copyright <strong><span>Korea Art School</span></strong>. All Rights Reserved
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
    function updateEvaluatorInfo(evl_no, evl_stg_cd) {
        console.log("Sending data:", { evl_no: evl_no, evl_stg_cd: evl_stg_cd }); // 데이터 확인용 콘솔 로그
        $.ajax({
            type: "POST",
            url: "/admin/updateStgEvaluators",
            data:({
                evl_no: evl_no,
                evl_stg_cd: evl_stg_cd
            }),
            success: function(response) {
                alert('평가자위원 정보가 성공적으로 업데이트되었습니다.');
                // 현재 페이지 다시 불러오기
                location.reload();
            },
            error: function(xhr, status, error) {
                alert('평가위원 정보 업데이트에 실패하였습니다.');
            }
        });
    }

    $(document).ready(function () {
        console.log("문서 준비됨"); // 문서 준비 로그

        // .btn-save 클래스를 가진 요소에 대한 클릭 이벤트 핸들러 등록
        $(document).on('click', '.btn-save', function(event) {
            console.log("저장 버튼 클릭됨");
            event.preventDefault();
            let row = $(this).closest('tr');
            let evl_no = $(this).data('evl_no'); // 평가자 번호 가져오기
            let evl_stg_cd = row.find("select[name='evl_stg_cd']").val();
            console.log("평가자 업데이트 중:", { evl_no: evl_no, evl_stg_cd: evl_stg_cd });
            updateEvaluatorInfo(evl_no, evl_stg_cd);
        });

        // 페이지 로드 후 각 저장 버튼에 대한 클릭 이벤트 발생시키기
        $('.btn-save').click();
    });

    function displayEvaluators(data) {
        var tableBody = $("#evaluatorTable");
        tableBody.empty(); // 테이블 내용 지우기

        var deptMap = {
            "10": "시각디자인",
            "20": "무대영화미술",
            "30": "연기",
            "40": "모델",
            "50": "보컬",
            "60": "싱어송라이터"
        };

        var rcrtMap = {
            "10": "일반전형",
            "20": "특기생전형"
        };

        var evlStgMap = {
            "0": "미정",
            "10": "서류평가",
            "20": "실기평가",
            "30": "면접평가"
        };

        // 각 평가자 정보를 테이블에 추가
        data.forEach(function (evl) {
            var newRow = $("<tr>");
            newRow.append("<td><input class='form-check-input row-check' type='checkbox'" + (evl.is_selected === 'Y' ? ' checked' : '') + "></td>");
            newRow.append("<td>" + evl.evl_no + "</td>");
            newRow.append("<td>" + evl.evl_nm + "</td>");
            newRow.append("<td>" + (evl.gndr_cd == 10 ? '남' : '여') + "</td>");
            var deptName = deptMap[evl.dept_cd] || evl.dept_cd;
            newRow.append("<td>" + deptName + "</td>");
            var rcrtName = rcrtMap[evl.rcrt_cd] || evl.rcrt_cd;
            newRow.append("<td>" + rcrtName + "</td>");
            var selectBox = $("<select>").addClass("form-select").attr("name", "evl_stg_cd");
            $.each(evlStgMap, function(key, value) {
                var option = $("<option>").attr("value", key).text(value);
                if (evl.evl_stg_cd == key) {
                    option.attr("selected", "selected");
                }
                selectBox.append(option);
            });

            // 평가 단계 셀렉트 박스 셀 추가
            newRow.append($("<td>").append(selectBox));
            newRow.append("<td>" + evl.is_selected + "</td>");
            newRow.append("<td>" + evl.evl_eml + "</td>");
            newRow.append("<td>" + evl.evl_tel + "</td>");
            newRow.append("<td><button class='btn btn-primary btn-save' data-evl_no='" + evl.evl_no + "'>저장</button></td>");

            tableBody.append(newRow);
        });
    }

    function filterData() {
        console.log("Filtering data"); // 필터링 데이터 로그
        // 선택된 선정 여부 값 가져오기
        var isSelected = $("select[name='is_selected']").val();

        // 테이블의 모든 행을 가져옵니다.
        var tableRows = $("#evaluatorTable").find("tr");

        // 각 행을 순회하면서 필터링된 데이터를 표시합니다.
        tableRows.each(function () {
            var row = $(this);
            var isSelectedRow = row.find("td:nth-child(8)").text(); // 선정여부 열의 값

            // 해당 행의 선정 여부에 따라 보여지거나 숨겨집니다.
            if (isSelected === "0" || isSelected === isSelectedRow) {
                row.show(); // 보여주기
            } else {
                row.hide(); // 숨기기
            }
        });
    }

    $(document).ready(function () {
        console.log("Document ready"); // 문서 준비 로그

        // .selectStgEvaluator class elements click event
        $("body").on("click", "a.selectStgEvaluator", function (event) {
            event.preventDefault(); // 기본 동작 중단

            var selectStgEvaluator = $(this).attr("href");

            // AJAX 요청
            $.ajax({
                type: 'GET',
                url: selectStgEvaluator,
                success: function (response) {
                    console.log("Evaluators loaded", response); // 평가자 로드 로그
                    displayEvaluators(response);
                },
                error: function (xhr, status, error) {
                    console.error(xhr.responseText);
                }
            });
        });
    });
</script>
</body>
</html>