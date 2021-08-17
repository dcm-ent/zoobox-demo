<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<div class="header_box">
	<figure>
		<img src="<c:url value='/resources/img/logo.png' />" alt="" />
	</figure>
	<ul class="menu">
		<c:forEach var="menu" items="${portletList}" varStatus="status">
			<li><a href="<c:url value='${menu.url }' />  ">${menu.name}</a></li>
		</c:forEach>
	</ul>
	<input type="search" placeholder="Search" />
	<ul class="alarm">
		<li><img src="<c:url value='/resources/img/icon1.png' />" alt="" /></li>
		<li><img src="<c:url value='/resources/img/icon2.png' />" alt="" /></li>
		<li><img src="<c:url value='/resources/img/icon3.png' />" alt="" /></li>
		<li><a href="<c:url value='/user/join' />"><img src="<c:url value='/resources/img/icon4.png' />" alt="" /></a></li>
	</ul>
</div>