<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:url var='root' value='/' />
<c:url var='v' value='views' />
<!DOCTYPE html>
<html lang="ko">

<head>
<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>햄 반려견 사이트 만들기 프로젝트_dog_diary_main</title>
</head>

<style>
td {
	width: 150px;
	height: 90px;
}

.Calendar {
	text-align: center;
	margin-top: 20px;
	margin-left: 280px;
	margin-right: -20px;
	display: inline-block;
}

.Calendar>thead>tr:first-child>td {
	font-weight: bold;
}

.Calendar>thead>tr:last-child>td {
	background-color: #F6F6F6;
	color: black;
}

.pastDay {
	background-color: white;
	cursor: pointer;
}

.today {
	background-color: #FFCA64;
	cursor: pointer;
}

.futureDay {
	background-color: #FFFFFF;
	cursor: pointer;
}

.futureDay.choiceDay, .today.choiceDay {
	background-color: white;
	cursor: pointer;
}

#calYear, #calMonth {
	font-size: 40px;
	font-weight: bold;
	display: inline-block;
	vertical-align: middle;
	margin-right: 10px;
}
</style>

<body>

	<c:import url="/WEB-INF/views/include/top.jsp" />

	<div class="backImage_view2">
		<table class="Calendar">
			<thead>
				<tr>
					<td onClick="prevCalendar();" style="cursor: pointer;">◀</td>
					<td colspan="5"><span id="calYear"></span>
						<p id="calYear">년</p> <span id="calMonth"></span>
						<p id="calMonth">월</p></td>
					<td onClick="nextCalendar();" style="cursor: pointer;">▶</td>
				</tr>
				<tr>
					<td style="font-size: 25px; font-weight: bold;">일</td>
					<td style="font-size: 25px; font-weight: bold;">월</td>
					<td style="font-size: 25px; font-weight: bold;">화</td>
					<td style="font-size: 25px; font-weight: bold;">수</td>
					<td style="font-size: 25px; font-weight: bold;">목</td>
					<td style="font-size: 25px; font-weight: bold;">금</td>
					<td style="font-size: 25px; font-weight: bold;">토</td>
				</tr>
			</thead>

			<tbody>
			</tbody>
		</table>
		<div class="row">
			<div class="col text-center" style="margin-left:680px; margin-bottom: 40px;">
				<a href="${root}diary/diary_list"><button type="button"
						class="btn btn-warning btn-lg">글 목록</button></a>
			</div>
			<div class="col text-center"  style="margin-right:660px; margin-bottom: 40px;">
				<a href="${root}diary/diary_write"><button type="button"
						class="btn btn-warning btn-lg">작성</button></a>
			</div>
			
		</div>

	</div>
</body>

</html>