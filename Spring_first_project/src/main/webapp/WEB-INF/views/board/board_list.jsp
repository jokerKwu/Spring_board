<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- fmt를 사용하기위한 태그 라이브러리 -->
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <%@ include file="../include/member/member_menu.jsp" %>
    <center><h2>게시판 입니다.</h2></center>
    <div align="center">
    <a href="${path}/board/writer.do">글쓰기</a>
        <table border="1">
        <tr>
            <th>번호</th>
            <th>제목</th>
            <th>글쓴이</th>
            <th>작성일자</th>
            <th>조회수</th>
        </tr>
        <c:forEach var="row" items="${list}">
        <tr>
            <td>${row.bno}</td>
            <!-- 게시물 조회를 위해서 get방식으로 게시물번호 값을 넘겨주자 -->
            <td><a href="${path}/board/read.do?bno=${row.bno}">${row.title}</a></td>
            <td>${row.writer}</td>
            <td>
                <fmt:formatDate value="${row.regdate}" pattern="yyyy-MM-dd HH:mm:ss" />
            </td>
            <td>${row.viewcnt}</td>
        </tr>
        </c:forEach>
    </table>
    </div>
</body>
</html>
