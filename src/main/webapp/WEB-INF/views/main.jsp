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
	<div class="backImage_view5">

		<div class="polaroids1">
			<div class="polaroid">
				<img src="./image/c_dog1.jpg" alt="Photo 1">
				<p class="caption">반려견과의🐶</p>
			</div>
			<div class="polaroid">
				<img src="./image/c_dog2.jpg" alt="Photo 2">
				<p class="caption">행복한 일상을💓</p>
			</div>
			<div class="polaroid">
				<img src="./image/c_dog3.jpg" alt="Photo 3">
				<p class="caption">기록하고✏️</p>
			</div>
		</div>
		<div class="polaroids2">
			<div class="polaroid">
				<img src="./image/c_dog4.jpg" alt="Photo 4">
				<p class="caption">애견인들과🙋</p>
			</div>
			<div class="polaroid">
				<img src="./image/c_dog5.jpg" alt="Photo 5">
				<p class="caption">얘기하며👄</p>
			</div>
			<div class="polaroid">
				<img src="./image/c_dog6.jpg" alt="Photo 6">
				<p class="caption">소통해보아요🥰</p>
			</div>
		</div>
	</div>
</body>

</html>