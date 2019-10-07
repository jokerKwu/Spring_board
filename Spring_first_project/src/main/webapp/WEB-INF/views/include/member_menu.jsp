<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- jstl 코어 태그 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!-- context 경로 -->
<c:set var="path" value="${pageContext.request.contextPath}"/>
	<div style="text-align: center;">
		<a href="${path}/member/login.do">login</a>
		<a href="${path}/member/main.do">메인페이지</a>
		<a href="${path}/member/list.do">회원관리</a>
	</div>
	<hr>