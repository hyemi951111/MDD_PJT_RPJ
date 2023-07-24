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
<title>햄 반려견 사이트 만들기 프로젝트_dog_my_page</title>
</head>

<body>

	<c:import url="/WEB-INF/views/include/top.jsp" />
	
	<div class="backImage_view2">
		<div class="total_memo">
			<div class="memo_container">
				<img src="${root}image/memo.png" width="650px" height="850px">
				<div class="memo_text">
					<form action="${root}mypage/mypage_main" method="get">
						<div class="form-group row">
							<h2 id="dog">반려견</h2>
							<label id="subject">이름</label>
							<div class="col-sm-2 offset-sm-2">
								<input type="text" class="form-control"
									id="exampleFormControlInput1">
							</div>
							<label id="subject">생년월일</label>
							<div class="col-sm-2 offset-sm-2">
								<input type="text" class="form-control"
									id="exampleFormControlInput2">
							</div>
						</div>
						<label id="subject">성별</label> <i class="fa-solid fa-2x"
							id="gender_total"> <i class="fa-solid fa-mars-and-venus"
							style="color: gray"> <input type="radio" name="gender"
								value="여자">
						</i> <i class="fa-solid fa-mars" style="color: gray"> <input
								type="radio" name="gender" value="남자">
						</i>
						</i> </i> </i> </i><br>
					<label id="subject" style="margin-top: 10px;">견종</label>
					 <select class="form-control" id="dog_category" style="width: 220px;">
						<option selected>클릭하여 선택하세요.</option>
						<option value="1">코카스파니엘</option>
						<option value="2">진돗개</option>
						<option value="3">말티즈</option>
						<option value="4">웰시코기</option>
						<option value="5">푸들</option>
						<option value="6">요크셔테리어</option>
						<option value="7">허스키</option>
						<option value="8">리트리버</option>
						<option value="9">시츄</option>
						<option value="10">포메라니안</option>
						<option value="etc">기타</option>
					</select> <label id="subject">사진</label>
					<div class="row">
						<div class="col" id="page_m">
							<a href="${root}mypage/mypage_modify_comp">
											<button type="button" class="btn btn-warning">수정</button>
										</a>
						</div>
						<div class="col" id="page_i">
							<a href="#">
								<button type="submit" class="btn btn-info">저장</button>
							</a>
						</div>
					</div>
					</form>
				</div>

				<!--견주-->
				<img src="${root}image/memo.png" width="650px" height="850px">
				<div class="memo_text2">
					<form action="${root}mypage/mypage_main" method="get">
						<div class="form-group row">
							<h2 id="human">견주</h2>
							<label id="subject2">이름</label>
							<div class="col-sm-2 offset-sm-2">
								<input type="text" class="form-control"
									id="exampleFormControlInput3">
							</div>

							<label id="subject2_1">아이디</label>
							<div class="col-sm-2 offset-sm-2">
								<input type="text" class="form-control"
									id="exampleFormControlInput4">
							</div>
						</div>


						<label id="subject2_2">비밀번호</label>
						<div class="col-sm-2 offset-sm-2">
							<input type="password" class="form-control"
								id="exampleFormControlInput5">
						</div>

						<label id="subject2_3">휴대폰번호</label>
						<div class="col-sm-2 offset-sm-2">
							<input type="tel" class="form-control"
								id="exampleFormControlInput6">
						</div>

						<label id="subject">이메일</label>
						<div class="col-sm-2 offset-sm-2">
							<input type="email" class="form-control"
								id="exampleFormControlInput6">
						</div>
				</div>
				<div class="row">
					<div class="col" id="page_m2">
							<a href="${root}mypage/mypage_modify_comp">
											<button type="button" class="btn btn-warning">수정</button>
										</a>
					</div>
					<div class="col" id="page_i2">
						<a href="#">
							<button type="submit" class="btn btn-info">저장</button>
						</a>
					</div>
				</div>
				</form>
			</div>

		</div>
	</div>
	</div>

</body>


</html>