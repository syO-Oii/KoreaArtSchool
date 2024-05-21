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
                    <a href="" class="logo">
                        한국예술학교
                    </a>
                    <!-- ***** Menu Start ***** -->
                    <ul class="nav">
                        <li class="scroll-to-section"><a href="apply.jsp" class="active">원서접수</a></li>
                        <li><a href="meetings.jsp">공지사항</a></li>
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
            <main id="main" class="main">
                <div class="card">
                    <div class="card-body">

                        <!-- General Form Elements -->
                        <form id="applicationForm" action="/submit" method="post">
                            <main id="main" class="main">
                                <fieldset class="row mb-3 ">
                                    <style>
                                        legend {
                                            font-weight: bold; /* 텍스트 bold */
                                            font-size: 1.5em; /* 텍스트 크기 1.5em으로 설정 */
                                            text-align: center;
                                        }
                                    </style>
                                    <legend>지원자 인적사항</legend>
                                </fieldset>

                                <section class="section">
                                    <!-- 이름 -->
                                    <div class="row mb-3">
                                        <label for="aplName" class="col-sm-2 col-form-label">이름<span class="required">*</span></label>            <!-- 아래의 id값과 같아야 함 -->
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
                                                        <input class="form-check-input" type="radio" id="male"  name="gndrCode" value="남자" checked="checked">
                                                        <label class="form-check-label" for="male">남자</label>
                                                    </div>
                                                </div>
                                                <div class="col-sm-3">
                                                    <div class="form-check">
                                                        <input class="form-check-input" type="radio" id="female" name="gndrCode" value="여자">
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
                                            <input type="text" class="form-control input-element" id="aplBirthDay" name="aplBirthDay" required/>
                                        </div>
                                    </div>

                                    <!-- 비밀번호 -->
                                    <div class="row mb-3">
                                        <label for="pswd" class="col-sm-2 col-form-label">비밀번호<span class="required">*</span></label>
                                        <div class="col-sm-7">
                                            <input type="password" class="form-control" id="pswd" name="pswd" oninput="checkPasswordMatch(); checkPasswordLength()" required/>
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
                                    <%-- 만아래 js스크립트로 하나로 합침--%>
                                    <div class="row mb-3">
                                        <label for="aplTelNumber" class="col-sm-2 col-form-label">휴대폰번호<span class="required">*</span></label>
                                        <div class="col-sm-7">
                                            <div class="row g-2">
                                                <div class="col">
                                                    <div class="input-group">
                                                        <input class="form-control" type="text" id="tel1" maxLength="3" pattern="01[0-9]{1}" onkeyup="next(this, 'tel2');" onkeydown="checkNum(event, this)" required/>
                                                    </div>
                                                </div>
                                                <div class="col">
                                                    <div class="input-group">
                                                        <input class="form-control" type="text" id="tel2" maxLength="4" pattern="[0-9]{4}" onkeyup="next(this, 'tel3');" onkeydown="checkNum(event, this)" required/>
                                                    </div>
                                                </div>
                                                <div class="col">
                                                    <input class="form-control" type="text" id="tel3" maxLength="4" pattern="[0-9]{4}" onkeydown="checkNum(event, this)" required/>
                                                </div>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- 숨겨진 필드로 휴대폰번호 전송 -->
                                    <input type="hidden" id="aplTelNumber" name="aplTelNumber">


                                    <!-- 이메일 -->
                                    <div class="row mb-3">
                                        <label for="aplEmail" class="col-sm-2 col-form-label">이메일<span class="required">*</span></label>
                                        <div class="col-sm-7">
                                            <div class="input-group">
                                                <input type="email" class="form-control" id="aplEmail" name="aplEmail" required/>
                                                <button class="btn btn-outline-secondary">이메일 확인</button>
                                            </div>
                                        </div>
                                    </div>



                                    <!-- 증명사진 -->
                                    <div class="row mb-3">
                                        <label for="aplImg" class="col-sm-2 col-form-label">증명사진<span class="required">*</span></label>
                                        <div class="col-sm-7">
                                            <input class="form-control" type="file" id="aplImg" name="aplImg" required/>
                                        </div>
                                    </div>



                                    <!-- 주소 -->
                                    <div class="row mb-3">
                                        <label for="address" class="col-sm-2 col-form-label">주소<span class="required">*</span></label>            <!-- 아래의 id값과 같아야 함 -->
                                        <div class="col-sm-7">
                                            <div class="input-group">
                                                <input type="text" class="form-control" id="address" name="address" minlength="2" maxlength="11" required/>
                                                <button class="btn btn-outline-secondary">주소 찾기</button>
                                            </div>
                                        </div>
                                    </div>

                                    <!-- 상세주소 -->
                                    <div class="row mb-3">
                                        <label for="addressDetail" class="col-sm-2 col-form-label">상세주소<span class="required">*</span></label>            <!-- 아래의 id값과 같아야 함 -->
                                        <div class="col-sm-7">
                                            <input type="text" class="form-control" id="addressDetail" name="addressDetail" required minlength="2" required/>
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
                                                            <input class="form-check-input" type="radio" id="lastAcbg-high" name="lastAcbg" value="고등">
                                                            <label class="form-check-label" for="lastAcbg-high">고등학교 졸업</label>
                                                        </div>
                                                        <div class="form-check">
                                                            <input class="form-check-input" type="radio" id="lastAcbg-bachelor" name="lastAcbg" value="학사">
                                                            <label class="form-check-label" for="lastAcbg-bachelor">대학교 졸업</label>
                                                        </div>
                                                        <div class="form-check">
                                                            <input class="form-check-input" type="radio" id="lastAcbg-master" name="lastAcbg" value="석사">
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
                                            background-color: #22201e; /* 다음페이지 버튼의 배경색 */
                                            border-color: white;
                                        }
                                        .btn-next:hover {
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
                                </section>

                                <section class="section" style="margin-top: 50px; margin-bottom: 60px;">

                                    <!-- 개인정보 동의 안내 문구 -->
                                    <fieldset>
                                        <legend>개인정보보호정책</legend>
                                        <div class="row mb-3">
                                            <div class="col-sm-12 text-center"> <!-- col-sm-12를 사용하여 전체 폭을 차지하고, text-center 클래스를 사용하여 가운데 정렬 -->
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
                                            <div class="text-center"> <!-- 가운데 정렬 -->
                                                <input type="checkbox" id="agree" name="agree" value="동의" />
                                                <label for="agree" class="me-2">개인정보 수집,이용에 동의합니다.</label>

                                            </div>
                                        </div>
                                    </fieldset>
                                </section>

                                <div class="col-lg-12" >
                                    <label class="col-sm-2 col-form-label "></label>
                                    <div class="main-button-black text-center form-group">
                                        <button type="submit" class="btn btn-primary btn-next">다음페이지</button>
                                        <button type="button" onclick="goToMain()" class="btn btn-outline-primary btn-previous">취소</button>

                                        <script>
                                            function goToMain() {
                                                window.location.href = "/main"; // 메인 페이지 URL로 이동
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
        </div>
    </div>
</section>

<!-- Modal -->
<div class="modal fade" id="myModal" tabindex="-1" role="dialog" aria-labelledby="myModalLabel" aria-hidden="true">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <h5 class="modal-title" id="myModalLabel">알림</h5>
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
            </div>
            <div class="modal-body">
                필수 항목에 동의하셔야 합니다.
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
            </div>
        </div>
    </div>
</div>

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