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
<title>햄 반려견 사이트 만들기 프로젝트_withdrawal</title>
</head>

<body>

	<c:import url="/WEB-INF/views/include/top.jsp" />

	<div class="backImage_view2">
		<div class="login_box">
		<form:form action="${root }user/withdrawal_pro" method='post' modelAttribute="deleteUserBean">
				<form:label path="user_id" class="id">아이디</form:label>
				<div class="mb-3 w-75" id="ID_form">
					<form:input path="user_id"  class="form-control" id="exampleFormControlInput8" value="${loginUserBean.user_id}"/>			
				</div>
				<br>
				<form:label path="user_pw" class="lg_pw">비밀번호</form:label>
				<div class="mb-3 w-75" id="PW_form">
					<form:input path="user_pw"  class="form-control" id="exampleFormControlInput9"/>
					<c:if test="${msg == false }">
					 <p>
					 비밀번호가 틀립니다. </br>다시 입력해주세요.
					 </p>
					</c:if>
				</div>
				<div class="row">
					<div class="form-group col text-center">
						<form:button class="btn btn-light">회원탈퇴</form:button>
					</div>
				</div>
				</form:form>
		</div>
	</div>
</body>
</html>