<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<c:url var='root' value='/'/>
<!DOCTYPE html>
<html lang="ko">

<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>햄 반려견 사이트 만들기 프로젝트_dog_community_write</title>
</head>

<body>

	<c:import url="/WEB-INF/views/include/top.jsp" />

  <div class="backImage_view">
    <div id="form-box">
    <form:form action="${root}community/community_write_pro" method="post" modelAttribute="writeContentBean" enctype="multipart/form-data">
      <div class="form-group">
        <form:label path="com_title">제목</form:label>
        <form:input path="com_title" class="form-control" id="title"  />
        <form:errors path="com_title" style="color:red"/>
      </div>
      <div class="form-group">
       <form:label path="com_content">내용</form:label>
       <div class="mb-3">
       <form:textarea path="com_content" class="form-control" rows="10" style="resize: none;"/>
      	<form:errors path="com_content" style="color:red"/>
      	</div>
      </div>
      <div class="form-group">
      <form:label path="upload_file">이미지 첨부</form:label>
      <form:input path="upload_file" type='file' class="form-control" accept="image/*"/>
      </div>
      <div class="form-group button-container">
       <a href="${root}community/community_main" class="btn btn-warning">취소</a>
       <form:button class="btn btn-warning">작성</form:button>
      </div>
	</form:form>
    </div>
</div>
</body>
</html>
