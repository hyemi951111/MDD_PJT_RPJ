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
<title>햄 반려견 사이트 만들기 프로젝트_join</title>
</head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>

<body>

	<c:import url="/WEB-INF/views/include/top.jsp" />
	
	<div class="backImage_view3">
		<div class="signup-form">
			<form:form action="${root}user/join_pro" method='post' modelAttribute="UserBeanjoin">
				<form:hidden path="userIdExist" />
				<form:label path="user_name" id="j_label4">이름</form:label>
				<form:input path="user_name" class="form-control"
					id="exampleFormControlInput13" />
				<form:errors path="user_name" style='color:red' />
				<div style="display: inline-block">
					<form:label path="user_id" id="j_label">아이디</form:label>
					<form:input path="user_id" class="form-control" onkeypress="resetUserIdExist()"  style="margin-top: -35px;	margin-left: 120px; margin-right: 100px; padding-top: 5px; padding-left: 5px; padding-right: 5px; padding-bottom: 5px; width: 220px;"/>
					<button type="button" class="btn btn-light"  id="reChk"  onclick='checkUserIdExist()'>중복확인</button>
					</br>
					<form:errors path="user_id" style='color:red' />
				</div>
				<form:label path="user_pw" id="j_label2">비밀번호</form:label>
				<form:password path="user_pw" class="form-control"
					id="exampleFormControlInput11" />
				<form:errors path="user_pw" style='color:red' />
				<form:label path="user_pw2" id="j_label3">비밀번호 확인</form:label>
				<form:password path="user_pw2" class="form-control"
					id="exampleFormControlInput12" />
				<form:errors path="user_pw2" style='color:red' />
				<form:label path="user_email" id="j_label5">이메일</form:label>
				<form:input path="user_email" class="form-control"
					id="exampleFormControlInput14" />
				<form:errors path="user_email" style='color:red' />
				<form:label path="user_phone" id="j_label6">휴대폰 번호</form:label>
				<form:input path="user_phone" class="form-control"
					id="exampleFormControlInput15" />
					<form:errors path="user_phone" style='color:red' /></br>
				<form:button class="btn btn-secondary" id="joinBtn">회원가입</form:button>
			</form:form>
		</div>
	</div>
<script>
function checkUserIdExist(){
	
	var user_id = $("#user_id").val()
	
	if(user_id.length == 0){
		alert('아이디를 입력해주세요')
		return
	}	
	
	console.log(user_id);
	
	$.ajax({
		url : '${root}user/checkUserIdExist/' + user_id,
		type : 'get',
		dataType : 'text',
		success : function(result){
			if(result.trim() == 'true'){
				alert('사용할 수 있는 아이디입니다')
				$("#userIdExist").val('true')
			} else {
				alert('사용할 수 없는 아이디 입니다')
				$("#userIdExist").val('false')
			}
		}
	})
}
	
	function resetUserIdExist(){
		$("#userIdExist").val('false')
	}
</script>
</body>

</html>

