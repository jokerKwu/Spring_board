<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원등록 페이지</title>
<%@ include file="../include/member/member_header.jsp" %>
<style><%@ includefile="/WEB-INF/views/style/member/css/member_write.css"%></style>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
</head>
<body>
<%@ include file="../include/member/member_menu.jsp" %>
	
	<div align="center">
	<h2>회원 등록</h2>

<main class="login-form">
    <div class="cotainer">
        <div class="row justify-content-center">
            <div class="col-md-8">
                <div class="card">
                    <div class="card-header">Register</div>
                    <div class="card-body">
                        <form name="form1" method="post" action="${path}/member/insert.do">
                            <div class="form-group row">
                                <label for="userId" class="col-md-4 col-form-label text-md-right"> I D </label>
                                <div class="col-md-6">
                                    <input type="text" id="userId" class="form-control" name="userId" required autofocus>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="userPw" class="col-md-4 col-form-label text-md-right">Password</label>
                                <div class="col-md-6">
                                    <input type="password" id="userPw" class="form-control" name="userPw" required>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="userName" class="col-md-4 col-form-label text-md-right"> Name </label>
                                <div class="col-md-6">
                                    <input type="text" id="userName" class="form-control" name="userName" required autofocus>
                                </div>
                            </div>

                            <div class="form-group row">
                                <label for="userEmail" class="col-md-4 col-form-label text-md-right"> E-Mail Address </label>
                                <div class="col-md-6">
                                    <input type="text" id="userEmail" class="form-control" name="userEmail" required autofocus>
                                </div>
                            </div>


                            <div class="form-group row">
                                <div class="col-md-6 offset-md-4">
                                    <div class="checkbox">
                                        <label>
                                            <input type="checkbox" name="remember"> Remember Me
                                        </label>
                                    </div>
                                </div>
                            </div>
                            
                            

                            <div class="col-md-6 offset-md-4">
                                <button type="submit" class="btn btn-primary">
                                    Register
                                </button>
                             	<button type="reset" class="btn btn-primay">
                             		Cancel
                             	</button>
                            </div>
                    </div>
                    </form>
                </div>
            </div>
        </div>
    </div>
    </div>
	
	
</body>
</html>