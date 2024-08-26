<%@ page contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
    <title>메인</title>
    <style>
        /* 토글 버튼 스타일 */
        .toggle-btn {
            cursor: pointer;
            width: 50px;
            height: 25px;
            border-radius: 25px;
            background-color: grey;
            position: relative;
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
<form action="/admin/stepevaluation" method="post">
    <select id="yearCd" name="yearCd">
        <option value="10">2021</option>
        <option value="20">2022</option>
        <option value="30">2023</option>
        <option value="40">2024</option>
    </select>
    계열
    <select id="dept" name="dept">
        <option value="10">디자인</option>
        <option value="20">연기</option>
        <option value="30">음악</option>
    </select>
    학과
    <select id="deptCd" name="deptCd">
        <option value="10">시각디자인</option>
        <option value="20">무대영화미술</option>
        <option value="30">연기</option>
        <option value="40">모델</option>
        <option value="50">보컬</option>
        <option value="60">싱어송라이터</option>
    </select>
    정원구분
    <select id="rcrtCd" name="rcrtCd">
        <option value="10">일반</option>
        <option value="20">특기생</option>
    </select>
    <button id="getAppliantButton" type="submit">조회하기</button>
</form>
<form id="passForm" method="post" action="/updatePass">
    <table border="1">
        <thead>
        <tr>
            <th hidden="hidden"></th>
            <th>지원자 번호</th>
            <th>지원자 이름</th>
            <th>성별</th>
            <th>점수</th>
            <th>순위</th>
            <th>합격여부</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="stageApplicant" items="${stageApplicantList}">
            <tr>
                <td hidden="hidden" >${stageApplicant.rcrtNo}</td>
                <td>${stageApplicant.aplNo}</td>
                <td>${stageApplicant.aplNm}</td>
                <td>${stageApplicant.gndrCd}</td>
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
    총 응시자수 : ${applicantCount}
</form>



<%--<a href="executeEvaluation">확인</a>--%>
<%--<!-- 버튼 추가 -->--%>
<button id="executeEvaluationButton" onclick="executeEvaluation()">평가 실행</button>


<script>
    // 실행 버튼 클릭 시 평가 실행
    function executeEvaluation() {
        // 테이블에서 첫 번째 행을 선택하고 그 안의 td 요소를 찾아서 해당 값(rcrtNo)을 가져옴
        var rcrtNo = document.querySelector('table tbody tr:first-child td:first-child').textContent;

        // 만약 값이 없거나 비어있다면 알림을 표시하고 함수 종료
        if (!rcrtNo.trim()) {
            alert("평가할 데이터가 없습니다.");
            return;
        }

        // XMLHttpRequest를 사용하여 rcrtNo를 서버에 전송
        var xhr = new XMLHttpRequest();
        xhr.open("POST", "/executeEvaluation", true);
        xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        xhr.onreadystatechange = function() {
            if (this.readyState === XMLHttpRequest.DONE && this.status === 200) {
                alert("평가가 성공적으로 실행되었습니다.");
                location.reload(); // 평가 실행 후 페이지 새로고침
            }
        };
        // rcrtNo를 데이터로 전송
        xhr.send("rcrtNo=" + encodeURIComponent(rcrtNo));
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
                } else {
                    // 요청이 실패하면 토글 버튼을 다시 활성화
                    var toggleBtn = document.querySelector('.toggle-btn[data-evlstgno="' + aplNo + '"]');
                    toggleBtn.classList.remove('inactive');

                    // 알림 창 표시
                    alert("서버 오류로 인해 합격 여부를 업데이트할 수 없습니다.");
                }
            }
        };
        xhr.send("aplNo=" + encodeURIComponent(aplNo) + "&firstPassYn=" + encodeURIComponent(newFirstPassYn));
    }

</script>

</body>
</html>