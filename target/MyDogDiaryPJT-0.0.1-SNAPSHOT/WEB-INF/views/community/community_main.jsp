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
<title>햄 반려견 사이트 만들기 프로젝트_dog_community_main</title>
</head>

<body>

	<c:import url="/WEB-INF/views/include/top.jsp" />
	
	<div class="backImage_view2">
		<div class="serch_com">
			<form class="row g-1">
				<div class="col-auto">
					<input type="text" class="form-control" id="inputPassword2">
				</div>
				<div class="col-auto">
					<button type="submit" class="btn btn-warning mb-3">검색</button>
				</div>
			</form>
		</div>
		<div class="container">
			<table class="table">
				<thead>
					<tr class="tr_style">
						<th>No.</th>
						<th>제목</th>
						<th>아이디</th>
						<th>작성일</th>
						<th>조회수</th>
					</tr>
				</thead>
				<tbody>
					<tr class="tr_style">
						<td>1</td>
						<td><a href="${root}community/community_read"
							style="text-decoration: none; color: black;">첫 번째 글</a></td>
						<td>작성자1</td>
						<td>2023-03-09</td>
						<td>10</td>
					</tr>
					<tr class="tr_style">
						<td>2</td>
						<td><a href="#" style="text-decoration: none; color: black;">두
								번째 글</a></td>
						<td>작성자2</td>
						<td>2023-03-08</td>
						<td>8</td>
					</tr>
					<tr class="tr_style">
						<td>3</td>
						<td><a href="#" style="text-decoration: none; color: black;">세
								번째 글</a></td>
						<td>작성자3</td>
						<td>2023-03-07</td>
						<td>5</td>
					</tr>
					<tr class="tr_style">
						<td>4</td>
						<td><a href="#" style="text-decoration: none; color: black;">세
								번째 글</a></td>
						<td>작성자4</td>
						<td>2023-03-07</td>
						<td>7</td>
					</tr>
					<tr class="tr_style">
						<td>5</td>
						<td><a href="#" style="text-decoration: none; color: black;">세
								번째 글</a></td>
						<td>작성자5</td>
						<td>2023-03-07</td>
						<td>5</td>
					</tr>
					<tr class="tr_style">
						<td>6</td>
						<td><a href="#" style="text-decoration: none; color: black;">세
								번째 글</a></td>
						<td>작성자3</td>
						<td>2023-03-07</td>
						<td>5</td>
					</tr>
					<tr class="tr_style">
						<td>7</td>
						<td><a href="#" style="text-decoration: none; color: black;">세
								번째 글</a></td>
						<td>작성자3</td>
						<td>2023-03-07</td>
						<td>5</td>
					</tr>
					<tr class="tr_style">
						<td>8</td>
						<td><a href="#" style="text-decoration: none; color: black;">세
								번째 글</a></td>
						<td>작성자3</td>
						<td>2023-03-07</td>
						<td>5</td>
					</tr>
					<tr class="tr_style">
						<td>9</td>
						<td><a href="#" style="text-decoration: none; color: black;">세
								번째 글</a></td>
						<td>작성자3</td>
						<td>2023-03-07</td>
						<td>5</td>
					</tr>
					<tr class="tr_style">
						<td>10</td>
						<td><a href="#" style="text-decoration: none; color: black;">세
								번째 글</a></td>
						<td>작성자3</td>
						<td>2023-03-07</td>
						<td>5</td>
					</tr>
				</tbody>
			</table>
		</div>
		<nav aria-label="Page navigation example">
			<ul class="pagination justify-content-center">
				<li class="page-item"><a class="page-link" href="#"
					aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
				</a></li>
				<li class="page-item"><a class="page-link" href="#">1</a></li>
				<li class="page-item"><a class="page-link" href="#">2</a></li>
				<li class="page-item"><a class="page-link" href="#">3</a></li>
				<li class="page-item"><a class="page-link" href="#"
					aria-label="Next"> <span aria-hidden="true">&raquo;</span>
				</a></li>

				<div style="display: inline-block">
					<div class="col text-center text-sm-end">
							<a href="${root}community/community_write" class="btn btn-secondary" id="write_btn">글쓰기</a>
					</div>
				</div>

			</ul>
		</nav>

	</div>

</body>

</html>