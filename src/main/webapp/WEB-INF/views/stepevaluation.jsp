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
<form action="/" method="post">
    입학년도1
    <select id="aplPw" name="aplPw">
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
                <td>${stageApplicant.aplNo}</td>
                <td>${stageApplicant.aplNm}</td>
                <td>${stageApplicant.gndrCd}</td>
                <td>${stageApplicant.score}</td>
                <td>${stageApplicant.evlRank}</td>
                <!-- 각 지원자의 합격 여부를 나타내는 토글 버튼 -->
                <td class="pass-toggle">
                    <div class="toggle-btn ${stageApplicant.passYn eq 'Y' ? 'active' : 'inactive'}"
                         data-evlstgno="${stageApplicant.evlStgNo}"
                         onclick="togglePass('${stageApplicant.evlStgNo}', '${stageApplicant.passYn}')"></div>
                    <!-- 각 지원자의 합격 여부를 서버로 전송할 hidden input -->
                    <input type="hidden" id="passYn_${stageApplicant.evlStgNo}" name="passYn" value="${stageApplicant.passYn}">
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    총 응시자수 : ${applicantCount}
</form>

<script>
    // 토글 버튼 클릭 시 합격 여부 토글
    function togglePass(evlStgNo, currentPassYn) {
        var passYnInput = document.getElementById("passYn_" + evlStgNo);
        var newPassYn = currentPassYn === 'Y' ? 'N' : 'Y'; // 현재 상태를 반전
        passYnInput.value = newPassYn;

        // 토글 버튼 비활성화
        var toggleBtn = document.querySelector('.toggle-btn[data-evlstgno="' + evlStgNo + '"]');
        toggleBtn.classList.add('inactive');

        // AJAX 요청을 통해 서버에 업데이트
        var xhr = new XMLHttpRequest();
        xhr.open("POST", "/updatePass", true);
        xhr.setRequestHeader("Content-Type", "application/x-www-form-urlencoded");
        xhr.onreadystatechange = function() {
            if (this.readyState === XMLHttpRequest.DONE && this.status === 200) {
                // 요청이 성공적으로 처리되면 UI를 업데이트
                toggleBtn.classList.toggle('active', newPassYn === 'Y');
                toggleBtn.classList.toggle('inactive', newPassYn !== 'Y');

                // 알림 창 표시
                alert("합격 여부가 수정되었습니다.");

                // 페이지 새로고침
                location.reload();
            } else if (this.readyState === XMLHttpRequest.DONE) {
                // 요청이 실패하면 다시 활성화
                toggleBtn.classList.remove('inactive');
            }
        };
        xhr.send("evlStgNo=" + encodeURIComponent(evlStgNo) + "&passYn=" + encodeURIComponent(newPassYn));
    }
</script>
</body>
</html>
