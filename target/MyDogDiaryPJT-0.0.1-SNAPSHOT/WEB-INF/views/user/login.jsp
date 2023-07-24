<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:url var="root" value='/' />
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>햄 반려견 사이트 만들기 프로젝트_login</title>
</head>

<body>

	<c:import url="/WEB-INF/views/include/top.jsp" />

	<div class="backImage_view2">

		<div class="login_box">

			<h2 class="login_title">🐶login🐶</h2>
			<form action="${root}main" method="get">
				<h1 class="id">ID</h1>
				<div class="mb-3 w-75" id="ID_form">
					<input type="text" class="form-control"
						id="exampleFormControlInput10" placeholder="ID를 입력하세요.">
				</div>
				<br>
				<h1 class="pw">PW</h1>
				<div class="mb-3 w-75" id="PW_form">
					<input type="password" class="form-control"
						id="exampleFormControlInput11" placeholder="PW를 입력하세요.">
				</div>
				<div class="row">
					<div class="form-group col text-center">
						<button type="submit" class="btn btn-light">로그인</button>
					</div>
					<div class="col text-center">
						<a href="find_id.html"><button type="button"
								class="btn btn-light">ID 찾기</button></a>
					</div>
					<div class="col text-center">
						<a href="find_id.html"><button type="button"
								class="btn btn-light">PW 찾기</button></a>
					</div>
					<div class="col text-center ml-30">
						<a href="${root}user/join"><button type="button"
								class="btn btn-light">회원가입</button></a>
					</div>
				</div>
			</form>
		</div>
	</div>
</body>
</html>