<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>서류평가</title>


	<script>
	function calculateTotal(id) {
		var score1 = parseInt(document.getElementById(id).value) || 0;
		var index = id.split('_')[1];
		var score2 = parseInt(document.getElementById('score2_' + index).value) || 0;
		var total = score1 + score2;
		document.getElementById('totalScore_' + index).textContent = total + '점';
	}

	function evlChecked(id) {
		var isChecked = document.getElementById(id).checked;
		var index = id.split('_')[1];
		var evlCheckedElement = document.getElementById('evlChecked_' + index);
		if (isChecked) {
			evlCheckedElement.textContent = "평가완료";
		} else {
			evlCheckedElement.textContent = "진행중";
		}
	}
</script>

</head>

<body>
<%-- 사이드바 시작 --%>
<div class="sidebar">
	<ul>
		<li><a href="evl_document">서류평가</a></li>
		<li><a href="evl_practical">실기평가</a></li>
		<li><a href="evl_interview">면접평가</a></li>
		<li><a href="/">메인메뉴</a></li>
	</ul>
</div>
<%-- 사이드바 종료 --%>

<%-- 헤더 시작 --%>
<div class="headerDiv">

</div>
<%-- 헤더 종료 --%>

<%-- 메인 시작 --%>
<div class="mainDIv">
	<div class="mainContents">
		<div class="과정선택">
			<h2>서류평가</h2>

			<%--  --%>
			<form method="get" action="selectOption">
			<div class="과정박스">
				담당 과정 선택 <input type="submit" value="조회">
				<ul>
					<li>기수</li>
					<li>
						<select name="year">
							<option value="0">전체</option>
							<option value="30">3기</option>
							<option value="40">4기</option>
						</select>
					</li>
					<li>모집전형</li>
					<li>
						<select name="rcrt">
							<option value="0">전체</option>
							<option value="10">특기생전형</option>
							<option value="20">일반전형</option>
						</select>
					</li>
				</ul>
				<ul>
					<li>모집계열</li>
					<li>
						<select name="dept">
							<option value="0">전체</option>
							<option value="10">디자인</option>
							<option value="20">연기</option>
							<option value="30">음악</option>
						</select>
					</li>
					<li>모집학과</li>
					<li>
						<select name="deptNo">
							<option value="0">전체</option>
							<option value="10">시각디자인</option>
							<option value="20">무대영화미술</option>
							<option value="30">연기</option>
							<option value="40">모델</option>
							<option value="50">보컬</option>
							<option value="60">싱어송라이터</option>
						</select>
					</li>
				</ul>
			</div>
			</form>
			<div class="인원박스">
				총 담당 인원 : N명 평가완료인원 : N명
			</div>

			<div class="심사인원박스">
				담당 과정 선택
				<table>
					<tr>
						<td>선택</td>
						<td>이름</td>
						<td>학과</td>
						<td>지원서조회</td>
						<td>제출서류조회</td>
						<td>문항1번</td>
						<td>문항2번</td>
						<td>합계</td>
<%--						<td>심사평</td>--%>
						<td>평가여부</td>
					</tr>
					<c:forEach var="applicant" items="${applicant}" varStatus="loop">
						<tr>
							<%-- 체크박스마다 고유 번호를 만들어줌 --%>
							<td><input type="checkbox" id="apl_ck_${loop.index}" onchange="evlChecked('apl_ck_${loop.index}')"></td>
							<td>${applicant.apl_nm}</td>
							<td>
								<c:if test="${applicant.dept_cd == 10}"> 시각디자인</c:if>
								<c:if test="${applicant.dept_cd == 20}"> 무대영화미술</c:if>
								<c:if test="${applicant.dept_cd == 30}"> 연기</c:if>
								<c:if test="${applicant.dept_cd == 40}"> 모델</c:if>
								<c:if test="${applicant.dept_cd == 50}"> 보컬</c:if>
								<c:if test="${applicant.dept_cd == 60}"> 싱어송라이터</c:if>
							</td>
							<td><input type="button" value="확인"></td>
							<td><input type="button" value="확인"></td>
							<td><input type="text" id="score1_${loop.index}" oninput="calculateTotal('score1_${loop.index}')"></td>
							<td><input type="text" id="score2_${loop.index}" oninput="calculateTotal('score2_${loop.index}')"></td>
							<td id="totalScore_${loop.index}">0점</td>
							<td id="evlChecked_${loop.index}">평가중</td>
						</tr>
					</c:forEach>
				</table>
			</div>

		</div>
	</div>
</div>
<%-- 메인 종료 --%>

<%-- 푸터 시작 --%>
<div class="footerDiv">

</div>
<%-- 푸터 종료 --%>

</body>

</html>