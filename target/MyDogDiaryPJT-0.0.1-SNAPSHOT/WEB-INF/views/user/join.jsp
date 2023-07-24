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
    <title>햄 반려견 사이트 만들기 프로젝트_dog_community</title>
</head>

<body>

<c:import url="/WEB-INF/views/include/top.jsp" />

    <div class="backImage_view2">

        <div class="signup-form">
          
            <form action="${root}user/login" method="get">
              <div class="form-group">
                <label for="username" id="j_label">아이디</label>
                <div style="display: inline-block">
                <input type="text" id="j_input" name="username" required placeholder="영문으로만 가능합니다.">
                  </div>
                <div style="display: inline-block">
                <div class="col text-center">
                  <button type="button" class="btn btn-light">중복확인</button>
                </div>
              </div>
              </div>
              <div class="form-group">
                <label for="password" id="j_label">비밀번호</label>
                <input type="password" id="j_input" name="password" required placeholder="숫자와 특수문자만 가능합니다.">
              </div>
              <div class="form-group">
                <label for="password-confirm" id="j_label">비밀번호 확인</label>
                <input type="password" id="j_input" name="password-confirm" required>
              </div>
              <div class="form-group">
                <label for="phone" id="j_label">이름</label>
                <input type="text" id="j_input" name="name" required>
              </div>
              <div class="form-group">
                <label for="email" id="j_label">이메일</label>
                <input type="email" id="j_input" name="email" required>
              </div>
              <div class="form-group">
                <label for="phone" id="j_label">휴대폰번호</label>
                <input type="tel" id="j_input" name="phone" required>
              </div>
              <input type="submit" value="가입">
            </form>
          </div>
          <!--가입 버튼 누르고 알러트 창 나오게해서 가입완료 후 마이페이지 가서 강아지 정보 입력하도록 유도!! 알러트창 해야돼!-->

    </div>
</body>

</html>