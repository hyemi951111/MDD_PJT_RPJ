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
					 <form:form action="${root}diary/diary_modify_pro" method="post" modelAttribute="modifyDiaryBean" >
					 	<form:hidden path="dia_key"/>
						<div class="card-header">
                           <form:input path="dia_title" class="form-control" id="title" />
                        </div>
						<div class="walk_check">
							 <form:label path="dia_walk">산책 여부</form:label></br></br>
							<div class="form-check">
							<form:radiobutton path="dia_walk" value="1" id="flexCheckDefault"/> 갔어요😍
							</br></br>
							<form:radiobutton path="dia_walk" value="2" id="flexCheckChecked"/> 못 갔어요😭
							</div>							
						</div>
						<div class="weather">
						 <form:label path="dia_weather" id="">오늘의 날씨는?</form:label></br></br>
							<i class="fa-solid fa-2x">
							<form:radiobutton path="dia_weather" value="1" />&nbsp;<i class="fa-solid fa-sun" style="color: gray">
							<form:radiobutton path="dia_weather" value="2" />&nbsp;<i class="fa-solid fa-smog">
							<form:radiobutton path="dia_weather" value="3" />&nbsp;<i class="fa-solid fa-cloud-rain">
							<form:radiobutton path="dia_weather" value="4" />&nbsp;<i class="fa-solid fa-snowflake">
									   </i>
								    </i>
							     </i>
							   </i>
							 </i>
						</div>
						<div class="card-body">
							<ul class="list-group">
							<form:textarea path="dia_content" rows="13" cols="50" style="outline: none;" class="note"/>
							</ul>
							<div class="diary_in_button">
								<div class="row">
									<div class="col text-center">
										<a href="${root}diary/diary_list?dia_writer_index=${modifyDiaryBean.dia_writer_index}">
											<button type="button" class="btn btn-light">목록</button>
										</a>
									</div>
									<div class="col text-center ml-30">
										<form:button class="btn btn-primary">수정완료</form:button>
									</div>
								</div>
							</div>
						</div>
						</form:form>
					</div>
				</div>
			</div>
		</div>
	</div>

</body>

</html>

