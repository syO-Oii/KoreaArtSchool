<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>

<!DOCTYPE html>
<html lang="ko">
<head>
	<%@ page language="java" contentType="text/html; charset=UTF-8"
			 pageEncoding="UTF-8"%>
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<title>서류평가</title>

	<meta charset="utf-8">
	<meta content="width=device-width, initial-scale=1.0" name="viewport">

	<title>Forms / Elements - NiceAdmin Bootstrap Template</title>
	<meta content="" name="description">
	<meta content="" name="keywords">

	<!-- Favicons -->
	<link href="/assets/img/favicon.png" rel="icon">
	<link href="/assets/img/apple-touch-icon.png" rel="apple-touch-icon">

	<!-- Google Fonts -->
	<link href="https://fonts.gstatic.com" rel="preconnect">
	<link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

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
<%-- 헤더 시작 --%>
<div class="headerDiv">
	<!-- ======= Header ======= -->
	<header id="header" class="header fixed-top d-flex align-items-center">

		<div class="d-flex align-items-center justify-content-between">
			<a href="/evaluator" class="logo d-flex align-items-center">
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
							<h6>평가위원</h6>
						</li>
						<li>
							<hr class="dropdown-divider">
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
</div>
<%-- 헤더 종료 --%>
<!-- 사이드바 시작 -->
<aside id="sidebar" class="sidebar">

	<ul class="sidebar-nav" id="sidebar-nav">

		<li class="nav-item">
			<a class="nav-link " href="/evaluator/progress">
				<i class="bi bi-grid"></i>
				<span>평가진행현황</span>
			</a>
		</li><!-- End Dashboard Nav -->

		<li class="nav-item">
			<a class="nav-link collapsed" href="evl_document">
				<i class="bi bi-journal-text"></i>
				<span>서류평가</span>
			</a>
		</li><!-- 서류평가 끝 -->

		<li class="nav-item">
			<a class="nav-link collapsed" href="evl_practical">
				<i class="bi bi-journal-text"></i>
				<span>실기평가</span>
			</a>
		</li><!-- 실기평가 끝 -->

		<li class="nav-item">
			<a class="nav-link collapsed" href="evl_interview">
				<i class="bi bi-journal-text"></i>
				<span>면접평가</span>
			</a>
		</li><!-- 면접평가 끝 -->


		<li class="nav-item">
			<a class="nav-link collapsed" href="users-profile.html">
				<i class="bi bi-person"></i>
				<span>내정보관리</span>
			</a>
		</li><!-- 프로필 보기 끝 -->
	</ul>
</aside><!-- End Sidebar-->
<!-- 사이드바 종료 -->



<%-- 메인 시작 --%>
<main id="main" class="main">
	<section class="section">
		<h2 class="pagetitle">서류평가</h2>
		<div class="row">
			<!-- 학과, 전형 선택 박스 시작 -->
			<div class="col-lg-12">
				<div class="card">
					<div class="card-body">
						<h5 class="card-title">과정선택</h5>

						<!-- 옵션 선택 Form -->
						<form method="get" action="/evaluator/selectOption">
							<input type="hidden" name="currentUrl" value="/evl_document">
							<input type="hidden" name="evaluateStage" value="10">
							<div class="row mb-3">
								<!-- 학과 선택 리스트 -->
								<label class="col-sm-1 col-form-label">학과 선택</label>
								<div class="col-sm-2">
									<select name="department" class="form-select" aria-label="Default select example">
										<option value="0" selected>선택해주세요</option>
										<option value="10">시각디자인</option>
										<option value="20">무대영화미술</option>
										<option value="30">연기</option>
										<option value="40">모델</option>
										<option value="50">보컬</option>
										<option value="60">싱어송라이터</option>
									</select>
								</div>

								<!-- 모집 전형 리스트 -->
								<label class="col-sm-1 col-form-label">모집전형</label>
								<div class="col-sm-2">
									<select name="recruitment" class="form-select" aria-label="Default select example">
										<option value="0" selected>선택해주세요</option>
										<option value="10">일반전형</option>
										<option value="20">특기생전형</option>
									</select>
								</div>

								<!-- selectOption form submit 버튼 -->
								<div class="col-sm-2">
									<button class="btn btn-primary" type="submit">조회</button>
								</div>
							</div>
						</form>
					</div>
				</div>
			</div>
			<!-- 학과, 전형 선택 박스 종료 -->

			<!-- 학생 정보 박스 시작 -->
			<div class="col-lg-12">
				<div class="card">
					<div class="card-body">
						<!-- 학생 정보 테이블 -->
						<form method="post" action="/evaluator/insertScore">
							<input type="hidden" name="applicantCount" value="${fn:length(evaluateApplicantScore)}">
							<input type="hidden" name="evaluateStage" value="10">
							<!-- 저장버튼 -->
							<div class="col-sm-2">
								<input type="submit" class="btn btn-primary" value="저장">
							</div>

							<table class="table">
								<thead>
								<tr>
									<td>선택</td>
									<td>이름</td>
									<td>학과</td>
									<td>지원서조회</td>
									<td>제출서류조회</td>
									<td>문항1번</td>
									<td>문항2번</td>
									<td>합계</td>
									<td>평가여부</td>
								</tr>
								</thead>
								<tbody>
								<c:forEach var="evaluateApplicantScore" items="${evaluateApplicantScore}" varStatus="loop">
									<tr>
										<td>
											<input type="checkbox" name="apl_ck_${loop.index}" id="apl_ck_${loop.index}"
												   onchange="evlChecked('apl_ck_${loop.index}', ${loop.index})"
											<c:choose>
												   <c:when test="${evaluateApplicantScore.IS_EVALUATED eq 'Y'}">checked="checked"</c:when>
											</c:choose>
											>
											<input type="hidden" name="is_evaluated_${loop.index}" id="is_evaluated_${loop.index}"
												   value="${evaluateApplicantScore.IS_EVALUATED}">
										</td>

										<td>
											<input type="hidden" name="apl_nm_${loop.index}" value="${evaluateApplicantScore.APL_NM}">
												${evaluateApplicantScore.APL_NM}
										</td>
										<td>
											<input type="hidden" name="dept_cd_${loop.index}" value="${evaluateApplicantScore.DEPT_CD}">
											<c:if test="${evaluateApplicantScore.DEPT_CD eq '10'}"> 시각디자인</c:if>
											<c:if test="${evaluateApplicantScore.DEPT_CD eq '20'}"> 무대영화미술</c:if>
											<c:if test="${evaluateApplicantScore.DEPT_CD eq '30'}"> 연기</c:if>
											<c:if test="${evaluateApplicantScore.DEPT_CD eq '40'}"> 모델</c:if>
											<c:if test="${evaluateApplicantScore.DEPT_CD eq '50'}"> 보컬</c:if>
											<c:if test="${evaluateApplicantScore.DEPT_CD eq '60'}"> 싱어송라이터</c:if>
										</td>
										<td><input type="button" value="확인"></td>
										<td><input type="button" value="확인"></td>
										<td>
											<input type="number" name="score1_${loop.index}" id="score1_${loop.index}" value="${evaluateApplicantScore.SCORE1}" oninput="calculateTotal(${loop.index})">
										</td>
										<td>
											<input type="number" name="score2_${loop.index}" id="score2_${loop.index}" value="${evaluateApplicantScore.SCORE2}" oninput="calculateTotal(${loop.index})">
										</td>
										<td id="totalScore_${loop.index}">0점</td>
										<td id="evlChecked_${loop.index}">
											<c:choose>
												<c:when test="${evaluateApplicantScore.IS_EVALUATED eq 'Y'}">평가완료</c:when>
												<c:otherwise>평가중</c:otherwise>
											</c:choose>
										</td>
										<input type="hidden" name="evl_stg_no_${loop.index}" value="${evaluateApplicantScore.EVL_STG_NO}">
										<input type="hidden" name="rcrt_no_${loop.index}" value="${evaluateApplicantScore.RCRT_NO}">
										<input type="hidden" name="evl_no_${loop.index}" value="${evaluateApplicantScore.EVL_NO}">
										<input type="hidden" name="apl_no_${loop.index}" value="${evaluateApplicantScore.APL_NO}">
										<input type="hidden" name="evl_stg_cd_${loop.index}" value="${evaluateApplicantScore.EVL_STG_CD}">
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

</main>


<!-- ======= Footer 시작 ======= -->
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
</footer><!-- Footer 종료 -->

<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

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





</body>
<script>
	window.onload = function() {
		// 페이지가 로드될 때 모든 입력란의 합계를 계산
		var inputElements = document.querySelectorAll('input[type="number"]');
		inputElements.forEach(function(inputElement) {
			// 인덱스 가져오기
			var index = inputElement.id.split('_')[1];
			calculateTotal(index);
		});
	};
	function calculateTotal(index) {
		var score1Input = document.getElementById('score1_' + index);
		var score2Input = document.getElementById('score2_' + index);
		var totalScoreElement = document.getElementById('totalScore_' + index);

		// 기존 값과 새로운 값 가져오기
		var score1 = parseInt(score1Input.value) || 0;
		var score2 = parseInt(score2Input.value) || 0;

		// 기존 값이 있을 때만 합계 계산
		var originalScore1 = parseInt(score1Input.getAttribute('data-original-value')) || 0;
		var originalScore2 = parseInt(score2Input.getAttribute('data-original-value')) || 0;

		// 입력된 값이나 기존 값 중에서 최종 합계 계산
		var total = (isNaN(score1) ? originalScore1 : score1) + (isNaN(score2) ? originalScore2 : score2);

		// 합계 업데이트
		totalScoreElement.textContent = total + '점';
	}

	function evlChecked(id, index) {
		var isChecked = document.getElementById(id).checked;
		var evlCheckedElement = document.getElementById('evlChecked_' + index);
		var isEvaluatedElement = document.getElementById('is_evaluated_' + index);

		if (isChecked) {
			evlCheckedElement.textContent = "평가완료";
			isEvaluatedElement.value = "Y";
		} else {
			evlCheckedElement.textContent = "평가중";
			isEvaluatedElement.value = "N";
		}
	}
</script>
</html>
