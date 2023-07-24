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
  <title>햄 반려견 사이트 만들기 프로젝트_dog_community_modify</title>
</head>

<body>

	<c:import url="/WEB-INF/views/include/top.jsp" />

  <div class="backImage_view2">
    <div id="form-box">
    <form:form action="${root}community/modify_pro" method="post" modelAttribute="modifyContentBean" enctype="multipart/form-data">
     	<form:hidden path="com_key"/>
      <div class="form-group">
      <form:label path="com_writer_name">작성자</form:label>
      <form:input path="com_writer_name" class='form-control' readonly="true"/>
    
      </div>
      <div class="form-group">
       <form:label path="com_date">작성 날짜</form:label>
       <form:input path="com_date" class='form-control' readonly='true'/>
      </div>
      <div class="form-group">
        <form:label path="com_title">제목</form:label>
        <form:input path="com_title" class='form-control'/>
        <form:errors path="com_title" style='color:red'/>
      </div>
      <div class="form-group">
       <form:label path="com_content">내용</form:label>
       <form:textarea path="com_content" class="form-control" rows="10" style="resize:none"/>
        <form:errors path="com_content" style='color:red'/>
      </div>
      <div class="form-group">
        <label for="com_file">이미지 첨부</label>
        <c:if test="${modifyContentBean.com_file != null }">
        <img src="${root }upload/${modifyContentBean.com_file}" width="20%"/>
        <form:hidden path="com_file"/>
        </c:if>
        <form:input path="upload_file" type='file' class="form-control" accept="image/*"/>
      </div>
      <div class="form-group button-container">
        <form:button class='btn btn-primary'>수정완료</form:button>
      	<a href="${root}community/community_read?com_key=${com_key}" class="btn btn-secondary">취소</a>
      </div>
    </form:form>
    </div>
</div>
</body>
</html>
