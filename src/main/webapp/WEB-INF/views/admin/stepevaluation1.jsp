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
    <style>
        /* 토글 버튼 스타일 */
        .toggle-btn {
            cursor: pointer;
            width: 50px;
            height: 25px;
            border-radius: 25px;
            background-color: grey;
            position: relative;
            border: 2px solid blue; /* 파란색 테두리 추가 */
        }

        /* 토글 버튼의 활성화 상태 스타일 */
        .toggle-btn::before {
            content: '';
            position: absolute;
            width: 25px;
            height: 25px;
            border-radius: 50%;
            background-color: white;
            top: 0;
            left: 0;
            transition: 0.4s;
        }

        /* 토글 버튼의 비활성화 상태 스타일 */
        .toggle-btn.inactive::before {
            left: 25px;
        }

        /* 각 지원자의 합격 여부를 나타내는 토글 버튼 */
        .pass-toggle {
            display: inline-block;
            margin: 5px;
        }
    </style>
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
            <a class="nav-link collapsed" href="/admin/evaluator_selection">
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
            <a class="nav-link  data-bs-target="#charts-nav" data-bs-toggle="collapse" href="#">
            <i class="bi bi-layout-text-window-reverse"></i><span>평가관리 및 조회</span><i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="charts-nav" class="nav-content " data-bs-parent="#sidebar-nav">
                <li>
                    <a href="/admin/stepevaluation1" class="active">
                        <i class="bi bi-circle"></i><span>서류평가</span>
                    </a>
                </li>
                <li>
                    <a href="/admin/stepevaluation2">
                        <i class="bi bi-circle"></i><span>실기평가</span>
                    </a>
                </li>
                <li>
                    <a href="/admin/stepevaluation3
">
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
                        <!-- General Form Elements -->
                        <form action="/admin/stepevaluation1" method="post">
                            <div class="row mb-3">
                                <label class="col-sm-1 col-form-label">입학년도</label>
                                <div class="col-sm-2">
                                    <select id="yearCd" name="yearCd" class="form-select" aria-label="Default select example">
                                        <option selected>선택해주세요</option>
                                        <option value="10">2021</option>
                                        <option value="20">2022</option>
                                        <option value="30">2023</option>
                                        <option value="40">2024</option>
                                    </select>
                                </div>
                                <label class="col-sm-1 col-form-label">계열 선택</label>
                                <div class="col-sm-2">
                                    <select id="dept" name="dept" class="form-select" aria-label="Default select example">
                                        <option selected>선택해주세요</option>
                                        <option value="10">디자인</option>
                                        <option value="20">연기</option>
                                        <option value="30">음악</option>
                                    </select>
                                </div>
                                <div class="col-sm-2">
                                    <button id="getAppliantButton" class="btn btn-primary" type="submit" >조회</button>
                                </div>
                            </div>
                            <div class="row mb-3">
                                <label class="col-sm-1 col-form-label">학과 선택</label>

                                <div class="col-sm-2">
                                    <select id="deptCd" name="deptCd" class="form-select" aria-label="Default select example">
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
                                    <select id="rcrtCd" name="rcrtCd" class="form-select" aria-label="Default select example">
                                        <option selected>선택해주세요</option>
                                        <option value="10">일반전형</option>
                                        <option value="20">특기생전형</option>
                                    </select>
                                </div>

                            </div>
                        </form><!-- End General Form Elements -->
                        <div class="col-sm-2">
                            <button id="executeEvaluationButton" class="btn btn-primary" onclick="executeEvaluation()">평가 실행</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="col-lg-12">
                <div class="card">
                    <div class="card-body">

                        <form id="passForm" method="post" action="/updatePass">
                        <table class="table table-hover">
                            <thead>
                            <tr>
                                <th hidden="hidden"></th>
                                <th hidden="hidden"></th>
                                <th scope="col">지원자 번호</th>
                                <th scope="col">지원자 이름</th>
                                <th scope="col">성별</th>
                                <th scope="col">점수</th>
                                <th scope="col">순위</th>
                                <th scope="col">합격여부</th>
                            </tr>
                            </thead>
                            <tbody>
                            <c:forEach var="stageApplicant" items="${stageApplicantList}">
                                <tr>
                                    <td hidden="hidden" >${stageApplicant.rcrtNo}</td>
                                    <td hidden="hidden" >${stageApplicant.rcrtPscp}</td>
                                    <td>${stageApplicant.aplNo}</td>
                                    <td>${stageApplicant.aplNm}</td>
                                    <td>${stageApplicant.gndrNm}</td>
                                    <td>${stageApplicant.score}</td>
                                    <td>${stageApplicant.evlRank}</td>
                                    <!-- 각 지원자의 합격 여부를 나타내는 토글 버튼 -->
                                    <td class="pass-toggle">
                                        <div class="toggle-btn ${stageApplicant.firstPassYn eq 'Y' ? 'active' : 'inactive'}"
                                             data-evlstgno="${stageApplicant.aplNo}"
                                             onclick="togglePass('${stageApplicant.aplNo}', '${stageApplicant.firstPassYn}')"></div>
                                        <!-- 각 지원자의 합격 여부를 서버로 전송할 hidden input -->
                                        <input type="hidden" id="firstPassYn_${stageApplicant.aplNo}" name="firstPassYn" value="${stageApplicant.firstPassYn}">
                                    </td>
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

<script>
    // 실행 버튼 클릭 시 평가 실행
    function executeEvaluation() {
        // 테이블에서 첫 번째 행을 선택하고 그 안의 td 요소를 찾아서 해당 값(rcrtNo 및 rcrtPscp)을 가져옴
        var firstRow = document.querySelector('table tbody tr:first-child');
        var rcrtNo = firstRow.querySelector('td:nth-child(1)').textContent;
        var rcrtPscp = firstRow.querySelector('td:nth-child(2)').textContent;

        // 만약 값이 없거나 비어있다면 알림을 표시하고 함수 종료
        if (!rcrtNo.trim() || !rcrtPscp.trim()) {
            alert("평가할 데이터가 없습니다.");
            return;
        }

        // XMLHttpRequest를 사용하여 rcrtNo와 rcrtPscp를 서버에 전송
        var xhr = new XMLHttpRequest();
        xhr.open("POST", "/executeEvaluation", true);
        xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        xhr.onreadystatechange = function() {
            if (this.readyState === XMLHttpRequest.DONE && this.status === 200) {
                alert("평가가 성공적으로 실행되었습니다.");
                location.reload(); // 평가 실행 후 페이지 새로고침
            }
        };
        // rcrtNo와 rcrtPscp를 데이터로 전송
        xhr.send("rcrtNo=" + encodeURIComponent(rcrtNo) + "&rcrtPscp=" + encodeURIComponent(rcrtPscp));
    }
</script>

<script>
    function togglePass(aplNo, currentFirstPassYn) {
        // 합격 여부를 반전
        var newFirstPassYn = currentFirstPassYn === 'Y' ? 'N' : 'Y';

        // input 요소의 값을 변경
        var firstPassYnInput = document.getElementById("firstPassYn_" + aplNo);
        firstPassYnInput.value = newFirstPassYn;

        // AJAX 요청을 통해 서버에 업데이트
        var xhr = new XMLHttpRequest();
        xhr.open("POST", "/updatePass", true);
        xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        xhr.onreadystatechange = function() {
            if (this.readyState === XMLHttpRequest.DONE) {
                if (this.status === 200) {
                    // 요청이 성공적으로 처리되면 UI를 업데이트
                    var toggleBtn = document.querySelector('.toggle-btn[data-evlstgno="' + aplNo + '"]');
                    toggleBtn.classList.toggle('active', newFirstPassYn === 'Y');
                    toggleBtn.classList.toggle('inactive', newFirstPassYn !== 'Y');

                    // 알림 창 표시
                    alert("합격 여부가 수정되었습니다.");
                    location.reload(); // 평가 실행 후 페이지 새로고침
                } else {
                    // 요청이 실패하면 토글 버튼을 다시 활성화
                    var toggleBtn = document.querySelector('.toggle-btn[data-evlstgno="' + aplNo + '"]');
                    toggleBtn.classList.remove('inactive');

                    // 알림 창 표시
                    alert("서버오류남.");
                    location.reload(); // 평가 실행 후 페이지 새로고침
                }
            }
        };
        xhr.send("aplNo=" + encodeURIComponent(aplNo) + "&firstPassYn=" + encodeURIComponent(newFirstPassYn));
    }

</script>


<script>
    // document.getElementById('selectAll').addEventListener('change', function () {
    //     const checkboxes = document.querySelectorAll('.row-check');
    //     checkboxes.forEach(checkbox => checkbox.checked = this.checked);
    // });

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

    function Insert() {
        document.getElementById("evaluatorForm").action = "/admin/insertEvaluator";
        document.getElementById("evaluatorForm").submit();
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