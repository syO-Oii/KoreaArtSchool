<!DOCTYPE html>
<html lang="ko">
<head>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<meta charset="UTF-8">
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
			<div class="과정박스">
				담당 과정 선택 <input type="button" value="조회">
				<ul>
					<li>기수</li>
					<li>
						<select name="기수">
							<option value="3기">3기</option>
							<option value="4기">4기</option>
						</select>
					</li>
					<li>모집전형</li>
					<li>
						<select name="모집전형">
							<option value="일반">일반전형</option>
							<option value="특기생">특기생전형</option>
						</select>
					</li>
				</ul>
				<ul>
					<li>모집계열</li>
					<li>
						<select name="모집계열">
							<option value="디자인">디자인</option>
							<option value="연기">연기</option>
							<option value="음악">음악</option>
						</select>
					</li>
					<li>모집학과</li>
					<li>
						<select name="모집학과">
							<option value="시각디자인">시각디자인</option>
							<option value="무대영화미술">무대영화미술</option>
							<option value="연기">연기</option>
							<option value="모델">모델</option>
							<option value="보컬">보컬</option>
							<option value="싱어송라이터">싱어송라이터</option>
						</select>
					</li>
				</ul>
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