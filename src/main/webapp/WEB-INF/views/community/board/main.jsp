<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<%@ include file="/WEB-INF/views/common/head.jsp"%>
<title>ZOOBOX</title>
</head>
<body>

	<header>
		<jsp:include page="/header"></jsp:include>
	</header>

	<div class="main_contents">
		<jsp:include page="/leftMenu"></jsp:include>
		<div class="right_content">board main</div>
	</div>

	<jsp:include page="/footer"></jsp:include>

</body>
</html>
