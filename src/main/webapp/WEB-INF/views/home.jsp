<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page session="false" %>
<html>
<head>
	<title>Home</title>
		<style>
		.desc {
		}
	</style>
</head>
<body>
<h1>
	Hello world!  
</h1>

<P>  The time on the server is ${serverTime}. </P>

<ul>
	<c:forEach var="actor" items="${actorList}">
		<li><span>${actor.actorId}</span> 
		
		</li>
	</c:forEach>
</ul>

</body>
</html>
