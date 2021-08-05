<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

      <div class="header_box">
        <figure><img src="/zoobox/resources/img/logo.png" alt="" /></figure>
        <ul class="menu">
          <c:forEach var="menu" items="${portletList}" varStatus="status">
          	<li><a href="<c:url value='${menu.url }' />  ">${menu.name}</a></li>
          </c:forEach>
        </ul>
        <input type="search" placeholder="Search" />

      </div>