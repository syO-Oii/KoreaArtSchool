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

    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>

    <link href="assets/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="assets/vendor/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="assets/vendor/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="assets/vendor/quill/quill.snow.css" rel="stylesheet">
    <link href="assets/vendor/quill/quill.bubble.css" rel="stylesheet">
    <link href="assets/vendor/remixicon/remixicon.css" rel="stylesheet">
    <link href="assets/vendor/simple-datatables/style.css" rel="stylesheet">

    <link rel="stylesheet" href="assets/css/fontawesome.css">
    <link rel="stylesheet" href="assets/css/templatemo-edu-meeting.css">
    <link rel="stylesheet" href="assets/css/owl.css">
    <link rel="stylesheet" href="assets/css/lightbox.css">

    <link href="assets/css/style.css" rel="stylesheet">
    <style>
        .required {
            color: red;
            margin-right: 4px;
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
                    <a href="/main" class="logo">
                        Korea Art School
                    </a>
                    <!-- ***** Menu Start ***** -->
                    <ul class="nav">
                        <li><a href="/apply" class="active">원서접수</a></li>
                        <li><a href="/list" >공지사항</a></li>
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
                    <div class="card-body" style="margin-top: 50px;">

                        <!-- General Form Elements -->
                        <form action="/apply_step2" id="applyForm" method="post" enctype="multipart/form-data">
                            <main class="main">
                                <fieldset class="row mb-3 ">
                                    <style>
                                        legend {
                                            font-weight: bold;
                                            font-size: 1.5em;
                                            text-align: center;
                                        }
                                    </style>
                                    <legend>지원사항</legend>
                                </fieldset>

                                <section class="section" style="margin-top: 50px; margin-bottom: 60px;">
                                    <style>
                                        .row.mb-3 > .col-sm-11 > .form-control {
                                            margin-top: 0.5rem;
                                        }
                                    </style>

                                    <!-- 학과/전형 선택 Start -->
                                    <div class="row mb-3">
                                        <label class="col-sm-1 col-form-label">계열<span class="required">*</span></label>
                                        <div class="col-sm-4">
                                            <select name="dept" id="dept" class="form-select" aria-label="Default select example" required>
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
                                            <select name="deptCode" class="form-select" id="deptCode" aria-label="Default select example" required>
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
                                            <select name="rcrtCode" class="form-select" aria-label="Default select example" required>
                                                <%--일반: 10, 특기생: 20--%>
                                                <option selected>선택해주세요</option>
                                                <option value="10">일반</option>
                                                <option value="20">특기생</option>
                                            </select>
                                        </div>
                                    </div>
                                    <!-- 학과/전형 선택 End -->

                                    <%-- start hidden --%>
                                    <input type="hidden" id="aplEmail" name="aplEmail" value="${aplEmail}">
                                    <input type="hidden" id="pswd" name="pswd" value="${pswd}">
                                    <input type="hidden" id="yearCode" name="yearCode" value="40">
                                    <%-- end hidden --%>

                                </section>
                                <section class="section" style="margin-top: 50px; margin-bottom: 60px;" >



                                    <!-- 자기소개 입력 폼 Start -->
                                    <style>
                                        .question-label {
                                            font-weight: bold;
                                        }
                                    </style>
                                    <div class="row mb-3">
                                        <label for="qitemAns1" class="col-sm-10 col-form-label question-label">문항1. 자신에 대한 소개 (성장과정 및 학창시절 포함)</label>
                                        <div class="col-sm-11">
                                            <textarea id="qitemAns1" name="qitemAns1" class="form-control" rows="10" placeholder="1000자 이내로 입력하시오."maxlength="1000" required></textarea>
                                        </div>
                                    </div>
                                    <div class="row mb-3">
                                        <label for="qitemAns2" class="col-sm-10 col-form-label question-label">문항2. 지원동기와 지원한 분야를 위해 어떤 노력과 준비를 해왔는지 기술하시오.</label>
                                        <div class="col-sm-11">
                                            <textarea id="qitemAns2" name="qitemAns2" class="form-control" rows="10" placeholder="1000자 이내로 입력하시오." maxlength="1000" required></textarea>
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
                                        background-color: #22201e;
                                        border-color: white;
                                    }
                                    .btn-select:hover {
                                        background-color: #f5a425;
                                        color: white;
                                        border-color: #f5a425;
                                    }

                                    .btn-done {
                                        background-color: #22201e;
                                        border-color: white;
                                    }
                                    .btn-done:hover {
                                        background-color: #f5a425;
                                        color: white;
                                        border-color: #f5a425;
                                    }
                                    .btn-previous {
                                        color: #22201e;
                                        background-color: white;
                                        border-color: #22201e;
                                    }
                                    .btn-previous:hover {
                                        color: white;
                                        background-color:#f5a425;
                                        border-color: #f5a425;
                                    }
                                </style>

                                <div class="col-lg-12" >
                                    <label class="col-sm-2 col-form-label "></label>
                                    <div class="main-button-black text-center form-group">
                                        <button type="button" onclick="reStart()" class="btn btn-outline-dark btn-previous">이전페이지</button>
                                        <button type="submit" class="btn btn-dark btn-done" onclick="submitForm()">제출</button>
                                    </div>
                                </div>
                                <script>
                                    function reStart() {
                                        var aplEmail = document.getElementById('aplEmail').value;

                                        $.ajax({
                                            url: '/apply_step1_goback',
                                            type: 'POST',
                                            data: { aplEmail: aplEmail },
                                            success: function(response) {
                                                window.location.href = "/apply";
                                            },
                                            error: function(error) {
                                                alert('삭제 중 오류가 발생했습니다.');
                                            }
                                        });
                                    }
                                </script>
                            </main><!-- End #main -->
                        </form>
                    </div>
                </div>
                </main>
            </section>
        </div>
    </div>
</section>



<footer class="footer">
    <p>서울특별시 마포구 신촌로 176 신입학 문의 : 02-123-4567 재학생 문의 : 02-123-4567</p>
    <p>Copyright © 2024 Maximum Co., Ltd. All Rights Reserved.</p>
</footer>


<!-- ***** 본문 끝 ***** -->
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

<script src="assets/js/main.js"></script>
<script>
    document.getElementById('dept').addEventListener('change', function() {
        var dept = this.value;
        var deptCodeSelect = document.getElementById('deptCode');
        deptCodeSelect.innerHTML = '';

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
    // 모든 필수 입력 필드를 확인하는 함수
    function validateForm() {
        var requiredFields = document.querySelectorAll('input[required], textarea[required], select[required]');
        for (var i = 0; i < requiredFields.length; i++) {
            if (!requiredFields[i].value) {
                alert('모든 필수 입력 필드를 채워주세요.');
                requiredFields[i].focus();
                return false; // 폼 제출을 막습니다.
            }
        }
        return true; // 모든 필수 입력 필드가 채워진 경우 폼을 제출합니다.
    }
</script>

<script>
    function preventFormSubmission(event) {
        event.preventDefault();
        alert('셀렉트 박스를 모두 선택하세요.');
    }

    document.querySelectorAll('.form-select').forEach(function(select) {
        select.addEventListener('change', function() {
            var allSelected = true;

            document.querySelectorAll('.form-select').forEach(function(option) {
                if (option.value === '') {
                    allSelected = false;
                }
            });

            if (allSelected) {
                document.querySelector('form').removeEventListener('submit', preventFormSubmission);
            } else {
                document.querySelector('form').addEventListener('submit', preventFormSubmission);
            }
        });
    });
</script>
</body>
</html>