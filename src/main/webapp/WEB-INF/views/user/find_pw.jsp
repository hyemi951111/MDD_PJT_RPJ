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
<title>햄 반려견 사이트 만들기 프로젝트_find_pw</title>
</head>

<body>

	<c:import url="/WEB-INF/views/include/top.jsp" />

	<div class="backImage_view1">
		<div class="find_id_box">
		 <form:form action="${root}user/find_pw_pro" method="post" modelAttribute="findPwBean" >
					<form:label path="user_name" class="id_pw">이름</form:label>
					<div class="mb-3 w-75" id="ID_form">
					<form:input path="user_name" class="form-control" id="exampleFormControlInput16" />
					</div>
					<form:label path="user_id" class="pw_pw">아이디</form:label>
					<div class="mb-3 w-75" id="PW_form">
						<form:input path="user_id" class="form-control" id="exampleFormControlInput17" />
					</div>
			<div class="row">
				<div class="col text-center">
					<form:button class="btn btn-light">확인</form:button>
				</div>
			</div>
			</form:form>
		</div>
	</div>
</body>
</html>