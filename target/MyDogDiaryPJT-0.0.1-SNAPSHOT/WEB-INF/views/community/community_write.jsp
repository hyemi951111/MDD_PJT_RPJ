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
  <title>햄 반려견 사이트 만들기 프로젝트_dog_community_write</title>
</head>

<body>

	<c:import url="/WEB-INF/views/include/top.jsp" />

  <div class="backImage_view">
    <div id="form-box">
    <form action="${root}community/community_read" method="get">
      <div class="form-group">
        <label for="id">아이디</label>
        <input type="text" class="form-control" id="id" name="id">
      </div>
      <div class="form-group">
        <label for="date">날짜</label>
        <button type="button" class="btn btn-info" id="datepicker" >날짜 선택</button>
        <div style="display: inline-block;">
        <div>작성 날짜: <span id="selected-year"></span>년 <span id="selected-month"></span>월 <span id="selected-day"></span>일</div>
        </div>

      </div>
      <div class="form-group">
        <label for="title">제목</label>
        <input type="text" class="form-control" id="title" name="title">
      </div>
      <div class="form-group">
        <label for="content">내용</label>
        <textarea class="form-control" id="content" name="content" rows="10" style="resize: none;"></textarea>
      </div>
      <div class="form-group">
        <label for="file">파일 첨부</label>
        <input type="file" class="form-control-file" id="file" name="file">
      </div>
      <div class="form-group button-container">
       <a href="${root}community/community_main" class="btn btn-warning">취소</a>
        <button type="submit" class="btn btn-warning">등록</button>
      </div>
    </form>
    </div>
</div>
</body>
</html>
