<%@ page language="java" contentType="text/html; charset=EUC-KR"
	pageEncoding="EUC-KR"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">
<title>로그인 페이지</title>
</head>
<body>
	<link
		href="//netdna.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css"
		rel="stylesheet" id="bootstrap-css">
	<script
		src="//netdna.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>
	<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
	<!------ Include the above in your HEAD tag ---------->

	<style><%@ includefile="/WEB-INF/views/style/css/member_login.css"%></style>
	<script><%@ includefile="/WEB-INF/views/style/js/member_login.js"%></script>


	<!--Pulling Awesome Font -->
	<link
		href="//maxcdn.bootstrapcdn.com/font-awesome/4.2.0/css/font-awesome.min.css"
		rel="stylesheet">
	<a href="#" id="bbsBtn">테스트입니다.</a>
	<form name="form1" method="post" action="${path}/member/login.do">
		<div class="container">
			<div class="row">
				<div class="col-md-offset-5 col-md-3">
					<div class="form-login">>
						<h4>로그인 화면</h4>
						<input type="text" name="userId"
							class="form-control input-sm chat-input" placeholder="id" />
						</br> <input type="text" name="userPw"
							class="form-control input-sm chat-input" placeholder="password" />
						</br>
						<div class="wrapper">
							<span class="group-btn">
							<button onclick="submit" class="btn btn-primary btn-md">login</button> 
						</div>
					</div>
				</div>
			</div>
		</div>
	</form>

</body>
</html>