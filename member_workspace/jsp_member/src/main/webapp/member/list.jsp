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
	<h1>Member List Page</h1>
	<table border="1">
		<tr>
			<th>id</th>
			<th>password</th>
			<th>email</th>
			<th>age</th>
		</tr>
	<c:forEach items="${list }" var="mvo">
		<tr>
			<td><a href="/mem/modify?id=${mvo.id }">${mvo.id }</a></td>
			<td>${mvo.password }</td>
			<td>${mvo.email }</td>
			<td>${mvo.age }</td>
		</tr>
	</c:forEach>
	</table>
	<a href="/index.jsp">index</a>
</body>
</html>