<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/views/common/head.jsp"%>
<title>ZOOBOX</title>
<link href="<c:url value='/resources/lib/quill/quill.snow.css'/>" rel="stylesheet">
<link href="<c:url value='resources/lib/quill/katex.min.css'/>" rel="stylesheet" />
</head>
<body>
	<header>
		<jsp:include page="/header"></jsp:include>
	</header>
	<div class="main_contents">
		<div class="edit">
			<form>
				<div class="mb-2">
					<input type="text" class="title" id="title" placeholder="제목" />
				</div>
				<div id="toolbar-container">
					<span class="ql-formats"> <select class="ql-header">
							<option value="1">Heading</option>
							<option value="2">Subheading</option>
							<option selected>Normal</option>
					</select>
					</span> <span class="ql-formats">
						<button class="ql-bold"></button>
						<button class="ql-italic"></button>
						<button class="ql-underline"></button> <select class="ql-color">
					</select>
					</span> <span class="ql-formats">
						<button class="ql-link"></button>
						<button class="ql-image"></button>
						<button class="ql-video"></button>
					</span>
				</div>
				<div id="editor-container" style="height: 450px; width: 500px"></div>

			</form>
		</div>
	</div>
	<button id="save-btn">save</button>
	<button id="cancel-btn">cancel</button>
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
