<!DOCTYPE html>
<%@ include file="/common/taglibs.jsp"%>
<html lang="en">
<head>
<meta http-equiv="Cache-Control" content="no-store" />
<meta http-equiv="Pragma" content="no-cache" />
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="icon" href="<c:url value="/images/favicon.ico"/>" />
<title><fmt:message key="webapp.name" /></title>
<t:assets />
</head>
<body>
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
				<div class="col-md-12 column"></div>
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
				<div class="col-md-12 column">
					<form class="navbar-form" role="search">
						<div class="form-group col-md-5">
							<input type="text" class="form-control" name="username"
								placeholder="Username">
						</div>
						<div class="form-group col-md-5">
							<input type="text" class="form-control" name="password"
								placeholder="Password">
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
			</div>
		</div>
	</div>

	<div class="container">
		<div class="row clearfix">
			<div class="col-md-12 column">
				<div class="row clearfix">
					<div class="col-md-6 column">
							<h1 class="page-header">Recharge</h1>
							<form role="form">
								<div class="row clerfix">
									<div class="form-group col-md-8">
										<input type="text" class="form-control" id="mobileNumber"
											placeholder="Mobile Number" />
									</div>
								</div>
								<div class="row clerfix">
									<div class="form-group  col-md-8">
										<select class="form-control" id="network">
											<option value="airtel">Airtel</option>
											<option value="airtel">Aircel</option>
											<option value="airtel">Vodafone</option>
											<option value="airtel">Tata Docomo</option>
										</select>
									</div>
								</div>
								<div class="row clerfix">
									<div class="form-group col-md-8">
										<input type="text" class="form-control" id="amount"
											placeholder="Amount" />
									</div>
								</div>
								<button type="submit" class="btn btn-info">Submit</button>
							</form>
					</div>
					<div class="col-md-6 column">
						<h1 class="page-header">Today's Top Post</h1>
							<div class="panel panel-deafault post">
								<div class="panel-heading post-heading">
									<div class="panel-title">
										<img class="" height="20" width="20"
											src="https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xpa1/v/t1.0-1/c18.0.50.50/p50x50/10991353_840718365990657_257911632374339016_n.jpg?oh=312b2f049d317870e678bc02dd114821&amp;oe=558184F8&amp;__gda__=1431155142_3e446f77f9175d8afb602f59fb2da84b"
											alt="" id="profile_pic_header_100001575054252"> <a
											href="#">Mathivanan</a>
									</div>
								</div>
								<div class="panel-body">Allow browsers to determine video or slideshow dimensions based on the width of their containing block by creating an intrinsic ratio that will properly scale on any device.</div>
								<div class="panel-footer">12 likes 0 comments</div>
							</div>
							<div class="panel panel-deafault post">
								<div class="panel-heading post-heading">
									<div class="panel-title">
										<img class="" height="20" width="20"
											src="https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xpa1/v/t1.0-1/c18.0.50.50/p50x50/10991353_840718365990657_257911632374339016_n.jpg?oh=312b2f049d317870e678bc02dd114821&amp;oe=558184F8&amp;__gda__=1431155142_3e446f77f9175d8afb602f59fb2da84b"
											alt="" id="profile_pic_header_100001575054252"> <a
											href="#">Mathivanan</a>
									</div>
								</div>
								<div class="panel-body">
									Hi All
									<img alt="" width="100%" height="100%" src="http://www.sound42.com/wp-content/uploads/2012/03/post-Logo-kleiner4.jpg" />
								</div>
								<div class="panel-footer">12 likes 0 comments</div>
							</div>
							<div class="panel panel-deafault post">
								<div class="panel-heading post-heading">
									<div class="panel-title">
										<img class="" height="20" width="20"
											src="https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xpa1/v/t1.0-1/c18.0.50.50/p50x50/10991353_840718365990657_257911632374339016_n.jpg?oh=312b2f049d317870e678bc02dd114821&amp;oe=558184F8&amp;__gda__=1431155142_3e446f77f9175d8afb602f59fb2da84b"
											alt="" id="profile_pic_header_100001575054252"> <a
											href="#">Mathivanan</a>
									</div>
								</div>
								<div class="panel-body">Panel content</div>
								<div class="panel-footer">12 likes 0 comments</div>
							</div>
							<div class="panel panel-deafault post">
								<div class="panel-heading post-heading">
									<div class="panel-title">
										<img class="" height="20" width="20"
											src="https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xpa1/v/t1.0-1/c18.0.50.50/p50x50/10991353_840718365990657_257911632374339016_n.jpg?oh=312b2f049d317870e678bc02dd114821&amp;oe=558184F8&amp;__gda__=1431155142_3e446f77f9175d8afb602f59fb2da84b"
											alt="" id="profile_pic_header_100001575054252"> <a
											href="#">Mathivanan</a>
									</div>
								</div>
								<div class="panel-body">Hi All
									<img alt="" width="100%" height="100%" src="http://www.swiss-miss.com/wp-content/uploads/2013/01/PigeonPost1.jpg" /></div>
								<div class="panel-footer">12 likes 0 comments</div>
							</div>
							<div class="panel panel-deafault post">
								<div class="panel-heading post-heading">
									<div class="panel-title">
										<img class="" height="20" width="20"
											src="https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xpa1/v/t1.0-1/c18.0.50.50/p50x50/10991353_840718365990657_257911632374339016_n.jpg?oh=312b2f049d317870e678bc02dd114821&amp;oe=558184F8&amp;__gda__=1431155142_3e446f77f9175d8afb602f59fb2da84b"
											alt="" id="profile_pic_header_100001575054252"> <a
											href="#">Mathivanan</a>
									</div>
								</div>
								<div class="panel-body">Panel content</div>
								<div class="panel-footer">12 likes 0 comments</div>
							</div>
							<div class="panel panel-deafault post">
								<div class="panel-heading post-heading">
									<div class="panel-title">
										<img class="" height="20" width="20"
											src="https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xpa1/v/t1.0-1/c18.0.50.50/p50x50/10991353_840718365990657_257911632374339016_n.jpg?oh=312b2f049d317870e678bc02dd114821&amp;oe=558184F8&amp;__gda__=1431155142_3e446f77f9175d8afb602f59fb2da84b"
											alt="" id="profile_pic_header_100001575054252"> <a
											href="#">Mathivanan</a>
									</div>
								</div>
								<div class="panel-body">Panel content</div>
								<div class="panel-footer">12 likes 0 comments</div>
							</div>
							<div class="panel panel-deafault post">
								<div class="panel-heading post-heading">
									<div class="panel-title">
										<img class="" height="20" width="20"
											src="https://fbcdn-profile-a.akamaihd.net/hprofile-ak-xpa1/v/t1.0-1/c18.0.50.50/p50x50/10991353_840718365990657_257911632374339016_n.jpg?oh=312b2f049d317870e678bc02dd114821&amp;oe=558184F8&amp;__gda__=1431155142_3e446f77f9175d8afb602f59fb2da84b"
											alt="" id="profile_pic_header_100001575054252"> <a
											href="#">Mathivanan</a>
									</div>
								</div>
								<div class="panel-body">Panel content</div>
								<div class="panel-footer">12 likes 0 comments</div>
							</div>
					</div>
				</div>
			</div>
		</div>
		<div class="row clearfix">
			<div class="col-md-12 column"></div>
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