<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:url var='root' value='/' />
<script>
	alert('가입이 완료되었습니다')
	location.href = "${root}user/login"
</script>