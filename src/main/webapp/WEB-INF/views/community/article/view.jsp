<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/views/common/head.jsp"%>
<title>ZOOBOX</title>
<link href="<c:url value='/resources/lib/quill/quill.snow.css'/>" rel="stylesheet">
<link href="<c:url value='/resources/lib/quill/katex.min.css'/>" rel="stylesheet" />
</head>
<body>
	<header>
		<jsp:include page="/header"></jsp:include>
	</header>
	<div id="article-view" style="width: 67%;" class="article-view">
		<div class="board-name"></div>
		<section class="article-detail" style="border: double;">
		<h2 class="title">${article.title}</h2>
		<nav class="breadcrumb">${article.content}
		<ul>
			<li class="user-meta"><span>${article.clickCnt}</span> <span>${article.nickname}</span></li>
			<li>${article.regDate}</li>
			<li>
				<button type="button" data-action="modify" class="button">수정</button>
				<button type="button" data-action="delete" class="button">삭제</button>
				<button type="button" data-action="list" class="button">목록</button>
			</li>
		</ul>
		</nav> <article class="content">
		<div class="content-body ql-editor"></div>
		</article>
		<ul class="response-buttons">
			<li>
				<button class="like button" data-action="like">
					추천 <em>10</em>
				</button>
			</li>
			<li>
				<button class="dislike button" data-action="dislike">
					비추천 <em>2</em>
				</button>
			</li>
		</ul>
		</section>
		<section>
		<ul class="action-button-groups"></ul>
		</section>
		<section class="comments">
		<ul>
			<li id="editor-comment" class="comment">
				<div class="edit-comment ">
					<div class="title insert">댓글 작성</div>
					<div class="title update d-none">댓글 수정</div>
					<div id="standalone-container ">
						<div id="toolbar-container">
							<span class="ql-formats">
								<button class="ql-image"></button>
							</span>
						</div>
						<div id="editor-container" style="height: 100px;"></div>
					</div>
					<div class="mt-4">
						<button class="button btn-save-comment">댓글 저장</button>
					</div>
			</li>
		</ul>
		<div class="paging-nav">
			<div class="paging"></div>
		</div>
		</section>
	</div>
	<script src="<c:url value='/resources/lib/quill/highlight.min.js'/>"></script>
	<script src="<c:url value='/resources/lib/quill/quill.js'/>"></script>
	<script src="<c:url value='/resources/lib/quill/image-resize.min.js'/>"></script>
	<script src="<c:url value='/resources/lib/quill/katex.min.js'/>"></script>
	<script src="<c:url value='/resources/lib/jquery/jquery-3.5.1.min.js'/>"></script>
    <script src="<c:url value='/resources/lib/axios/axios.min.js'/>"></script>
    <script src="<c:url value='/resources/lib/jquery/postJSON.js'/>"></script>
	<script src="<c:url value='/resources/js/community/editor_form.js'/>"></script>
	<jsp:include page="/footer"></jsp:include>
	
	
</body>
</html>