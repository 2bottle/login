<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>Member Modify Page</h1>
	<form action="/mem/update" method="post">
		id : <input type="text" name ="id" value="${mvo.id }" readonly="readonly"> <br>
		password : <input type="text" name ="password" value="${mvo.password }"> <br>
		email : <input type="text" name ="email" value="${mvo.email }"> <br>
		age : <input type="text" name ="age" value="${mvo.age }"> <br>
		<button type="submit">modify</button>
	</form>
	<a href="/mem/remove?id=${mvo.id }"><button>delete</button></a>
</body>
</html>