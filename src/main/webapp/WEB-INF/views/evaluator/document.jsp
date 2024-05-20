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
					<%--<li>기수</li>
					<li>
						<select name="year">
							<option value="0">전체</option>
							<option value="30">3기</option>
							<option value="40">4기</option>
						</select>
					</li>--%>
					<li>모집전형</li>
					<li>
						<select name="rcrt">
							<option value="0">전체</option>
							<option value="20">일반전형</option>
							<option value="10">특기생전형</option>
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
				<%--<ul>
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
				</ul>--%>
			</div>
			</form>
			<div class="인원박스">
				총 담당 인원 : N명 평가완료인원 : N명
			</div>

			<div class="심사인원박스">
				담당 과정 선택
				<div class = "옵션박스">
					<form method="post" action="insertScore">
						<input type="hidden" name="applicantCount" value="${fn:length(evaluateApplicantScore)}">
						<input type="submit" value="저장">
						<table name="applicantTable">
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
							<c:forEach var="evaluateApplicantScore" items="${evaluateApplicantScore}" varStatus="loop">
								<tr>
									<td>
										<input type="checkbox" name="apl_ck_${loop.index}" id="apl_ck_${loop.index}"
											   onchange="evlChecked('apl_ck_${loop.index}', ${loop.index})"
											   <c:if test="${evaluateApplicantScore.IS_EVALUATED} == 'Y'">checked</c:if>
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
										<c:if test="${evaluateApplicantScore.DEPT_CD == 10}"> 시각디자인</c:if>
										<c:if test="${evaluateApplicantScore.DEPT_CD == 20}"> 무대영화미술</c:if>
										<c:if test="${evaluateApplicantScore.DEPT_CD == 30}"> 연기</c:if>
										<c:if test="${evaluateApplicantScore.DEPT_CD == 40}"> 모델</c:if>
										<c:if test="${evaluateApplicantScore.DEPT_CD == 50}"> 보컬</c:if>
										<c:if test="${evaluateApplicantScore.DEPT_CD == 60}"> 싱어송라이터</c:if>
									</td>
									<td><input type="button" value="확인"></td>
									<td><input type="button" value="확인"></td>
									<td>
										<input type="number" name="score1_${loop.index}" id="score1_${loop.index}" value="0" oninput="calculateTotal(${loop.index})">
									</td>
									<td>
										<input type="number" name="score2_${loop.index}" id="score2_${loop.index}" value="0" oninput="calculateTotal(${loop.index})">
									</td>
									<td id="totalScore_${loop.index}">0점</td>
									<td id="evlChecked_${loop.index}">평가중</td>
									<input type="hidden" name="evl_stg_no_${loop.index}" value="${evaluateApplicantScore.EVL_STG_NO}">
									<input type="hidden" name="rcrt_no_${loop.index}" value="${evaluateApplicantScore.RCRT_NO}">
									<input type="hidden" name="evl_no_${loop.index}" value="${evaluateApplicantScore.EVL_NO}">
									<input type="hidden" name="apl_no_${loop.index}" value="${evaluateApplicantScore.APL_NO}">
								</tr>
							</c:forEach>
						</table>
					</form>
				</div>

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
<script>
	function calculateTotal(index) {
		var score1 = parseInt(document.getElementById('score1_' + index).value) || 0;
		var score2 = parseInt(document.getElementById('score2_' + index).value) || 0;
		var total = score1 + score2;
		document.getElementById('totalScore_' + index).textContent = total + '점';
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