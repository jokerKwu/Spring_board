<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"><title>로그인 페이지</title>
<%@ include file="../include/member_header.jsp" %>
</head>
<body>
<%@ include file="../include/member_menu.jsp" %>
	<link href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
	<script src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
	<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
	<!------ Include the above in your HEAD tag ---------->

	<style><%@ includefile="/WEB-INF/views/style/css/member_login.css"%></style>
	
	<form action="/member/loginProcess.do" method="post">
		<div class="container">
			<div class="row">
				<div class="col-md-offset-5 col-md-3">
					<div class="form-login">
						<h4>로그인 화면</h4>
						<input type="text" name="userId"
							class="form-control input-sm chat-input" placeholder="id" /> </br> 
							<input
							type="password" name="userPw" class="form-control input-sm chat-input"
							placeholder="password" /> </br>
						<div class="wrapper">
							<span class="group-btn">
								<button onclick="submit" class="btn btn-primary btn-md"> login</button>
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>
</body>
</html>