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

    <%--  Bootstrap 및 jQuery 라이브러리  --%>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>

    <!-- Vendor CSS Files -->
    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="assets/vendor/quill/quill.snow.css" rel="stylesheet">
    <link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet">
    <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
    <link href="assets/vendor/simple-datatables/style.css" rel="stylesheet">


    <!-- Additional CSS Files -->
    <link rel="stylesheet" href="assets/css/fontawesome.css">
    <link rel="stylesheet" href="assets/css/templatemo-edu-meeting.css">
    <link rel="stylesheet" href="assets/css/owl.css">
    <link rel="stylesheet" href="assets/css/lightbox.css">

    <!-- Template Main CSS File -->
    <link href="assets/css/style.css" rel="stylesheet">
    <style>
        /* 필수입력항목 *로 표시 */
        .required {
            color: red; /* 빨간색 */
            margin-right: 4px; /* 별표와 레이블 사이의 간격 조절 */
        }

    </style>
</head>
<body>

<%--msg 변수를 이용한 "등록 완료" 메시지 출력--%>
<c:if test="${not empty msg}">
    <script type="text/javascript">
        showMessage("${msg}");
    </script>
</c:if>


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
                        <li><a href="#">공지사항</a></li>
                        <li class="has-sub">
                            <a href="javascript:void(0)">입학 안내</a>
                            <ul class="sub-menu">
                                <li><a href="#">전형일정</a></li>
                                <li><a href="#">학과소개</a></li>
                            </ul>
                        </li>
                        <li class="has-sub">
                            <a href="javascript:void(0)">접수/결과 조회</a>
                            <ul class="sub-menu">
                                <li><a href="#">접수조회</a></li>
                                <li><a href="#">결과조회</a></li>
                            </ul>
                        </li>
                        <li class="scroll-to-section"><a href="#">입학 Q&A</a></li>
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
                <h6>Application submission</h6>
                <h2>원서 접수</h2>
            </div>
        </div>
    </div>
</section>
<!-- ***** 본문 시작 ***** -->
<section class="meetings-page" id="meetings">
    <div class="container">
        <div class="row justify-content-center">
            <!-- ***** main 태그 시작 ***** -->
            <section id="main" class="main">
                <div class="card">
                    <div class="card-body">

                        <!-- General Form Elements -->
                        <form action="/submitApplyStepTwo" method="post" enctype="multipart/form-data">
                            <main id="main" class="main">
                                    <fieldset class="row mb-3 ">
                                        <style>
                                            legend {
                                                font-weight: bold; /* 텍스트 bold */
                                                font-size: 1.5em; /* 텍스트 크기 1.5em으로 설정 */
                                                text-align: center;
                                            }
                                        </style>
                                        <legend>지원사항</legend>
                                    </fieldset>

                            <section class="section" style="margin-top: 50px; margin-bottom: 60px;">
<%--                                <div class="col-lg-12">--%>
<%--                                    <div class="card">--%>
<%--                                        <div class="card-body">--%>
                                            <style>
                                                /* 입력 폼과 문자 사이의 여백 조정 */
                                                .row.mb-3 > .col-sm-11 > .form-control {
                                                    margin-top: 0.5rem; /* 입력 폼 위쪽 마진 조정 */
                                                }
                                            </style>

                                            <!-- 학과/전형 선택 Start -->
                                                <div class="row mb-3">
                                                    <label class="col-sm-1 col-form-label">계열<span class="required">*</span></label>
                                                    <div class="col-sm-4">
                                                        <select name="dept" id="deptSelect" class="form-select" aria-label="Default select example">
                                                            <%--시각디자인: 10, 무대영화미술: 20, 연기: 30, 모델: 40, 보컬: 50, 싱어송라이터: 60--%>
                                                            <option selected >선택해주세요</option>
                                                            <option value="10">디자인</option>
                                                            <option value="20">연기</option>
                                                            <option value="30">음악</option>
                                                        </select>
                                                    </div>
                                                </div>
                                                <div class="row mb-3">
                                                    <label class="col-sm-1 col-form-label">학과<span class="required">*</span></label>
                                                    <div class="col-sm-4">
                                                        <select name="deptCode" class="form-select" id="deptCodeSelect" aria-label="Default select example">
                                                            <%--시각디자인: 10, 무대영화미술: 20, 연기: 30, 모델: 40, 보컬: 50, 싱어송라이터: 60--%>
                                                            <option selected >선택해주세요</option>
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
                                                    <label class="col-sm-1 col-form-label">전형<span class="required">*</span></label>
                                                    <div class="col-sm-4">
                                                        <select name="rcrtCode" class="form-select" aria-label="Default select example">
                                                            <%--일반: 10, 특기생: 20--%>
                                                            <option selected>선택해주세요</option>
                                                            <option value="10">일반</option>
                                                            <option value="20">특기생</option>
                                                        </select>
                                                    </div>
                                                </div>
                                            <!-- 학과/전형 선택 End -->
                                    </section>
                                    <section class="section" style="margin-top: 50px; margin-bottom: 60px;" >



                                        <!-- 자기소개 입력 폼 Start -->
                                        <style>
                                            /* 자기소개 문항명 bold로 설정 */
                                            .question-label {
                                                font-weight: bold;
                                            }
                                        </style>
                                                <div class="row mb-3">
                                                    <label for="qitemNm1" class="col-sm-10 col-form-label question-label">문항1. 자신에 대한 소개 (성장과정 및 학창시절 포함)</label>
                                                    <div class="col-sm-11">
                                                        <textarea id="qitemNm1" name="qitemNm1" class="form-control" rows="10" placeholder="1000자 이내로 입력하시오."maxlength="1000"></textarea>
                                                    </div>
                                                </div>
                                                <div class="row mb-3">
                                                    <label for="qitemNm2" class="col-sm-10 col-form-label question-label">문항2. 지원동기와 지원한 분야를 위해 어떤 노력과 준비를 해왔는지 기술하시오.</label>
                                                    <div class="col-sm-11">
                                                        <textarea id="qitemNm2" name="qitemNm2" class="form-control" rows="10" placeholder="1000자 이내로 입력하시오." maxlength="1000"></textarea>
                                                    </div>
                                                </div>
                                            <!-- 자기소개 입력 폼 End -->
                                    </section>
                                    <section class="section" style="margin-top: 50px; margin-bottom: 60px;" >
                                            <!-- 파일제출 폼 Start -->
                                                <div class="row mb-3">
                                                    <label for="dcmNm" class="col-sm-2 col-form-label">첨부파일<span class="required">*</span></label>
                                                    <div class="col-sm-7">
                                                        <input class="form-control" type="file" id="dcmNm" name="dcmNm" required/>
                                                    </div>
                                                </div>
                                            <!-- 파일제출 폼 End -->
                                    </section>


                                    <style>
                                        /* '조회', '제출', '이전페이지' 버튼 CSS코드 */

                                        .btn-select {
                                            background-color: #22201e; /* 다음페이지 버튼의 배경색 */
                                            border-color: white;
                                        }
                                        .btn-select:hover {
                                            background-color: #f5a425; /* 원하는 hover 시 배경색 */
                                            color: white; /* 원하는 hover 시 텍스트색 */
                                            border-color: #f5a425; /* 이전페이지 버튼의 테두리색 */
                                        }

                                        .btn-done {
                                            background-color: #22201e; /* 다음페이지 버튼의 배경색 */
                                            border-color: white;
                                        }
                                        .btn-done:hover {
                                            background-color: #f5a425; /* 원하는 hover 시 배경색 */
                                            color: white; /* 원하는 hover 시 텍스트색 */
                                            border-color: #f5a425; /* 이전페이지 버튼의 테두리색 */
                                        }
                                        .btn-previous {
                                            color: #22201e;
                                            background-color: white; /* 이전페이지 버튼의 배경색 */
                                            border-color: #22201e; /* 이전페이지 버튼의 테두리색 */
                                        }
                                        .btn-previous:hover {
                                            color: white;
                                            background-color:#f5a425; /* 이전페이지 버튼의 배경색 */
                                            border-color: #f5a425; /* 이전페이지 버튼의 테두리색 */
                                        }
                                    </style>

                                <div class="col-lg-12" >
                                    <label class="col-sm-2 col-form-label "></label>
                                    <div class="main-button-black text-center form-group">
                                        <button type="button" onclick="goBack()" class="btn btn-outline-primary btn-previous">이전페이지</button>
                                        <button type="submit" class="btn btn-primary btn-done">제출</button>

                                        <script>
                                            function goBack() {
                                                window.history.back();
                                            }
                                        </script>
                                    </div>
                                </div>
                                <!-- End General Form Elements -->
                            </main><!-- End #main -->

                            <!-- End General Form Elements -->
                        </form>
                    </div>
                </div>
            </main>
            <!-- ***** 두 번째 페이지의 main 태그 끝 ***** -->

            </section>
        </div>
    </div>
</section>



<footer class="footer">
    <p>서울특별시 마포구 신촌로 176 신입학 문의 : 02-123-4567 재학생 문의 : 02-123-4567</p>
    <p>Copyright © 2024 Maximum Co., Ltd. All Rights Reserved.</p>
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

<!-- Vendor JS Files -->
<script src="assets/vendor/apexcharts/apexcharts.min.js"></script>
<script src="assets/vendor/chart.js/chart.umd.js"></script>
<script src="assets/vendor/echarts/echarts.min.js"></script>
<script src="assets/vendor/quill/quill.js"></script>
<script src="assets/vendor/simple-datatables/simple-datatables.js"></script>
<script src="assets/vendor/tinymce/tinymce.min.js"></script>
<script src="assets/vendor/php-email-form/validate.js"></script>

<!-- Template Main JS File -->
<script src="assets/js/main.js"></script>


<%-- msg 변수를 활용하여 "등록 완료" 메시지 출력 --%>
<script type="text/javascript">
    function showMessage(message) {
        alert(message);
    }
</script>

<%--multi select--%>
<script>
    document.getElementById('deptSelect').addEventListener('change', function() {
        var dept = this.value;
        var deptCodeSelect = document.getElementById('deptCodeSelect');
        deptCodeSelect.innerHTML = ''; // Clear previous options

        switch (dept) {
            case '10': // 디자인
                addOption(deptCodeSelect, '', '선택해주세요');
                addOption(deptCodeSelect, '10', '시각디자인');
                addOption(deptCodeSelect, '20', '무대영화미술');
                break;
            case '20': // 연기
                addOption(deptCodeSelect, '', '선택해주세요');
                addOption(deptCodeSelect, '30', '연기');
                addOption(deptCodeSelect, '40', '모델');
                break;
            case '30': // 음악
                addOption(deptCodeSelect, '', '선택해주세요');
                addOption(deptCodeSelect, '50', '보컬');
                addOption(deptCodeSelect, '60', '싱어송라이터');
                break;
            default:
                addOption(deptCodeSelect, '', '선택해주세요');
                break;
        }
    });

    function addOption(selectElement, value, text) {
        var option = document.createElement('option');
        option.value = value;
        option.text = text;
        selectElement.appendChild(option);
    }
</script>


<script>
    // 폼 제출을 막기 위한 함수
    function preventFormSubmission(event) {
        event.preventDefault(); // 폼 제출 막음
        alert('셀렉트 박스를 모두 선택하세요.');
    }

    //'선택해주세요'가 아닌 옵션이 선택된 경우에만 폼 제출 허용
    document.querySelectorAll('.form-select').forEach(function(select) {
        select.addEventListener('change', function() {
            var allSelected = true; // 모든 셀렉트 박스가 선택되었는지 확인하는 변수

            // 각 셀렉트 박스의 값을 확인하여 '선택해주세요'를 선택한 경우 allSelected를 false로 설정
            document.querySelectorAll('.form-select').forEach(function(option) {
                if (option.value === '') {
                    allSelected = false;
                }
            });

            // 모든 셀렉트 박스가 선택되었으면 폼 제출 허용
            if (allSelected) {
                document.querySelector('form').removeEventListener('submit', preventFormSubmission);
            } else { // 하나라도 선택되지 않은 셀렉트 박스가 있으면 폼 제출 막음
                document.querySelector('form').addEventListener('submit', preventFormSubmission);
            }
        });
    });
</script>

</body>
</html>