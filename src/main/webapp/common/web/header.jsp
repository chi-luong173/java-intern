<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>


<div class="dark-bg sticky-top">
	<div class="container-fluid">
		<div class="row">
			<div class="col-md-12">
				<nav class="navbar navbar-expand-lg navbar-light">
					<a class="navbar-brand" href="/">REVIEW FILM</a>
					<button class="navbar-toggler" type="button" data-toggle="collapse"
						data-target="#navbarNavDropdown" aria-controls="navbarNavDropdown"
						aria-expanded="false" aria-label="Toggle navigation">
						<span class="icon-menu"></span>
					</button>
					<div class="collapse navbar-collapse justify-content-end"
						id="navbarNavDropdown">
						<ul class="navbar-nav">
							<li class="nav-item dropdown">
								<c:if test="${not empty USERMODEL}">
									<a class="nav-link" href="#" id="navbarDropdownMenuLink"
										data-toggle="dropdown" aria-haspopup="true"
										aria-expanded="false"> Hi ${USERMODEL.fullName} <span
										class="icon-arrow-down"></span>
									</a>
									<div class="dropdown-menu"
										aria-labelledby="navbarDropdownMenuLink">
										<a class="dropdown-item" href='<c:url value="/profile"/>'>Profile</a> 
										<a class="dropdown-item" href='<c:url value="/logout?action=logout"/>'>Logout</a>
									</div>
								</c:if> 
								<c:if test="${empty USERMODEL}">
									<li class="nav-item"><a class="nav-link"
										href='<c:url value="/login?action=login"/>'>Đăng nhập</a>
									</li>
								</c:if>
							</li>
						</ul>
					</div>
				</nav>
			</div>
		</div>
	</div>
</div>