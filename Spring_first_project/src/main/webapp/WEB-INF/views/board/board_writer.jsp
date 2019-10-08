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
    <div align="center">
    <h2>글 작성 페이지</h2>

    </div>

    
<div class="container">
	<form class="well span8" name="bdto" method="post" action="${path}/board/insert.do">
        <div class="row">
            <div class="span3">
                <label>Title</label> 
                <input name="title" id="title" class="span3" placeholder="Please enter a subject" type="text" required autofocus> 
                <label>Writer</label>
                <input name="writer" class="span3" id="writer" type="text" placeholder=${userID} readonly="true" value=${userID} readonly="true">
            </div>
    
            <div class="span5">
                <label>Content</label> 
                <textarea class="input-xlarge span5" id="content" name="content" rows="10" placeholder="Please enter a content">
    			</textarea>
            </div>
            	<input type="submit" value="confirm" class="btn btn-primary pull-right">
    	</div>
    </form>
</div>
</body>
</html>