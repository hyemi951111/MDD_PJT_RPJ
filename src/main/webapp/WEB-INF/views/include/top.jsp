<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:url var='root' value='/' />

<!-- 부트스트랩 CSS only -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"
	rel="stylesheet"
	integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"
	crossorigin="anonymous">

<!-- font-awesome -->
<script src="https://kit.fontawesome.com/125b11004e.js"
	crossorigin="anonymous"></script>

<!-- custom CSS -->
<link href="${root}css/style.css" rel="stylesheet">

<!-- 부트스트랩 JavaScript Bundle with Popper -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"
	integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4"
	crossorigin="anonymous"></script>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/locale/ko.js"></script>
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.0/umd/popper.min.js"></script>
<script src="${root}css/java_script.js?ver=1"></script>

<div class="backImage_view">
	<!--Header-->
	<div class="logo">
		<a href="${root}main"><img src="${root}image/logo.png" alt="logo"></a>
	</div>
	
	<c:choose>
		<c:when test="${loginUserBean.userLogin == true}">
		 <div id="logout">
		 <a href="${root}user/logout"><img src="${root}image/logout1.png"
			alt="logout"></a>
    	</div>
    	 <div id="withdrawal">
		 <a href="${root}user/withdrawal"><img src="${root}image/withdrawal.png"
			alt="withdrawal"></a>
    	</div>
    	<div class="gmPhoto2">
		<img src="${root}image/gru.png" alt="gru" width="300px" height="300px"><img
			src="${root}image/monggu.png" alt="gru" width="300px" height="300px">
		</div>
		</c:when>
		
		<c:otherwise>
		<div class="login">
		<a href="${root}user/login"><img src="${root}image/login.png"
			alt="login"></a>
		</div>

		<div class="join">
			<a href="${root}user/join"><img src="${root}image/join.png"
			alt="join"></a>
		</div>
		
		<div class="gmPhoto">
		<img src="${root}image/gru.png" alt="gru" width="300px" height="300px"><img
			src="${root}image/monggu.png" alt="gru" width="300px" height="300px">
		</div>
		</c:otherwise>
	</c:choose>

	
</div>

<nav
	class="navbar navbar-expand-lg navbar-light bg-light justify-content-center"
	style="margin: 0 auto; height: 100px; z-index: 1;">
	<div class="container-fluid">
		<button class="navbar-toggler" type="button" data-bs-toggle="collapse"
			data-bs-target="#navbarSupportedContent"
			aria-controls="navbarSupportedContent" aria-expanded="false"
			aria-label="Toggle navigation">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="navbarSupportedContent">
			<ul class="navbar-nav mx-auto mb-2 mb-lg-0 ">
				<li class="nav-item"><a class="nav-link"
					href="${root}diary/diary_main">다이어리 </a></li> &nbsp;&nbsp; &nbsp;
				&nbsp; &nbsp; &nbsp;
				<li class="nav-item"><a class="nav-link"
					href="${root}community/community_main">커뮤니티</a></li> &nbsp;&nbsp; &nbsp;
				&nbsp; &nbsp; &nbsp;
				<li class="nav-item"><a class="nav-link"
					href="${root}mypage/mypage_main">마이페이지</a></li>&nbsp;&nbsp; &nbsp;
			</ul>
		</div>
	</div>
</nav>
