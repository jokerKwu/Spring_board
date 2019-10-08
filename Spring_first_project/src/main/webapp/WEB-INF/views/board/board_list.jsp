<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- fmt를 사용하기위한 태그 라이브러리 -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 목록</title>
<style><%@ includefile="/WEB-INF/views/style/board/css/board_list.css"%></style>

</head>
<body>
    <%@ include file="../include/member/member_menu.jsp" %>
    <link href="bootstrap-3.3.7/css/bootstrap.min.css" rel="stylesheet">
    
    <center><h2>게시판 입니다.</h2></center>
    <div align="center">
    <a href="${path}/board/writer.do">글쓰기</a>
        <table class="table table-striped table-bordered table-hover">
        <thead>
        <tr>
            <th width="8%">번호</th>
            <th width="50%">제목</th>
            <th width="10%">글쓴이</th>
            <th width="24%">작성일자</th>
            <th width="8%">조회수</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="row" items="${list}">
        <tr>
            <td>${row.bno}</td>
            <!-- 게시물 조회를 위해서 get방식으로 게시물번호 값을 넘겨주자 -->
            <td><a href="${path}/board/read.do?bno=${row.bno}">${row.title}</a></td>
            <td>${row.writer}</td>
            <td>
            	${row.regdate }
            </td>
            <td>${row.viewcnt}</td>
        </tr>
        </c:forEach>
        </tbody>
    </table>
    </div>
</body>
</html>
