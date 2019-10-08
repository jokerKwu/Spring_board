<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
    <%@ include file="../include/member/member_menu.jsp" %>

<div class="container">
	<form class="well span8">
        <div class="row">
            <div class="span3">
                <label>Title</label> 
                <input class="span3" placeholder="${data.title}" type="text" readonly="true"> 
                <label>Writer</label>
                <input class="span3" placeholder="${data.writer}" type="text" readonly="true">
                <label>Write date</label> 
                <input class="span3" placeholder="${data.regdate}" type="text" readonly="true"> 
            </div>
    
            <div class="span5">
                <label>Content</label> 
                <textarea class="input-xlarge span5" id="content" name="content"rows="10" readonly="true">${data.content}
    			</textarea>
            </div>
            
    			<a href="${path}/board/delete.do?bno=${data.bno}" class="btn btn-primary pull-right">삭제</a>
                <a href="${path}/board/updatepage?bno=${data.bno}" class="btn btn-primary pull-right">수정</a>
        </div>
    </form>
</div>
</body>
</html>
