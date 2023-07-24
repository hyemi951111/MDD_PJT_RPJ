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
<title>햄 반려견 사이트 만들기 프로젝트_diary_modify</title>
</head>

<body>

	<c:import url="/WEB-INF/views/include/top.jsp" />
	
	<div class="backImage_view2">
		<div
			class="container-fluid d-flex justify-content-center align-items-center">
			<div class="row col-lg-5">
				<div class="col-lg-12">
					<div class="card">
						<div class="card-header">2022년 11월 11일 월요일</div>
						<div class="walk_check">
							<p>산책 여부</p>
							<div class="form-check">
								<input class="form-check-input" type="checkbox" value=""
									id="flexCheckDefault"> <label class="form-check-label"
									for="flexCheckDefault"> 갔어요😍 </label>
							</div>
							<div class="form-check">
								<input class="form-check-input" type="checkbox" value=""
									id="flexCheckChecked"> <label class="form-check-label"
									for="flexCheckChecked"> 못 갔어요😭 </label>
							</div>
						</div>
						<div class="weather">
							<p>오늘의 날씨는?</p>
							<i class="fa-solid fa-2x"> <i class="fa-solid fa-sun"
								style="color: gray"> <input type="radio" name="weather"
									value="맑음"> <i class="fa-solid fa-smog"> <input
										type="radio" name="weather" value="흐림"> <i
										class="fa-solid fa-cloud-rain"> <input type="radio"
											name="weather" value="비"> <i
											class="fa-solid fa-snowflake"> <input type="radio"
												name="weather" value="눈">
										</i>
									</i>
								</i>
							</i>
							</i>
						</div>
						<div class="card-body">
							<ul class="list-group">
								<textarea rows="13" cols="50" style="outline: none;" class="note"></textarea>
							</ul>
							<div class="diary_in_button">
								<div class="row">
									<div class="col text-center">
										<a href="${root}diary/diary_main">
											<button type="button" class="btn btn-light">취소</button>
										</a>
									</div>
									<div class="col text-center ml-30">
										<button type="button" class="btn btn-light">수정완료</button>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>

</html>