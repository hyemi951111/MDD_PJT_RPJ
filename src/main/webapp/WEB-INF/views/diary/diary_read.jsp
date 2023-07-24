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
<title>햄 반려견 사이트 만들기 프로젝트_diary_read</title>
</head>


<body>

	<c:import url="/WEB-INF/views/include/top.jsp" />
	
	<div class="backImage_view2">
		<div
			class="container-fluid d-flex justify-content-center align-items-center">
			<div class="row col-lg-5">
				<div class="col-lg-12">
					<div class="card">
						<div class="card-header">
                           <input type="text"  class="form-control" value="${readDiaryBean.dia_title}" />
                        </div>
						<div class="walk_check">
						<label for="dia_walk">산책 여부</label></br></br>
							<div class="form-check">
							<c:if test="${readDiaryBean.dia_walk == 1}">
							<input type="radio"  value="${readDiaryBean.dia_walk}" checked/>&nbsp;갔어요😍
							</br></br>
							</c:if>
							<c:if test="${readDiaryBean.dia_walk == 2}">
							<input type="radio"  value="${readDiaryBean.dia_walk}" checked/>&nbsp;못 갔어요😭
							</br></br>
							</c:if>
							</div>							
						</div>
						<div class="weather_read">
						<label for="dia_weather">오늘의 날씨는?</label></br></br>
							
							<c:if test="${readDiaryBean.dia_weather == 1}">
							<input type="radio"  value="${readDiaryBean.dia_weather}" checked/>&nbsp;맑음
							</c:if>
							<c:if test="${readDiaryBean.dia_weather == 2}">
							<input type="radio"  value="${readDiaryBean.dia_weather}" checked />&nbsp;흐림
							</c:if>
							<c:if test="${readDiaryBean.dia_weather == 3}">
							<input type="radio"  value="${readDiaryBean.dia_weather}"  checked/>&nbsp;비
							</c:if>
							<c:if test="${readDiaryBean.dia_weather == 4}">
							<input type="radio"  value="${readDiaryBean.dia_weather}" checked/>&nbsp;눈
							</c:if>
						</div>
						<div class="card-body">
							<ul class="list-group">
							<textarea rows="13" cols="50" style="outline: none;" class="note"   disabled="disabled" font-size: small; >${readDiaryBean.dia_content}</textarea>	
							</ul>
							<div class="diary_in_button">
								<div class="row">
									<div class="col text-center">
										<a href="${root}diary/diary_list?dia_writer_index=${readDiaryBean.dia_writer_index}">
											<button type="button" class="btn btn-light">목록</button>
										</a>
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
