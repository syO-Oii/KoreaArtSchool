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

        /*!* 비밀번호 일치 메시지 *!*/
        /*#password-match-message {*/
        /*    color: blue; !* 파란색으로 설정 *!*/
        /*}*/
    </style>
</head>
<body>
<!-- ***** Header Area Start ***** -->

<header class="header-area header-sticky">
    <div class="container">
        <div class="row">
            <div class="col-12">
                <nav class="main-nav">
                    <a href="/main" class="logo" style="width: 350px">
                        Korea Art School
                    </a>
                    <!-- ***** Menu Start ***** -->
                    <ul class="nav">
                        <li><a href="/apply" >원서접수</a></li>
                        <li><a href="/notice_list" >공지사항</a></li>
                        <li class="has-sub">
                            <a href="javascript:void(0)" class="active" >접수/결과 조회</a>
                            <ul class="sub-menu">
                                <li><a href="/ApplicantCheck" >접수조회</a></li>
                                <li><a href="/ApplicantResultCheck">결과조회</a></li>
                            </ul>
                        </li>
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
                <h2>등록 여부 조회</h2>
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

                        <main id="main2" class="main">
                            <fieldset class="row mb-3 ">
                                <style>
                                    legend {
                                        font-weight: bold; /* 텍스트 bold */
                                        font-size: 1.5em; /* 텍스트 크기 1.5em으로 설정 */
                                        text-align: center;
                                    }
                                </style>
                                <legend>등록 여부 조회</legend>
                            </fieldset>



                            <section class="section">
                                <form id="searchForm" method="post">
                                    <!-- 이름 -->
                                    <div class="row mb-3">
                                        <label for="aplName" class="col-sm-2 col-form-label">이름<span class="required">*</span></label>
                                        <div class="col-sm-7">
                                            <input type="text" class="form-control" id="aplName" name="aplNm" minlength="2" maxlength="11" required />
                                        </div>
                                    </div>

                                    <!-- 이메일 -->
                                    <div class="row mb-3 align-items-center">
                                        <label for="aplBirthDay" class="col-sm-2 col-form-label">이메일<span class="required">*</span></label>
                                        <div class="col-sm-7">
                                            <input type="email" class="form-control input-element" id="aplBirthDay" name="aplEml" required/>
                                        </div>
                                    </div>

                                    <!-- 비밀번호 -->
                                    <div class="row mb-3">
                                        <label for="pswd" class="col-sm-2 col-form-label">비밀번호<span class="required">*</span></label>
                                        <div class="col-sm-7">
                                            <input type="password" class="form-control" id="pswd" name="pswd" oninput="checkPasswordMatch(); checkPasswordLength()" required/>
                                            <div id="password-length-message" style="color: #a11c1c;"></div>
                                        </div>
                                    </div>

                                    <div class="col-lg-12">
                                        <label class="col-sm-2 col-form-label"></label>
                                        <div class="main-button-black text-center form-group">
                                            <button id="searchButton" type="submit" class="btn btn-primary btn-next" data-toggle="modal" data-target="#myModal">조회하기</button>
                                        </div>
                                    </div>
                                </form>
                            </section>

                            <section class="section" style="margin-top: 50px; margin-bottom: 60px;"></section>






                            <div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
                                <div class="modal-dialog" role="document">
                                    <div class="modal-content">
                                        <div class="modal-header">
                                            <h5 class="modal-title" id="myModalLabel">알림</h5>
                                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                                <span aria-hidden="true">&times;</span>
                                            </button>
                                        </div>
                                        <div class="modal-body" id="modalContent">

                                        </div>
                                        <div class="modal-footer">
                                            <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
                                        </div>
                                    </div>
                                </div>
                            </div>






                            <script>
                                // 폼 제출 이벤트를 잡아서 Ajax로 데이터를 전송하고, 조회 결과를 모달에 표시
                                document.getElementById("searchForm").addEventListener("submit", function(event) {
                                    event.preventDefault(); // 기본 제출 동작 방지

                                    // 폼 데이터 가져오기
                                    var formData = new FormData(this);
                                    console.log(formData);

                                    // Ajax를 통해 서버로 데이터를 전송하고, 서버로부터 조회 결과를 받아옴
                                    fetch('/ApplicantCheck', {
                                        method: 'POST',
                                        body: formData
                                    })
                                        .then(response => response.json()) // JSON 형태로 응답 받기
                                        .then(data => {
                                            console.log(data)
                                            // 서버로부터 받은 조회 결과를 모달에 표시
                                            var modalContent = document.getElementById("modalContent");

                                            if (data.aplNm) {
                                                modalContent.innerHTML += "<h4>조회 결과 해당 인원으로 등록 되었습니다</h4>";
                                                modalContent.innerHTML += "<p>이름: " + data.aplNm + "</p>";
                                                modalContent.innerHTML += "<p>이메일: " + data.aplEml + "</p>";
                                                modalContent.innerHTML += "<p>학과: " + data.deptCd + "</p>";
                                            } else {
                                                modalContent.innerHTML += "<p>조회 결과가 없습니다.</p>";
                                            }

                                            openModal(); // 모달 열기
                                        })
                                        .catch(error => console.error('Error:', error));
                                });
                            </script>



                        </main><!-- End #main -->

                        <!-- End General Form Elements -->

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

<%-- 이미지 업로드 설정 --%>
<script src="/js/jQuery-2.1.4.min.js"></script>

<script>
    $(document).ready(function (){
        var formObj = $("#item");
        $("#btnRegister").on("click",function (){
            formObj.attr("action", "/item/register");
            formObj.attr("method","post");
            formObj.submit();
        });

        $("#btnList").on("click",function (){
            self.location="/item/list"
        })
    });
</script>

<body>



</body>



















<script>
    //비밀번호 일치 여부 확인 함수 (checkPasswordMatch)
    function checkPasswordMatch() {
        var password = document.getElementById("pswd").value;
        var confirmPassword = document.getElementById("pswd-validate").value;

        var matchMessage = document.getElementById("password-match-message");
        var lengthMessage = document.getElementById("password-length-message");

        // 비밀번호 일치 여부 확인
        if (password === confirmPassword) {
            matchMessage.innerHTML = "비밀번호 일치";
            matchMessage.style.color = "blue"; // 파란색으로 설정
        } else {
            matchMessage.innerHTML = "비밀번호 불일치";
            matchMessage.style.color = "red"; // 빨간색으로 설정
        }

        // 비밀번호 길이 확인
        if (password.length >= 8) {
            lengthMessage.innerHTML = ""; // 길이가 충분하면 안내 메시지를 지움
        } else {
            lengthMessage.innerHTML = "비밀번호는 8자 이상이어야 합니다."; // 길이가 충분하지 않으면 안내 메시지 표시
        }
    }

    // 비밀번호 입력 필드의 입력 이벤트에 대한 핸들러 등록
    document.getElementById("pswd").addEventListener("input", function() {
        var password = document.getElementById("pswd").value;
        var confirmPassword = document.getElementById("pswd-validate").value;

        // 입력을 시작하면 안내 문구를 표시
        if (password !== "" || confirmPassword !== "") {
            checkPasswordMatch();
        } else {
            // 입력 필드가 비어있을 때는 안내 문구를 숨김
            document.getElementById("password-match-message").innerHTML = "";
            document.getElementById("password-length-message").innerHTML = "";
        }
    });

    // 동의 체크박스 상태 변경 시 모달 창 표시/숨김
    window.onload = function() {
        var agreeCheckbox = document.getElementById('agree');
        var modal = document.getElementById('myModal');

        agreeCheckbox.onchange = function() {
            if (agreeCheckbox.checked) {
                modal.style.display = 'none';
            } else {
                modal.style.display = 'block';
            }
        }

        modal.onclick = function() {
            modal.style.display = 'none';
        }
    };

    // 생년월일 입력 필드에 커스텀 색상 적용
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

<script>
    // 폼 제출 시 비밀번호 일치 여부 확인 후 AJAX 요청 (AJAX를 이용한 폼 제출)
    $(document).ready(function () {
        $("#applicationForm").on("submit", function (e) {

            // 동의 체크박스 확인
            if (!$("#agree").is(":checked")) {
                $('#myModal').modal('show');
                return;
            }


            // 휴대폰번호 합치기
            var phoneNumber = $("#tel1").val() + $("#tel2").val() + $("#tel3").val();
            $("#aplTelNumber").val(phoneNumber);



        });
    });
</script>

</body>
</html>