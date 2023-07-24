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
					<label for="com_writer_name">작성자</label>
					<input type="text" id =  "com_writer_name" class="form-control" value="${readContentBean.com_writer_name }" disabled="disabled"/>
				</div>
				<div class="form-group">
					<label for="com_date">작성 날짜</label>
					<input type="text" id="com_date" class="form-control" value="${readContentBean.com_date }" disabled="disabled"/>
				</div>
				<div class="form-group">
			
					<label for="com_title">제목</label>
					<input type="text" id="com_title" class="form-control" value="${readContentBean.com_title}" disabled="disabled"/>
				</div>
				<div class="form-group">
					<label for="com_content">내용</label>
					<textarea class="form-control" id="com_content" 	rows="10" style="resize: none;" disabled="disabled">${readContentBean.com_content}</textarea>
				</div>
				<c:if test="${readContentBean.com_file != null }">
				<div class="form-group">
					<label for="com_file">이미지 첨부</label></br>
					<img src="${root }upload/${readContentBean.com_file}" width="20%"/>
				</div>
				</c:if>
				<div class="form-group button-container">
				<c:if test="${loginUserBean.user_key == readContentBean.com_writer_index}">
					<a href="${root}community/community_modify?com_key=${com_key}" class="btn btn-warning">수정</a>
					<a href="${root}community/community_delete?com_key=${com_key}" class="btn btn-danger">삭제</a>
					</c:if>
					<a href="${root}community/community_main" class="btn btn-secondary">목록 </a>
				</div>
			</form>
		</div>
	</div>
</body>
</html>
