<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:url var='root' value='/'/>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>햄 반려견 사이트 만들기 프로젝트_main</title>
</head>

<body>
<c:import url="/WEB-INF/views/include/top.jsp" />
	<div class="backImage_view2">

		<div class="polaroids1">
			<div class="polaroid">
				<img src="./image/c_dog1.jpg" alt="Photo 1">
				<p class="caption">귀여운 진돗개</p>
			</div>
			<div class="polaroid">
				<img src="./image/c_dog2.jpg" alt="Photo 2">
				<p class="caption">사랑스러운 강아지</p>
			</div>
			<div class="polaroid">
				<img src="./image/c_dog3.jpg" alt="Photo 3">
				<p class="caption">해맑게 웃는 강아지</p>
			</div>
		</div>
		<div class="polaroids2">
			<div class="polaroid">
				<img src="./image/c_dog4.jpg" alt="Photo 4">
				<p class="caption">행복하게 웃는 강아지</p>
			</div>
			<div class="polaroid">
				<img src="./image/c_dog5.jpg" alt="Photo 5">
				<p class="caption">미소짓는 강아지</p>
			</div>
			<div class="polaroid">
				<img src="./image/c_dog6.jpg" alt="Photo 6">
				<p class="caption">귀염진 강아지</p>
			</div>
		</div>
	</div>
</body>

</html>