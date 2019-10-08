<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <%@ include file="../include/member/member_menu.jsp" %>
    <div align="center">
    <h2>board_read 페이지입니다.</h2>
    <a href="${path}/board/list.do">목록보기</a>
    <table border="1">
        <th> 정보 </th>
        <th> 데이터 </th>
        <tr>
            <td>작성일자</td>
            <td><fmt:formatDate value="${data.regdate}" pattern="yyyy-MM-dd HH:mm:ss" />
            </td>
        </tr>
        <tr>
            <td>글번호</td><td>${data.bno}</td>
        </tr>
        <tr>
            <td>글제목</td><td>${data.title}</td>
        </tr>
        <tr>
            <td>글내용</td><td>${data.content}</td>
        </tr>
        <tr><td>글쓴이</td><td>${data.writer}</td></tr>
        <tr><td>조회수</td><td>${data.viewcnt}</td></tr>
        
    </table>
    <a href="#">수정</a>
    <a href="#">삭제</a>
    </div>
</body>
</html>
