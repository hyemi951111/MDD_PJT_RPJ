<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<c:url var='root' value='/'/>
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>햄 반려견 사이트 만들기 프로젝트_dog_community_main</title>
</head>


<body>

	<c:import url="/WEB-INF/views/include/top.jsp" />
	
	<div class="backImage_view2">
		<div class="search_com">
			<form class="row g-1">
			<select class="form-select form-select-md md-1" aria-label=".form-select-md example"  name="searchType"  id="select">
					  <option value="a1.com_title" <c:if test="${pageBeanOne.searchType eq 'a1.com_title'}">selected</c:if>>제목</option>
					  <option value="a2.user_name" <c:if test="${pageBeanOne.searchType eq 'a2.user_name'}">selected</c:if>>작성자</option>
				</select>
				<div class="col-auto">
					<input type="text" name="keyword"  value="${pageBeanOne.keyword}" class="form-control" id="inputPassword2"/>
				</div>
				<div class="col-auto">
					<button type="button" id="searchBtn" class="btn btn-light mb-3">검색</button>
				</div>
			</form>
		</div>
		<div class="container">
			<table class="table">
				<thead>
					<tr class="tr_style">
						<th>No.</th>
						<th>제목</th>
						<th>작성자</th>
						<th>작성일</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach var="sl" items="${searchList}">
					<tr class="tr_style">
						<td>${sl.com_key}</td>
						<td><a href="${root}community/community_read?com_key=${sl.com_key}"
							style="text-decoration: none; color: black;">${sl.com_title}</a></td>
						<td>${sl.com_writer_name}</td>
						<td>${sl.com_date}</td>
					</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
		
		<nav aria-label="Page navigation example">
			<ul class="pagination justify-content-center" style="margin-top: 60px; margin-left: 250px;">
			 <c:choose>
				<c:when test=" ${pageBeanThree.prevPage <= 0 }${pageBeanOne.searchTypeKeyword}">">
				<li class="page-item disabled">
						<a href="#" class="page-link">이전</a>
					</li>
				 </c:when>
					<c:otherwise>
					<li class="page-item">
					<a href="${root}community/search?page=${pageBeanThree.prevPage}${pageBeanOne.searchTypeKeyword}" class="page-link">이전</a>
				</li>
					</c:otherwise>
					</c:choose>
					
				<c:forEach var="num" begin="${pageBeanThree.min }" end="${pageBeanThree.max}">
				<c:choose>
				<c:when test="${num == pageBeanThree.currentPage}">
				<li class="page-item active">
						<a href="${root }community/search?page=${num}${pageBeanOne.searchTypeKeyword}" class="page-link">${num}</a>
					</li>
				</c:when>
					<c:otherwise>
					<li class="page-item">
						<a href="${root }community/search?page=${num}${pageBeanOne.searchTypeKeyword}" class="page-link">${num}</a>
					</li>
				</c:otherwise>
					</c:choose>
					</c:forEach>
					
				<c:choose>
				<c:when test="${pageBeanThree.max >= pageBeanThree.pageCnt }">
				<li class="page-item disabled"><a class="page-link" href="#"
					aria-label="Next"> <span aria-hidden="true">다음</span>
				</a></li>
				 </c:when>
					<c:otherwise>
					<li class="page-item"><a class="page-link" href="${root}community/search?page=${pageBeanThree.nextPage}${pageBeanOne.searchTypeKeyword}"
					aria-label="Next"> <span aria-hidden="true">다음</span>
				</a></li>
				</c:otherwise>
					</c:choose>
					
				<div style="display: inline-block">
					<div class="col text-center text-sm-end" style="margin-right: 300px;">
							<a href="${root}community/community_write" class="btn btn-secondary" id="write_btn">작성</a>
					</div>
				</div>

			</ul>
		</nav>

	</div>

	<script>

document.getElementById("searchBtn").onclick = function () {
    
  let searchType = document.getElementsByName("searchType")[0].value;
  let keyword =  document.getElementsByName("keyword")[0].value;
  
  location.href = "${root}community/search?page=1" + "&searchType=" + searchType + "&keyword=" + keyword;
 };
</script>

</body>

</html>