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
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <link rel="stylesheet" href="assets/css/fontawesome.css">
    <link rel="stylesheet" href="assets/css/templatemo-edu-meeting.css">
    <link rel="stylesheet" href="assets/css/owl.css">
    <link rel="stylesheet" href="assets/css/lightbox.css">
    <!-- Template Main CSS File -->
    <link href="assets/css/style.css" rel="stylesheet">
    <style>
        .required {
            color: red;
            margin-right: 4px;
        }
    </style>
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
            <main id="main" class="main">
                <div class="card">
                    <div class="card-body" style="margin-top: 30px;">
                        <main class="main">
                        <!-- General Form Elements -->
                        <form id="applicationForm" action="/apply_step1" method="post" enctype="multipart/form-data">
                            <main class="main">
                                <fieldset class="row mb-3 ">
                                    <style>
                                        legend {
                                            font-weight: bold;
                                            font-size: 1.5em;
                                            text-align: center;
                                        }
                                    </style>
                                    <legend>지원자 인적사항</legend>
                                </fieldset>

                                <section class="section">
                                    <!-- 이름 -->
                                    <div class="row mb-3">
                                        <label for="aplName" class="col-sm-2 col-form-label">이름<span class="required">*</span></label>
                                        <div class="col-sm-7">
                                            <input type="text" class="form-control" id="aplName" name="aplName" minlength="2" maxlength="11" required />
                                        </div>
                                    </div>

                                    <!-- 성별 -->
                                    <div class="row mb-3 align-items-center">
                                        <label for="male" class="col-sm-2 col-form-label">성별<span class="required">*</span></label>
                                        <div class="col-sm-10">
                                            <div class="row">
                                                <div class="col-sm-3">
                                                    <div class="form-check">
                                                        <input type="radio" class="form-check-input" id="male"  name="gndrCode" value="10" checked="checked" required>
                                                        <label class="form-check-label" for="male">남자</label>
                                                    </div>
                                                </div>
                                                <div class="col-sm-3">
                                                    <div class="form-check">
                                                        <input type="radio" class="form-check-input" id="female" name="gndrCode" value="20" required>
                                                        <label class="form-check-label" for="female">여자</label>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </div>


                                    <!-- 생년월일 -->
                                    <div class="row mb-3 align-items-center">
                                        <label for="aplBirthDay" class="col-sm-2 col-form-label">생년월일(8자리)<span class="required">*</span></label>
                                        <div class="col-sm-7">
                                            <input type="text" class="form-control input-element" id="aplBirthDay" name="aplBirthDay" placeholder="20050101" required/>
                                        </div>
                                    </div>

                                    <!-- 비밀번호 -->
                                    <div class="row mb-3">
                                        <label for="pswd" class="col-sm-2 col-form-label">비밀번호<span class="required">*</span></label>
                                        <div class="col-sm-7">
                                            <input type="password" class="form-control" id="pswd" name="pswd"  pattern="(?=.*\d)(?=.*[a-zA-Z]).{8,}"
                                                   title="영문 소문자와 숫자를 각각 1개 이상을 포함하여 8자리 이상의 문자를 입력하세요."
                                                   oninput="checkPasswordMatch(); checkPasswordLength()" required/>
                                            <div id="password-length-message" style="color: red;"></div>
                                        </div>
                                    </div>

                                    <div class="row mb-3">
                                        <label for="pswd-validate" class="col-sm-2 col-form-label">비밀번호 확인<span class="required">*</span></label>
                                        <div class="col-sm-7">
                                            <input type="password" class="form-control" id="pswd-validate" oninput="checkPasswordMatch()" required/>
                                            <div id="password-match-message" style="color: red;"></div>
                                        </div>
                                    </div>

                                    <!-- 휴대폰번호 -->
                                    <div class="row mb-3">
                                        <label for="aplTelNumber" class="col-sm-2 col-form-label">휴대폰번호<span class="required">*</span></label>
                                        <div class="col-sm-7">
                                            <div class="input-group">
                                                <input type="text" class="form-control" id="aplTelNumber" name="aplTelNumber" placeholder="01012345678" pattern="[0-9]{11}" required/>
                                            </div>
                                        </div>
                                    </div>



                                    <!-- 이메일 -->
                                    <div class="row mb-3">
                                        <label for="aplEmail" class="col-sm-2 col-form-label">이메일<span class="required">*</span></label>
                                        <div class="col-sm-7">
                                            <div class="input-group">
                                                <input type="email" class="form-control" id="aplEmail" name="aplEmail" placeholder="maximum@gmail.com" required/>
                                                <button type="button" class="btn btn-outline-secondary" id="checkEmailButton">중복 확인</button>
                                            </div>
                                            <div id="emailCheckResult"></div>
                                        </div>
                                    </div>

                                    <!-- 증명사진 -->
                                    <div class="row mb-3 align-items-center">
                                        <label for="aplImg" class="col-sm-2 col-form-label">증명사진<span class="required">*</span></label>
                                        <div class="col-sm-7 d-flex align-items-center">
                                            <input type="file" class="form-control" id="aplImg" name="aplImg" onchange="previewImage(this)" required/>
                                        </div>
                                        <div class="col-sm-2 d-flex align-items-center">
                                            <img id="imgPreview" src="#" alt="증명사진 미리보기" class=form-control" style="max-width: 115px; max-height: 152px; display: none;">
                                        </div>
                                    </div>

                                    <script>
                                        function previewImage(input) {
                                            var imgElement = document.getElementById('imgPreview');
                                            if (input.files && input.files[0]) {
                                                var reader = new FileReader();
                                                reader.onload = function (e) {
                                                    imgElement.src = e.target.result;
                                                    imgElement.style.display = 'block';
                                                }
                                                reader.readAsDataURL(input.files[0]);
                                            }   else {
                                                imgElement.style.display = 'none';
                                            }
                                        }
                                    </script>

                                    <!-- 주소 -->
                                    <div class="row mb-3">
                                        <label for="address" class="col-sm-2 col-form-label">주소<span class="required">*</span></label>
                                        <div class="col-sm-7">
                                            <div class="input-group">
                                                <input type="text" class="form-control" id="address" name="address" minlength="1" required/>
                                                <button type="button" class="btn btn-outline-secondary" onClick="goPopup()">주소 찾기</button>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- 상세주소 -->
                                    <div class="row mb-3">
                                        <label for="addressDetail" class="col-sm-2 col-form-label">상세주소<span class="required">*</span></label>
                                        <div class="col-sm-7">
                                            <input type="text" class="form-control" id="addressDetail" name="addressDetail" minlength="1" required/>
                                        </div>
                                    </div>

                                    <%--최종학력 (고등학교 졸업/대학교 졸업/대학원 졸업)--%>
                                    <fieldset class="row mb-3">
                                        <div class="row mb-3 align-items-left">
                                            <label for="lastAcbg" class="col-sm-2 col-form-label">최종학력<span class="required">*</span></label>
                                            <div class="col-sm-7">
                                                <div class="row">
                                                    <div class="col-sm-5">
                                                        <div class="form-check">
                                                            <input class="form-check-input" type="radio" id="lastAcbg-high" name="lastAcbg" value="고등학교 졸업" required>
                                                            <label class="form-check-label" for="lastAcbg-high">고등학교 졸업</label>
                                                        </div>
                                                        <div class="form-check">
                                                            <input class="form-check-input" type="radio" id="lastAcbg-bachelor" name="lastAcbg" value="대학교 졸업" required
                                                            <label class="form-check-label" for="lastAcbg-bachelor">대학교 졸업</label>
                                                        </div>
                                                        <div class="form-check">
                                                            <input class="form-check-input" type="radio" id="lastAcbg-master" name="lastAcbg" value="대학원 졸업" required>
                                                            <label class="form-check-label" for="lastAcbg-master">대학원 졸업</label>
                                                        </div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                    </fieldset>
                                    <style>
                                        /* '다음페이지', '이전페이지' 버튼 CSS코드 */
                                        .btn-next {
                                            background-color: #22201e;
                                            border-color: white;
                                        }
                                        .btn-next:hover {
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
                                </section>

                                <section class="section" style="margin-top: 50px; margin-bottom: 60px;">

                                    <!-- 개인정보 동의 안내 문구 -->
                                    <fieldset>
                                        <legend>개인정보보호정책</legend>
                                        <div class="row mb-3">
                                            <div class="col-sm-12 text-center">
                                                <textarea class="form-control" style="height: 200px; white-space: pre-line" >한국예술학교 (이하 'KAS'는) 고객님의 개인정보를 중요시하며, "정보통신망 이용촉진 및 정보보호"에 관한 법률을 준수하고 있습니다.
KAS는 개인정보취급방침을 통하여 고객님께서 제공하시는 개인정보가 어떠한 용도와 방식으로 이용되고 있으며, 개인정보보호를 위해 어떠한 조치가 취해지고 있는지 알려드립니다.

KAS는 개인정보취급방침을 개정하는 경우 웹사이트 공지사항(또는 개별공지)을 통하여 공지할 것입니다.

ο 본 방침은 : 2020 년 03 월 01 일 부터 시행됩니다.

■ 수집하는 개인정보 항목
KAS는 수강신청을 위해 아래와 같은 개인정보를 수집하고 있습니다.
수집항목 : 이름, 생년월일, 성별, 자택 전화번호, 자택 주소, 휴대전화번호, 이메일, 쿠키, 최종학교, 최종학력, 지원경로
재직자 교육 : 위 수집항목 포함, 사업장명, 사업장 대표자, 업태, 종목, 사업장 전화, 팩스번호, 사업장 주소, 상시근로자 수, 수강료 환급 계좌정보
개인정보 수집방법 : 홈페이지(수강신청)

■ 개인정보의 수집 및 이용목적
KAS는 수집한 개인정보를 다음의 목적을 위해 활용합니다.

회원 관리

회원제 서비스 이용에 따른 본인확인, 개인 식별 , 불량회원의 부정 이용 방지와 비인가 사용 방지, 가입 의사 확인, 연령확인, 불만처리 등 민원처리, 고지사항 전달
마케팅 및 광고에 활용

이벤트 등 광고성 정보 전달, 접속 빈도 파악 또는 회원의 서비스 이용에 대한 통계

■ 개인정보의 보유 및 이용기간
원칙적으로, 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체 없이 파기합니다. 단, 관계법령의 규정에 의하여 보존할 필요가 있는 경우 KAS는 아래와 같이 관계법령에서 정한 일정한 기간 동안 회원정보를 보관합니다.

보존 항목 : 온라인입학신청 내용
보존 기간 : 3년

■ 개인정보의 파기절차 및 방법
KAS는 원칙적으로 개인정보 수집 및 이용목적이 달성된 후에는 해당 정보를 지체없이 파기합니다. 파기절차 및 방법은 다음과 같습니다.

파기절차

회원님이 회원가입 등을 위해 입력하신 정보는 목적이 달성된 후 별도의 DB로 옮겨져(종이의 경우 별도의 서류함) 내부 방침 및 기타 관련 법령에 의한 정보보호 사유에 따라(보유 및 이용기간 참조) 일정 기간 저장된 후 파기되어집니다.
별도 DB로 옮겨진 개인정보는 법률에 의한 경우가 아니고서는 보유되어지는 이외의 다른 목적으로 이용되지 않습니다.
파기방법

전자적 파일형태로 저장된 개인정보는 기록을 재생할 수 없는 기술적 방법을 사용하여 삭제합니다.

■ 개인정보에 관한 민원서비스
귀하께서는 KAS의 서비스를 이용하시며 발생하는 모든 개인정보보호 관련 민원을 Q&A게시판으로 신고하실 수 있습니다.
KAS는 이용자들의 신고사항에 대해 신속하게 충분한 답변을 드릴 것입니다.
기타 개인정보침해에 대한 신고나 상담이 필요하신 경우에는 아래 기관에 문의하시기 바랍니다.

개인분쟁조정위원회 (www.1336.or.kr/1336)
정보보호마크인증위원회 (www.eprivacy.or.kr/02-580-0533~4)
대검찰청 인터넷범죄수사센터 (http://icic.sppo.go.kr/02-3480-3600)
경찰청 사이버테러대응센터 (www.ctrc.go.kr/02-392-0330)
                                                    </textarea>
                                            </div>
                                        </div>
                                        <div class="row mb-3">
                                            <div class="text-center">
                                                <input type="checkbox" id="agree" name="agree" value="동의" />
                                                <label for="agree" class="me-2">개인정보 수집,이용에 동의합니다.</label>
                                            </div>
                                        </div>
                                    </fieldset>
                                </section>

                                <div class="col-lg-12" >
                                    <label class="col-sm-2 col-form-label "></label>
                                    <div class="main-button-black text-center form-group">
                                        <button type="submit" class="btn btn-dark btn-next">다음페이지</button>
                                        <button type="button" onclick="goToMain()" class="btn btn-outline-dark btn-previous">취소</button>

                                        <script>
                                            function goToMain() {
                                                window.location.href = "/main";
                                            }
                                        </script>
                                    </div>
                                </div>
                            </main><!-- End #main -->
                        </form>
                    </div>
                </div>
            </main>
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

<script src="https://cdnjs.cloudflare.com/ajax/libs/cleave.js/1.6.0/cleave.min.js"></script>
<script>
    document.addEventListener('DOMContentLoaded', function () {
        const submitButton = document.querySelector('.btn-next');
        const agreeCheckbox = document.getElementById('agree');

        function toggleSubmitButton() {
            submitButton.disabled = !agreeCheckbox.checked;
        }

        toggleSubmitButton();

        agreeCheckbox.addEventListener('change', toggleSubmitButton);

        document.getElementById('applicationForm').addEventListener('submit', function (event) {
            if (!agreeCheckbox.checked) {
                event.preventDefault();
                alert('개인정보 수집, 이용에 동의해야 합니다.');
            }
        });
    });
</script>
<script>
    document.addEventListener('DOMContentLoaded', function () {
        const submitButton = document.querySelector('.btn-next');

        submitButton.addEventListener('click', function (event) {
            event.preventDefault();
            const form = document.getElementById('applicationForm');

            if (form.checkValidity()) {
                if (confirm('정말 다음 단계로 이동하시겠습니까? (이동한 후에는 인적사항 정보에 대한 수정이 불가능합니다.)')) {
                    form.submit();
                }
            } else {
                form.reportValidity();
            }
        });
    });
</script>
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
<form:form modelAttribute="item" action="register" enctype="multipart/form-data">
    <table>
        <tr>
            <td>파일</td>
            <td><input type="file" name="picture"/></td>
        </tr>
    </table>
</form:form>

<div>
    <button type="submit" id="btnRegister">등록</button>
    <button type="submit" id="btnList">리스트</button>
</div>

</body>
<script>
    $(document).ready(function() {
        var emailChecked = false;

        $("#checkEmailButton").click(function () {
            var aplEmail = $("#aplEmail").val();
            console.log("Checking email: " + aplEmail);
            if (aplEmail) {
                $.ajax({
                    url: '/apply/check_email',
                    type: 'GET',
                    data: {aplEmail: aplEmail},
                    success: function (response) {
                        console.log("Server response: " + response);
                        if (response) {
                            $("#emailCheckResult").text("이메일이 중복됩니다. 다른 이메일을 입력하세요.");
                            $("#emailCheckResult").css("color", "red");
                            emailChecked = false;
                        } else {
                            $("#emailCheckResult").text("사용 가능한 이메일입니다.");
                            $("#emailCheckResult").css("color", "green");
                            emailChecked = true;
                        }
                    },
                    error: function (jqXHR, textStatus, errorThrown) {
                        console.error("AJAX error: " + textStatus + ", " + errorThrown);
                        $("#emailCheckResult").text("이메일 확인 중 오류가 발생했습니다.");
                        $("#emailCheckResult").css("color", "red");
                        emailChecked = false;
                    }
                });
            } else {
                $("#emailCheckResult").text("이메일을 입력해주세요.");
                $("#emailCheckResult").css("color", "red");
                emailChecked = false;
            }
        });
    });
</script>
<script>
    function checkPasswordMatch() {
        var password = document.getElementById("pswd").value;
        var confirmPassword = document.getElementById("pswd-validate").value;

        var matchMessage = document.getElementById("password-match-message");
        var lengthMessage = document.getElementById("password-length-message");

        if (password === confirmPassword) {
            matchMessage.innerHTML = "비밀번호 일치";
            matchMessage.style.color = "green";
        } else {
            matchMessage.innerHTML = "비밀번호 불일치";
            matchMessage.style.color = "red";
        }

        if (password.length >= 8) {
            lengthMessage.innerHTML = "";
        } else {
            lengthMessage.innerHTML = "비밀번호는 8자 이상이어야 합니다.(영문 소문자, 숫자 1개 이상 입력 필수)";
        }
    }

    document.getElementById("pswd").addEventListener("input", function() {
        var password = document.getElementById("pswd").value;
        var confirmPassword = document.getElementById("pswd-validate").value;

        if (password !== "" || confirmPassword !== "") {
            checkPasswordMatch();
        } else {
            document.getElementById("password-match-message").innerHTML = "";
            document.getElementById("password-length-message").innerHTML = "";
        }
    });

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
    function goPopup(){
        var pop = window.open("/jusoPopup","pop","width=570,height=420, scrollbars=yes, resizable=yes");
    }

    function jusoCallBack(roadAddrPart1, addrDetail){
        var addressEl1 = document.querySelector("#address");
        var addressEl2 = document.querySelector("#addressDetail");
        addressEl1.value = roadAddrPart1;
        addressEl2.value = addrDetail;
    }
</script>
</body>
</html>