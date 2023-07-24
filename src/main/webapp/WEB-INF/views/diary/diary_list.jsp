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
<title>햄 반려견 사이트 만들기 프로젝트_diary_list</title>
</head>

<body>

	<c:import url="/WEB-INF/views/include/top.jsp" />
	
	<div class="backImage_view8">
		
		<div class="diary_list_total">
			<table class="table" style="width: 1300px; height: 80px; margin-top: 150px; margin-left: 150px;">
				<thead>
					<tr class="tr_style">
						<th>작성날짜</th>
						<th>제목</th>
						<th>수정</th>
						<th>삭제</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="obj" items="${diaryList}">
					<tr class="tr_style">
						<td>${obj.dia_date}</td>
						<td><a href="${root}diary/diary_read?dia_key=${obj.dia_key}"
							style="text-decoration: none; color: black;">${obj.dia_title}</a></td>
						<td><a href="${root}diary/diary_modify?dia_key=${obj.dia_key}"><button type="button" class="btn btn-warning">수정</button></a></td>
						<td><a href="${root}diary/diary_delete?dia_key=${obj.dia_key}"><button type="button" class="btn btn-danger">삭제</button></a></td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		
		<nav aria-label="Page navigation example">
			<ul class="pagination justify-content-center">
			 <c:choose>
				<c:when test="${pageBeanTwo.prevPage <= 0 }">
				<li class="page-item disabled"><a class="page-link" href="#"
					aria-label="Previous"> <span aria-hidden="true">이전</span>
				</a></li>
				 </c:when>
					<c:otherwise>
					<li class="page-item"><a class="page-link" href="diary/diary_list?page="${pageBeanTwo.prevPage}"
					aria-label="Previous"> <span aria-hidden="true">이전</span>
				</a></li>
					</c:otherwise>
					</c:choose>
					
				<c:forEach var="num" begin="${pageBeanTwo.min }" end="${pageBeanTwo.max}">
				<c:choose>
				<c:when test="${num == pageBeanTwo.currentPage}">
				<li class="page-item active">
						<a href="${root }diary/diary_list?page=${num}&dia_writer_index=${dia_writer_index}" class="page-link">${num}</a>
					</li>
				</c:when>
					<c:otherwise>
					<li class="page-item">
						<a href="${root }diary/diary_list?page=${num}&dia_writer_index=${dia_writer_index}" class="page-link">${num}</a>
					</li>
				</c:otherwise>
					</c:choose>
					</c:forEach>
					
				<c:choose>
				<c:when test="${pageBeanTwo.max >= pageBeanTwo.pageCnt }">
				<li class="page-item disabled"><a class="page-link" href="#"
					aria-label="Next"> <span aria-hidden="true">다음</span>
				</a></li>
				 </c:when>
					<c:otherwise>
					<li class="page-item"><a class="page-link" href="${root}diary/diary_list?page=${pageBeanTwo.nextPage}"
					aria-label="Next"> <span aria-hidden="true">다음</span>
				</a></li>
				</c:otherwise>
					</c:choose>

			</ul>
		</nav>

	</div>
	

</body>

</html>