<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/common/taglib.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Đăng nhập</title>
</head>
<body>
	<div class="container">
		<div class="d-flex justify-content-center h-100">
			<div class="card">
				<c:if test="${not empty message}">
					<div class="alert alert-${alert}" role="alert">${message}</div>
				</c:if>
				<div class="card-header">
					<h3>Sign In</h3>
					<div class="d-flex justify-content-end social_icon">
						<span><i class="fab fa-facebook-square"></i></span> <span><i
							class="fab fa-google-plus-square"></i></span> <span><i
							class="fab fa-twitter-square"></i></span>
					</div>
				</div>
				<div class="card-body">
					<form action="<c:url value='/login'/>" id="formLogin" method="POST">
						<div class="input-group form-group">
							<div class="input-group-prepend">
								<span class="input-group-text"><i class="fas fa-user"></i></span>
							</div>
							<input type="text" class="form-control" placeholder="username"
								id="userName" name="userName">

						</div>
						<div class="input-group form-group">
							<div class="input-group-prepend">
								<span class="input-group-text"><i class="fas fa-key"></i></span>
							</div>
							<input type="password" class="form-control"
								placeholder="password" id="password" name="password">
						</div>
						<input type="hidden" value="login" name="action" />
						<div class="form-group">
							<button type="submit" class="btn float-right login_btn">Login</button>
						</div>
					</form>
				</div>
				<div class="card-footer">
					<div class="d-flex justify-content-center links">
						Don't have an account?<a href='<c:url value="/sign-up"/>'>Sign
							Up</a>
					</div>
					<!-- 				<div class="d-flex justify-content-center"> -->
					<!-- 					<a href="#">Forgot your password?</a> -->
					<!-- 				</div> -->
				</div>
			</div>
		</div>
	</div>
</body>
</html>