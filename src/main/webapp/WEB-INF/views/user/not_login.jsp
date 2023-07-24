<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:url var='root' value='/' />
<script>
	alert('비회원인 경우, 접근할 수 없습니다. 회원인 경우 로그인을 해주세요.')
	location.href='${root}main'
</script>