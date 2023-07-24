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
<title>햄 반려견 사이트 만들기 프로젝트_dog_community_read</title>
</head>

<body>

	<c:import url="/WEB-INF/views/include/top.jsp" />
	
	<div class="backImage_view">
		<div id="form-box">
			<form>
				<div class="form-group">
					<label for="id">아이디</label>
					<p>yuwie2020</p>
				</div>
				<div class="form-group">
					<label for="date">날짜</label>
					<div>
						<span id="selected-year"></span>2023년 <span id="selected-month"></span>04월
						<span id="selected-day"></span>12일
					</div>
				</div>
				<div class="form-group">
					<label for="title">제목</label>
					<p>그루야 사랑해~</p>
				</div>
				<div class="form-group">
					<label for="content">내용</label>
					<textarea class="form-control" id="content" name="content"
						rows="10" style="resize: none;">그루야 사고치지말고 아프지말고 오래 살아</textarea>
				</div>
				<div class="form-group">
					<label for="file">파일 첨부</label> <input type="file"
						class="form-control-file" id="file" name="file">
				</div>
				<div class="form-group button-container">
					<a href="${root}community/community_modify" class="btn btn-warning">수정</a>
					<a href="${root}community/community_delete" class="btn btn-danger">삭제</a>
					<a href="${root}community/community_main" class="btn btn-secondary">목록 </a>
				</div>
			</form>
		</div>
	</div>
</body>
</html>
