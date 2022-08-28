<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Login Index Page</h1>
	<form action="/mem/login" method="post">
		id : <input type="text" name="id"> <br>
		password : <input type="text" name="password"> <br>
		<button type="submit">login</button>
	</form>
	
	<!-- 로그인 이후 나올 내용 -->
	<c:if test="${ses.id ne null}"> <!-- ne => != // eq => ==  -->
		hello ${ses.id } login <br>
		your email is ${ses.email } <br>
		<a href="/mem/logout">logout</a>
	</c:if>
	
	<a href="/mem/join">join</a>
	<a href="/mem/list">member list</a>
	
	<script>
		const msg_login = '<c:out value="${msg_login }"/>';
		if(msg_login === '0'){
			alert("로그인 실패");
		}
	</script>
</body>
</html>