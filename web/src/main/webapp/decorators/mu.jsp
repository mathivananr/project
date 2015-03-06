<!DOCTYPE html>
<%@ include file="/common/taglibs.jsp"%>
<html lang="en">
<head>
<meta http-equiv="Cache-Control" content="no-store" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" href="<c:url value="/images/favicon.ico"/>" />
<title><decorator:title/> | <fmt:message key="webapp.name"/></title>
<t:assets />
</head>
<body>
	<c:set var="isAuthenticated" value="${true}" />
	<security:authorize ifAllGranted="ROLE_ANONYMOUS">
		<c:set var="isAuthenticated" value="${false}" />
	</security:authorize>
	<div class="navbar navbar-default navbar-fixed-top">
		<div class="navbar-header">
			<button class="navbar-toggle" type="button" data-toggle="collapse"
				data-target="#navbar-main">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="#">Sitename</a>
		</div>

		<div class="navbar-collapse collapse" id="navbar-main">
			<div class="col-md-5 column">
				<div class="col-md-12 column">
					<ul class="nav navbar-nav">
						<li><a href="#">One</a></li>
						<li><a href="#">Two</a></li>
						<li><a href="#">Three</a></li>
						<li><a href="#">Four</a></li>
					</ul>
				</div>
			</div>
			<div class="col-md-5 column">
				<c:choose>
					<c:when test="${isAuthenticated}">
						<div class="col-md-12 column">
							<ul class="nav navbar-nav pull-right">
								<li class="dropdown"><a href="#" class="dropdown-toggle"
									data-toggle="dropdown" role="button" aria-expanded="false"><security:authentication
											property="principal.username" /> <span class="caret"></span></a>
									<ul class="dropdown-menu" role="menu">
										<li><a href="#">My Account</a></li>
										<li><a href="/logout">Logout</a></li>
									</ul></li>
							</ul>
						</div>
					</c:when>
					<c:otherwise>
						<div class="col-md-12 column">

							<form class="navbar-form" role="search" method="post"
								id="loginForm" action="<c:url value='/j_security_check'/>">
								<div class="form-group col-md-5">
									<input type="text" class="form-control" name="j_username"
										id="j_username" placeholder="Username">
								</div>
								<div class="form-group col-md-5">
									<input type="password" class="form-control" name="j_password"
										id="j_password" placeholder="Password">
								</div>
								<button type="submit" class="btn btn-info">Sign In</button>
							</form>

						</div>
						<div class="col-md-12 column">
							<div class="form-group col-md-6">
								<fmt:message key="login.signup">
									<fmt:param>
										<c:url value="/signup" />
									</fmt:param>
								</fmt:message>
							</div>
							<div class="form-group col-md-6">
								<a href="/signup">Forget password</a>
							</div>
						</div>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
	</div>
	<div class="container">
		<%@ include file="/common/messages.jsp" %>
        <div id="main-container" class="row clearfix">
            <decorator:body/>
        </div>
	</div>
	<div id="footer" class="container navbar-fixed-bottom">
		<span class="col-sm-6 text-left"><fmt:message
				key="webapp.version" /> <c:if
				test="${pageContext.request.remoteUser != null}">
            | <fmt:message key="user.status" /> ${pageContext.request.remoteUser}
            </c:if> </span> <span class="col-sm-6 text-right"> &copy; <fmt:message
				key="copyright.year" /> <a href="<fmt:message key="company.url"/>"><fmt:message
					key="company.name" /></a>
		</span>
	</div>
</body>
</html>