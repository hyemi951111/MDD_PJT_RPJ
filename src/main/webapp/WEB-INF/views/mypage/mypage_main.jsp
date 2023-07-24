<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:url var='root' value='/' />
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>햄 반려견 사이트 만들기 프로젝트_dog_my_page_main</title>
</head>

<body>

	<c:import url="/WEB-INF/views/include/top.jsp" />

	<div class="backImage_view4">
		<div class="total_memo">
			<div class="memo_container">
				<img src="${root}image/memo.png" width="650px" height="850px">
				<form:form action="${root}mypage/mypage_pro" method="post" modelAttribute="modifyUserBean">
				<div class="memo_text2">
					<h2 id="human">견주</h2>
						<div class="form-group row">
							<form:label path="user_name" id="subject2">이름</form:label>
							<div class="col-sm-2 offset-sm-2">
							<form:input path="user_name" class="form-control" id="exampleFormControlInput3" readonly="true"/>
							</div>
							<form:label path="user_id" id="subject2_1">아이디</form:label>
							<div class="col-sm-2 offset-sm-2">
							<form:input path="user_id" class="form-control" id="exampleFormControlInput4" readonly="true"/>
							</div>
						</div>
						<form:label path="user_pw" id="subject2_2">비밀번호</form:label>
						<div class="col-sm-2 offset-sm-2">
						<form:input path="user_pw" class="form-control" id="exampleFormControlInput5" />
						<form:errors path="user_pw" style="color:red"/>
						</div>
						<form:label path="user_phone" id="subject2_3">휴대폰번호</form:label>
						<div class="col-sm-2 offset-sm-2">
						<form:input path="user_phone" class="form-control" id="exampleFormControlInput6" />
						<!-- 에러 메시지 넣기!!!!-->
						</div>
						<form:label path="user_email" id="subject2_4">이메일</form:label>
						<div class="col-sm-2 offset-sm-2">
						<form:input path="user_email" class="form-control" id="exampleFormControlInput7" />
						<!-- 에러 메시지 넣기!!!!-->
						</div>
				</div>
				<div class="row">
					<div class="col" id="page_m2">
						<form:button  class="btn btn-secondary">수정</form:button>
					</div>
					</div>
					</form:form>
				</div>
			</div>
		</div>
</body>
</html>