<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
           <p>비밀번호는 ${findPwBeanSet.user_pw} 입니다.</p>

            <div class="row">
                <div class="col text-center">
                    <a href="${root}user/login"><button type="button" class="btn btn-light">로그인</button></a>
                     <a href="${root}main"><button type="button" class="btn btn-light">홈으로</button></a>
                </div>
            </div>
        </div>
    </div>
</body>
</html>