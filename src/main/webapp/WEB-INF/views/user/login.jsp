<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
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
			<h2 class="login_title">🐶로그인🐶</h2>
			<form:form action="${root }user/login_pro" method='post' modelAttribute="tempLoginUserBean">
				<form:label path="user_id" class="id_login">아이디</form:label>
				<div class="mb-3 w-75" id="ID_form">
						<form:input path="user_id"  class="form-control" id="exampleFormControlInput8"/>
						<form:errors path="user_id" style='color:red'/>
				</div>
				<br>
				<form:label path="user_pw" class="lg_pw">비밀번호</form:label>
				<div class="mb-3 w-75" id="PW_form">
					<form:input path="user_pw"  class="form-control" id="exampleFormControlInput9"/>
					<form:errors path="user_pw" style='color:red'/>
				</div>
				<div class="row">
					<div class="form-group col text-center">
						<form:button class="btn btn-light">로그인</form:button>
					</div>
					<div class="col text-center">
						<a href="${root}user/find_id"><button type="button"
								class="btn btn-light">아이디 찾기</button></a>
					</div>
					<div class="col text-center">
						<a href="${root}user/find_pw"><button type="button"
								class="btn btn-light">비밀번호 찾기</button></a>
					</div>
					<div class="col text-center ml-30">
						<a href="${root}user/join"><button type="button"
								class="btn btn-light">회원가입</button></a>
					</div>
				</div>
			</form:form>
		</div>
	</div>
</body>
</html>