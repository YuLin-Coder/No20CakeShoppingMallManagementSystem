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

	<nav class="navbar navbar-default" role="navigation">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand" href="">饮品店后台</a>
			</div>
			<div>
				<ul class="nav navbar-nav">
					<li <c:if test="${flag==1}">class="active"</c:if>><a href="orderList">订单管理</a></li>
					<li <c:if test="${flag==2}">class="active"</c:if>><a href="userList">客户管理</a></li>
					<li <c:if test="${flag==3}">class="active"</c:if>><a href="goodList">商品管理</a></li>
					<li <c:if test="${flag==4}">class="active"</c:if>><a href="typeList">类目管理</a></li>
					<li <c:if test="${flag==5}">class="active"</c:if>><a href="adminRe">修改密码</a></li>
					<li><a href="logout">退出</a></li>
				</ul>
			</div>
		</div>
	</nav>

</body>
</html>