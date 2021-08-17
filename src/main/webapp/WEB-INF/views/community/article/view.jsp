<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<%@ include file="/WEB-INF/views/common/head.jsp"%>
<title>ZOOBOX</title>
<link href="<c:url value='/resources/lib/quill/quill.snow.css'/>" rel="stylesheet">
<link href="<c:url value='/resources/lib/quill/katex.min.css'/>" rel="stylesheet" />
<link rel="stylesheet" href="<c:url value='/resources/css/comm.css'/>"
</head>
<body>
	<header>
		<jsp:include page="/header"></jsp:include>
	</header>
    <!-- wrap -->
    <div id="wrap">
        <!-- container -->
        <div id="container">
            <!-- text_box -->
            <div id="text_box">
                <div id="text_top"> <!-- top -->
                    <p>고민상담</p>
                    <div id="text_top_right">
                        <ul>
                            <li>
                                <img src="<c:url value='/resources/img/none_userimg.jpg'/>" alt="프로필사진이 없습니다.">
                            </li>
                            <li>
                                <img src="<c:url value='/resources/img/sample_LvImg.png'/>" alt="이 회원의 레벨은 6입니다.">
                            </li>
                            <li>[${article}]
                                <span><c:out value="${article.nickname}"/></span> | <c:out value="${article.regDate}"/> | 조회 <c:out value="${article.clickCnt}"/>
                            </li>
                        </ul>
                    </div>
                </div>
                <div id="text_bottom">  <!-- bottom -->
                    <h1><c:out value="${article.title}"/></h1>
                    <nav class="breadcrumb">${article.content}</nav>
                </div>
            </div>
            <!-- //text_box -->

            <!-- button_box -->
            <div id="button_box">
                <ul>
                    <li><a href="#">목록</a></li>
                    <li><a href="#"><img src="<c:url value='/resources/img/like_btn.png'/>" alt="좋아요 버튼입니다."></a></li>
                    <li><a href="#">신고</a></li>
                </ul>
            </div>
            <!-- //button_box -->

            <!-- comment_box -->
            <div id="comment_box">
                <div id="comment_top">  <!-- top -->
                    <ul>
                        <li><img src="<c:url value='/resources/img/side_menu.png'/>" alt=""></li>
                        <li>댓글</li>
                        <li>6</li>
                    </ul>
                    <ul>
                        <li><a href="#">등록순</a></li>
                        <li><a href="#">최신순</a></li>
                    </ul>
                </div>
                <div id="comment_bottom">   <!-- bottom -->
                    <div>
                        <textarea name="commentText" cols="218 rows="5" placeholder="댓글을 입력해주세요."></textarea>
                    </div>
                    <ul>
                        <li><a href="#"><img src="<c:url value='/resources/img/btn_emoticon.png'/>" alt="소유중인 이모티콘 보기."></a></li>
                        <li><a href="#"><img src="<c:url value='/resources/img/btn_addimage.png'/>" alt="화면 캡쳐하기."></a></li>
                    </ul>
                    <ul>
                        <li><a href="#">비밀댓글</a></li>
                        <li><a href="#">등록</a></li>
                    </ul>
                </div>
            </div>
            <!-- //comment_box -->

            <!-- user_comment -->
            <div id="user_comment">
                <div>
                    <h1><img src="<c:url value='/resources/img/none_userimg.jpg'/>" alt="프로필사진이 없습니다."></h1>
                    <ul>    <!-- 회원 아이디/댓글 작성날짜-->
                        <li>꾸나릉</li>
                        <li>2020-12-02</li>
                        <li>
                            <button>댓글</button>
                            <button>신고</button>
                        </li>
                    </ul>
                    <p>    <!-- 댓글 내용-->
                        원래 실내배변하던아이라면 배변패드에서 쉬야를 유도해주시면좋아요 실외배변이라면 산책나가야 싸구요
                    </p>
                </div>

                <div>
                    <h1><img src="<c:url value='/resources/img/none_userimg.jpg'/>" alt="프로필사진이 없습니다."></h1>
                    <ul>    <!-- 회원 아이디/댓글 작성날짜-->
                        <li>이푸딩</li>
                        <li>2020-12-03</li>
                        <li>
                            <button>댓글</button>
                            <button>신고</button>
                        </li>
                    </ul>
                    <p>    <!-- 댓글 내용-->
                        털을 바짝깎았다고 쉬를 참는다는 소리는 처음들어요<br>
                        산책을 자주 안나가시나요? 집에서 배변하기싫으면 참을수있어요 보통 건강한강아지들은 밖에서 배변하고싶어합니다
                    </p>
                </div>

                <div>
                    <h1><img src="<c:url value='/resources/img/none_userimg.jpg'/>" alt="프로필사진이 없습니다."></h1>
                    <ul>    <!-- 회원 아이디/댓글 작성날짜-->
                        <li>큐백설이</li>
                        <li>2020-12-03</li>
                        <li>
                            <button>신고</button>
                        </li>
                    </ul>
                    <p>    <!-- 댓글 내용-->
                        집에서 배변하는 아이구여 원래 산책하면서도 잘하는데 위생미용하고 와서부터 밖에 나가면 주저앉고 걷지를 않네요
                    </p>
                </div>

                <div>
                    <h1><img src="<c:url value='/resources/img/none_userimg.jpg'/>" alt="프로필사진이 없습니다."></h1>
                    <ul>    <!-- 회원 아이디/댓글 작성날짜-->
                        <li>이푸딩</li>
                        <li>2020-12-03</li>
                        <li>
                            <button>신고</button>
                        </li>
                    </ul>
                    <p>    <!-- 댓글 내용-->
                        혹시 상처가 난거아닐까요 병원한번가보세요
                    </p>
                </div>

                <div>
                    <h1><img src="<c:url value='/resources/img/none_userimg.jpg'/>" alt="프로필사진이 없습니다."></h1>
                    <ul>    <!-- 회원 아이디/댓글 작성날짜-->
                        <li>J혜지</li>
                        <li>2020-12-04</li>
                        <li>
                            <button>댓글</button>
                            <button>신고</button>
                        </li>
                    </ul>
                    <p>    <!-- 댓글 내용-->
                        스트레스를 많이 받아서 그런거 같네요ㅠㅜ<br>
                        충분한 휴식과 안정감을 가질 수 있게 많은 시간을 보내줘야할거 같아요!!
                    </p>
                </div>
            </div>
            <!-- //user_comment -->


        </div>
        <!-- //container -->
    </div>
	<script src="<c:url value='/resources/lib/quill/highlight.min.js'/>"></script>
	<script src="<c:url value='/resources/lib/quill/quill.js'/>"></script>
	<script src="<c:url value='/resources/lib/quill/image-resize.min.js'/>"></script>
	<script src="<c:url value='/resources/lib/quill/katex.min.js'/>"></script>
	<script src="<c:url value='/resources/lib/jquery/jquery-3.5.1.min.js'/>"></script>
    <script src="<c:url value='/resources/lib/axios/axios.min.js'/>"></script>
    <script src="<c:url value='/resources/lib/jquery/postJSON.js'/>"></script>
	<script src="<c:url value='/resources/js/community/editor_form.js'/>"></script>
	<script src="<c:url value='/resources/js/community/page.js'/>"></script>
	<jsp:include page="/footer"></jsp:include>
	
	
</body>
</html>