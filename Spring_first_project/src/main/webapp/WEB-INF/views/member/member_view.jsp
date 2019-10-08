<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>회원정보 상세 페이지</title>
<%@ include file="../include/member/member_header.jsp"%>
<link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>

</head>
<body>
	<%@ include file="../include/member/member_menu.jsp"%>
	<script><%@ includefile="/WEB-INF/views/style/member/js/member_view.js"%></script>
	<div align="center">
	<div class="row">
    <div class="col-md-4 col-md-offset-4">
      <form name="form1" method="post" class="form-horizontal">
        <fieldset>

          <!-- Form Name -->
          <legend>Member Infomation Details</legend>

          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput"> I D </label>
            <div class="col-sm-10">
            	<input name="userId" value="${dto.userId}"  class="form-control">
            </div>
          </div>

          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput" > Password </label>
            <div class="col-sm-10">
            	<input type="password" name="userPw" class="form-control">
            </div>
          </div>

          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">Name</label>
            <div class="col-sm-10">
            	<input name="userName" value="${dto.userName}" class="form-control">
            </div>
          </div>
          
          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">E-Mail Address</label>
            <div class="col-sm-10">
            	<input name="userEmail" value="${dto.userEmail}" class="form-control">
            </div>
          </div>
          

          <!-- Text input-->
          <div class="form-group">
            <label class="col-sm-2 control-label" for="textinput">Register Date</label>
            <div class="col-sm-4">
              <input type="text" placeholder="${dto.userRegdate}" class="form-control" readonly="true">
            </div>

            <label class="col-sm-2 control-label" for="textinput">Update Date</label>
            <div class="col-sm-4">
            	<input type="text" placeholder="${dto.userUpdatedate }" class="form-control" readonly="true">
            </div>
          </div>


          <div class="form-group">
            <div class="col-sm-offset-2 col-sm-10">
              <div class="pull-right">
              <input type="button" value="Save" id="btnUpdate" class="btn btn-primary">
              <input type="button" value="Delete" id="btnDelete" class="btn btn-default"> 
              </div>
              <div style="color: red;">${message}</div>
            </div>
          </div>

        </fieldset>
      </form>
    </div><!-- /.col-lg-12 -->
</div><!-- /.row -->
</body>
</html>