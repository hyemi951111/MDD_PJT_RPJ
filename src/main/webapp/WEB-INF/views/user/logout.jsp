<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:url var='root' value='/'/>
<script>
		alert('성공적으로 로그아웃 되었습니다! 곧 다시 만나요')
		location.href = '${root}main'
</script>