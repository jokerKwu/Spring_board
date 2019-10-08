<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link href="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/css/bootstrap-combined.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/twitter-bootstrap/2.3.2/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
    <%@ include file="../include/member/member_menu.jsp" %>
<div class="container">
	<form class="well span8" name="updateform" method="POST" action="${path}/board/update.do">
		<input type="hidden" name="viewcnt" value="${data.viewcnt}" ></input>
        <input type="hidden" name="bno" value="${data.bno}" ></input>
        
        <div class="row">
            <div class="span3">
                <label>Title</label> 
                <input name="title" class="span3" type="text" value="${data.title}"> 
                <label>Writer</label>
                <input name="writer" class="span3" placeholder="${data.writer}" type="text" readonly="true">
                <label>Write date</label> 
                <input name="regdate" class="span3" placeholder="${data.regdate}" type="text" readonly="true"> 
            </div>
    
            <div class="span5">
                <label>Content</label> 
                <textarea class="input-xlarge span5" id="content" name="content" rows="10" >${data.content}
    			</textarea>
            </div>
            	<input class="btn btn-primary pull-right" type="submit" value="글수정"/>
            	<input class="btn btn-primary pull-right" type="reset" value="리셋"/>
    	</div>
    </form>
</div>
</body>
</html>
