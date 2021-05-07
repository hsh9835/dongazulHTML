<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>findIdResult.jsp</title>
<link rel="stylesheet" href="resources/css/findIdResult.css">
</head>
<body>

	<div class="wrap">
		<div class="box">
			<h1>아이디 찾기 결과</h1>
			
			<div class="result">
			입력한 전화번호 : ${memberVO.phonenumber}<br>
			이메일 : ${FIND} 
			</div>
			<hr>
			<form action="/login/signIn" method="get">
				<input type="submit" value="홈으로 돌아가기" class="back">
			</form>
		</div>
	</div>
</body>
</html>