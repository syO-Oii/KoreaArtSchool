<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta content="width=device-width, initial-scale=1.0" name="viewport">

    <title>KAS :: 한국예술학교 관리자페이지</title>
    <meta content="" name="description">
    <meta content="" name="keywords">

    <link href="/assets/admin/img/favicon.png" rel="icon">
    <link href="/assets/img/apple-touch-icon.png" rel="apple-touch-icon">
    <script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>

    <link href="https://fonts.gstatic.com" rel="preconnect">
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700,700i|Nunito:300,300i,400,400i,600,600i,700,700i|Poppins:300,300i,400,400i,500,500i,600,600i,700,700i" rel="stylesheet">

    <link href="/vendor/admin/bootstrap/css/bootstrap.min.css" rel="stylesheet">
    <link href="/vendor/admin/bootstrap-icons/bootstrap-icons.css" rel="stylesheet">
    <link href="/vendor/admin/boxicons/css/boxicons.min.css" rel="stylesheet">
    <link href="/vendor/admin/quill/quill.snow.css" rel="stylesheet">
    <link href="/vendor/admin/quill/quill.bubble.css" rel="stylesheet">
    <link href="/vendor/admin/remixicon/remixicon.css" rel="stylesheet">
    <link href="/vendor/admin/simple-datatables/style.css" rel="stylesheet">

    <link href="/assets/admin/css/style1.css" rel="stylesheet">
</head>

<body>
<!-- ======= Header ======= -->
<header id="header" class="header fixed-top d-flex align-items-center">

    <div class="d-flex align-items-center justify-content-between">
        <a href="index.html" class="logo d-flex align-items-center">
            <img src="/assets/admin/img/logo.png" alt="">
            <span class="d-none d-lg-block">Korea Art School</span>
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
                            <img src="/assets/admin/img/messages-1.jpg" alt="" class="rounded-circle">
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
                            <img src="/assets/admin/img/messages-2.jpg" alt="" class="rounded-circle">
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
                            <img src="/assets/admin/img/messages-3.jpg" alt="" class="rounded-circle">
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
                    <img src="/assets/admin/img/profile-img.jpg" alt="Profile" class="rounded-circle">
                    <span class="d-none d-md-block dropdown-toggle ps-2">K. Anderson</span>
                </a><!-- End Profile Iamge Icon -->

                <ul class="dropdown-menu dropdown-menu-end dropdown-menu-arrow profile">
                    <li class="dropdown-header">
                        <h6>Kevin Anderson</h6>
                        <span>Web Designer</span>
                    </li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>

                    <li>
                        <a class="dropdown-item d-flex align-items-center" href="users-profile.html">
                            <i class="bi bi-person"></i>
                            <span>My Profile</span>
                        </a>
                    </li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>

                    <li>
                        <a class="dropdown-item d-flex align-items-center" href="users-profile.html">
                            <i class="bi bi-gear"></i>
                            <span>Account Settings</span>
                        </a>
                    </li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>

                    <li>
                        <a class="dropdown-item d-flex align-items-center" href="pages-faq.html">
                            <i class="bi bi-question-circle"></i>
                            <span>Need Help?</span>
                        </a>
                    </li>
                    <li>
                        <hr class="dropdown-divider">
                    </li>

                    <li>
                        <a class="dropdown-item d-flex align-items-center" href="#">
                            <i class="bi bi-box-arrow-right"></i>
                            <span>Sign Out</span>
                        </a>
                    </li>

                </ul><!-- End Profile Dropdown Items -->
            </li><!-- End Profile Nav -->

        </ul>
    </nav><!-- End Icons Navigation -->

</header><!-- End Header -->

<!-- ======= Sidebar ======= -->
<aside id="sidebar" class="sidebar">

    <ul class="sidebar-nav" id="sidebar-nav">


        <li class="nav-item">
            <a class="nav-link collapsed" href="#">
                <i class="bi bi-grid"></i>
                <span>공통코드관리</span>
            </a>
        </li><!-- End Dashboard Nav -->


        <li class="nav-item">
            <a class="nav-link" href="#">
                <i class="bi bi-grid"></i>
                <span>공지사항관리</span>
            </a>
        </li><!-- End Components Nav -->


        <li class="nav-item">
            <a class="nav-link collapsed" href="#">
                <i class="bi bi-journal-text"></i>
                <span>입학모집관리</span>
            </a>
        </li><!-- End Forms Nav -->


        <li class="nav-item">
            <a class="nav-link collapsed" href="/admin/evaluator_info">
                <i class="bi bi-journal-text"></i>
                <span>평가위원 정보관리</span>
            </a>
        </li><!-- End Dashboard Nav -->


        <li class="nav-item">
            <a class="nav-link collapsed" href="/admin/evaluator_selection">
                <i class="bi bi-menu-button-wide"></i>
                <span>평가위원 선정</span>
            </a>
        </li><!-- End Components Nav -->


        <li class="nav-item">
            <a class="nav-link collapsed" href="#">
                <i class="bi bi-menu-button-wide"></i>
                <span>평가위원별 지원자 선정</span>
            </a>
        </li><!-- End Components Nav -->

        <li class="nav-item">
            <a class="nav-link collapsed" data-bs-target="#charts-nav" data-bs-toggle="collapse" href="#">
                <i class="bi bi-layout-text-window-reverse"></i><span>평가관리 및 조회</span><i class="bi bi-chevron-down ms-auto"></i>
            </a>
            <ul id="charts-nav" class="nav-content collapse " data-bs-parent="#sidebar-nav">
                <li>
                    <a href="/admin/stepevaluation1">
                        <i class="bi bi-circle"></i><span>서류평가</span>
                    </a>
                </li>
                <li>
                    <a href="/admin/stepevaluation2">
                        <i class="bi bi-circle"></i><span>실기평가</span>
                    </a>
                </li>
                <li>
                    <a href="/admin/stepevaluation3
">
                        <i class="bi bi-circle"></i><span>최종평가</span>
                    </a>
                </li>
            </ul>
        </li><!-- End Charts Nav -->

</aside><!-- End Sidebar-->



<main id="main" class="main">

    <section class="section">

        <!-- Evaluator List -->
        <div class="row">
            <style>
                /* CSS 코드 */
                .table-fixed thead {
                    width: 100%;
                }

                .table-fixed tbody {
                    height: 200px;
                    overflow-y: auto;
                    width: 100%;
                }

                .table-fixed thead, .table-fixed tbody, .table-fixed tr, .table-fixed td, .table-fixed th {
                    display: block;
                }

                .table-fixed tbody td, .table-fixed thead th {
                    float: left;
                }

                .table-fixed thead th:first-child, .table-fixed tbody td:first-child {
                    border-left: none;
                }
            </style>

            <!-- Notice List -->
            <div class="col-lg-6">
                <div class="card">
                    <div class="card-body">
                        <form action="/delete" method="post">
                            <div class="d-flex align-items-center justify-content-between">
                                <h5 class="card-title">Notice List</h5>
                                <div class="col-mb-2">
                                    <button class="btn btn-dark" type="submit">삭제</button>
                                </div>
                            </div>
                            <div class="table-responsive" style="height: 550px; overflow-y: auto;">
                                <table class="table table-hover">
                                    <thead>
                                    <tr>
                                        <th scope="col">
                                            <div class="form-check">
                                                <input class="form-check-input" type="checkbox" id="selectAll">
                                            </div>
                                        </th>
                                        <th scope="col">No</th>
                                        <th scope="col">제목</th>
                                        <th scope="col">내용</th>
                                        <th scope="col">작성일자</th>
                                    </tr>
                                    </thead>
                                    <tbody>
                                    <c:forEach items="${post_list}" var="dto">
                                        <tr>
                                            <td>
                                                <div class="form-check">
                                                    <input class="form-check-input row-check" type="checkbox" name="postNumbers" value="${dto.postNumber}" id="gridCheck${dto.postNumber}">
                                                    <label class="form-check-label" for="gridCheck${dto.postNumber}"></label>
                                                </div>
                                            </td>
                                            <td>${dto.postNumber}</td>
                                            <td><a href="/getPost?postNumber=${dto.postNumber}" class="post-link">${dto.postTitle}</a></td>
                                            <td>${dto.writer}</td>
                                            <td>${dto.writeDate}</td>
                                            <td style="display: none;">${dto.postContent}</td>
                                        </tr>
                                    </c:forEach>
                                    </tbody>
                                </table>
                            </div>
                        </form>
                    </div>
                </div>
            </div>

            <!-- New Notice -->
            <div class="col-lg-6">
                <div class="card">
                    <div class="card-body">
                        <form id="noticeForm" action="/submit" method="post" enctype="multipart/form-data">
                            <input type="hidden" id="action" name="action" value="post">
                            <input type="hidden" id="postNumber" name="postNumber" value="${dto.postNumber}">

                            <div class="d-flex align-items-center justify-content-between">
                                <h5 class="card-title">Notice View</h5>
                                <div class="form-group">
                                    <button class="btn btn-dark" type="submit" id="saveChanges">변경사항 저장</button>
                                    <button class="btn btn-primary" type="submit" id="createNew">새 글 등록</button>
                                </div>
                            </div>
                            <!-- 제목 -->
                            <div class="form-group col-mb-2">
                                <label for="postTitle" class="col-sm-3 col-form-label">제목</label>
                                <input type="text" class="form-control" id="postTitle" name="postTitle" required minlength="2" maxlength="30">
                            </div>
                            <!-- 내용 -->
                            <div class="form-group col-mb-2">
                                <label for="postContent" class="col-sm-3 col-form-label">내용</label>
                                <textarea class="form-control" id="postContent" name="postContent" rows="17"></textarea>
                            </div>

                            <!-- 첨부파일 보기 폼 -->
<%--                            <h5 class="card-title">--%>
<%--                                [조회용] 첨부한 파일:--%>
<%--                                <c:choose>--%>
<%--                                    <c:when test="${dto.fileName != null && !dto.fileName.isEmpty()}">--%>
<%--                                        ${dto.fileName}--%>
<%--                                    </c:when>--%>
<%--                                    <c:otherwise>--%>
<%--                                        없음--%>
<%--                                    </c:otherwise>--%>
<%--                                </c:choose>--%>
<%--                            </h5>--%>

<%--                            <c:if test="${dto.fileName != null && !dto.fileName.isEmpty()}">--%>
<%--                                <div class="form-group">--%>
<%--                                    <label for="fileLink">다운로드 링크:</label>--%>
<%--                                    <a href="${dto.filePath}" id="fileLink" class="btn btn-info">파일 다운로드</a>--%>
<%--                                </div>--%>
<%--                            </c:if>--%>

<%--                            <!-- 첨부파일 선택 -->--%>
<%--                            <div class="form-group">--%>
<%--                                <label for="fileName"><h5 class="card-title">[등록용] 첨부파일 선택:</h5></label>--%>
<%--                                <input type="file" id="fileName" name="fileName" class="form-control-file">--%>
<%--                            </div>--%>

                            <div class="form-group">
                                <input type="hidden" id="writer" name="writer" value="관리자">
                                <input type="hidden" name="bbsId" value="1">
                                <input type="hidden" name="delYn" value="N">
                                <input type="hidden" name="adminEml" value="admin@example.com">
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div><!-- End .row -->
    </section>

</main><!-- End #main -->


<!-- ======= Footer ======= -->
<footer id="footer" class="footer">
    <div class="copyright">
        &copy; Copyright <strong><span>NiceAdmin</span></strong>. All Rights Reserved
    </div>
    <div class="credits">
        Designed by <a href="https://bootstrapmade.com/">BootstrapMade</a>
    </div>
</footer>
<!-- End Footer -->

<a href="#" class="back-to-top d-flex align-items-center justify-content-center"><i class="bi bi-arrow-up-short"></i></a>

<script src="/vendor/admin/apexcharts/apexcharts.min.js"></script>
<script src="/vendor/admin/bootstrap/js/bootstrap.bundle.min.js"></script>
<script src="/vendor/admin/chart.js/chart.umd.js"></script>
<script src="/vendor/admin/echarts/echarts.min.js"></script>
<script src="/vendor/admin/quill/quill.js"></script>
<script src="/vendor/admin/simple-datatables/simple-datatables.js"></script>
<script src="/vendor/admin/tinymce/tinymce.min.js"></script>
<script src="/vendor/admin/php-email-form/validate.js"></script>

<script src="/assets/admin/js/main.js"></script>

<script>
    $(document).ready(function() {
        $("body").on("click", "a.post-link", function(event) {
            event.preventDefault();

            var postLink = $(this).attr("href");
            $.ajax({
                url: postLink,
                type: "GET",
                success: function(response) {
                    // 요청 성공
                    $("#postNumber").val(response.postNumber);
                    $("#postTitle").val(response.postTitle);
                    $("#postContent").val(response.postContent);
                    $("#filePath").val(response.filePath);
                    $("#fileName").val(response.fileName);
                    // 액션 변경
                    $("#action").val("edit");
                },
                error: function(xhr, status, error) {
                    // 요청 실패
                    console.error("Error:", error);
                }
            });
        });
        $("#saveChanges").click(function() {
            $("#noticeForm").attr("action", "/submit");
            $("#action").val("edit");
        });
        $("#createNew").click(function() {
            $("#noticeForm").attr("action", "/submit");
            $("#action").val("post");
        });
    });
</script>
<script>
    $(document).ready(function() {
        $("#fileUploadForm").submit(function(event) {
            event.preventDefault();

            var formData = new FormData();
            var file = $("#fileName")[0].files[0];
            formData.append("fileName", file);

            $.ajax({
                url: $(this).attr("action"),
                type: $(this).attr("method"),
                data: formData,
                processData: false,
                contentType: false,
                success: function(response) {
                    alert("파일이 성공적으로 업로드되었습니다.");
                    $("#filePath").val(response.filePath);
                    $("#fileLink").attr("href", response.filePath).text(response.fileName);
                },
                error: function(xhr, status, error) {
                    console.error("파일 업로드 실패:", error);
                }
            });
        });
    });
</script>

<script>
    $(document).ready(function() {
        $("#fileLink").click(function(event) {
            event.preventDefault();

            var fileLink = $(this).attr("href");
            window.location.href = fileLink;
        });

        $(".table-responsive").scroll(function() {
            var tableHeight = $(this).height();
            var scrollPosition = $(this).scrollTop();
            var tableContentHeight = $(".table").height();
        });
    });
</script>

<script>
    document.getElementById('selectAll').addEventListener('change', function () {
        const checkboxes = document.querySelectorAll('.row-check');
        checkboxes.forEach(checkbox => checkbox.checked = this.checked);
    });
</script>

<script>
    var checkedPostNumbers = [];

    $(".row-check").change(function() {
        var postNumber = $(this).val();
        if ($(this).is(":checked")) {
            checkedPostNumbers.push(postNumber);
        } else {
            checkedPostNumbers = checkedPostNumbers.filter(function(value) {
                return value !== postNumber;
            });
        }
    });

    $("#deleteButton").click(function() {
        var postNumbersString = checkedPostNumbers.join(",");

        $.ajax({
            url: "/delete",
            type: "POST",
            data: { postNumbers: postNumbersString },
            success: function(response) {
                window.location.reload();
            },
            error: function(xhr, status, error) {
                console.error("Error:", error);
            }
        });
    });
</script>
</body>
</html>