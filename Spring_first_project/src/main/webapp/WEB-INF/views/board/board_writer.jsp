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
    <h2>글 작성 페이지</h2>
    <form name="bdto" method="post" action="${path}/board/insert.do">
        <div>제목<input name="title" id="title" size="80" placeholder="글 제목 입력"></div>
        <div>내용<textarea name="content" id="content" rows="8" cols="80" placeholder="글 내용 입력"></textarea></div>
        <div>이름<input name="writer" id="writer" placeholder=${userID} readonly="true" value=${userID}></div>
        <div style="width:650px; text-align:center;">
            <input type="submit" value="확인">
        </div>
    </form>
    </div>
</body>
</html>