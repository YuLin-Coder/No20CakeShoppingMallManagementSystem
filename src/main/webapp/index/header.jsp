<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8"/>
</head>
<body>

	<!--header-->
	<div class="header">
		<div class="container">
			<nav class="navbar navbar-default" role="navigation">
				<div class="navbar-header">
					<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1">
						<span class="sr-only">Toggle navigation</span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
						<span class="icon-bar"></span>
					</button>
					<h1 class="navbar-brand"><a href="index">饮品店</a></h1>
				</div>
				<!--navbar-header-->
				<div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
					<ul class="nav navbar-nav">
						<li><a href="index" <c:if test="${flag==1}">class="active"</c:if>>首页</a></li>
						<li class="dropdown">
							<a href="#" class="dropdown-toggle <c:if test="${flag==2}">active</c:if>" data-toggle="dropdown">商品分类<b class="caret"></b></a>
							<ul class="dropdown-menu multi-column columns-2">
								<li>
									<div class="row">
										<div class="col-sm-12">
											<h4>商品分类</h4>
											<ul class="multi-column-dropdown">
												<c:forEach var="type" items="${typeList}">
													<li><a class="list" href="goods?typeid=${type.id}">${type.name}</a></li>
												</c:forEach>
											</ul>
										</div>	
									</div>
								</li>
							</ul>
						</li>
						<li><a href="top?typeid=2" <c:if test="${flag==7}">class="active"</c:if>>热销</a></li>
						<li><a href="top?typeid=3" <c:if test="${flag==8}">class="active"</c:if>>新品</a></li>
						<c:if test="${sessionScope.user==null}">
							<li><a href="register?flag=-1" <c:if test="${flag==5}">class="active"</c:if>>注册</a></li>
							<li><a href="login?flag=-1" <c:if test="${flag==6}">class="active"</c:if>>登录</a></li>
						</c:if>
						<c:if test="${sessionScope.user!=null}">
							<li><a href="order" <c:if test="${flag==3}">class="active"</c:if>>我的订单</a></li>
							<li><a href="my" <c:if test="${flag==4}">class="active"</c:if>>个人中心</a></li>
							<li><a href="logout">退出</a></li>
						</c:if>
						<li><a href="../admin.jsp" target="_blank">后台管理</a></li>
					</ul> 
					<!--/.navbar-collapse-->
				</div>
				<!--//navbar-header-->
			</nav>
			<div class="header-info">
				<div class="header-right search-box">
					<a href="javascript:;"><span class="glyphicon glyphicon-search" aria-hidden="true"></span></a>				
					<div class="search">
						<form class="navbar-form" action="search">
							<input type="text" class="form-control" name="name">
							<button type="submit" class="btn btn-default" aria-label="Left Align">搜索</button>
						</form>
					</div>	
				</div>
				<div class="header-right cart">
					<a href="cart">
						<span class="glyphicon glyphicon-shopping-cart" aria-hidden="true"><span class="card_num">${order.amount==null ? '' :order.amount}</span></span>
					</a>
				</div>
				<div class="header-right login">
					<a href="my"><span class="glyphicon glyphicon-user" aria-hidden="true">${sessionScope.user.username}</span></a>
				</div>
				<div class="clearfix"> </div>
			</div>
			<div class="clearfix"> </div>
		</div>
	</div>
	<!--//header-->

</body>
</html>