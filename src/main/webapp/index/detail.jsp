<%@ page language="java" contentType="text/html; charset=utf-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<title>商品详情</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	<link type="text/css" rel="stylesheet" href="css/bootstrap.css">
	<link type="text/css" rel="stylesheet" href="css/style.css">
	<link type="text/css" rel="stylesheet" href="css/flexslider.css">
	<script type="text/javascript" src="js/jquery.min.js"></script>
	<script type="text/javascript" src="js/jquery.flexslider.js"></script>
	<script type="text/javascript" src="js/bootstrap.min.js"></script>
	<script type="text/javascript" src="layer/layer.js"></script>
	<script type="text/javascript" src="js/cart.js"></script>
	<script>
		$(function() {
		  $('.flexslider').flexslider({
			animation: "slide",
			controlNav: "thumbnails"
		  });
		});
	</script>
</head>
<body>
	 
	<jsp:include page="header.jsp"/>
	
	<!--//single-page-->
	<div class="single">
		<div class="container">
			<div class="single-grids">				
				<div class="col-md-4 single-grid">		
					<div class="flexslider">
						<%-- <div class="thumb-image"> <img src="../${good.cover}" data-imagezoom="true" class="img-responsive"> </div> --%>
						<ul class="slides">
							<li data-thumb="../${good.cover}">
								<div class="thumb-image"> <img src="../${good.cover}" data-imagezoom="true" class="img-responsive"> </div>
							</li>
							<li data-thumb="../${good.image1}">
								 <div class="thumb-image"> <img src="../${good.image1}" data-imagezoom="true" class="img-responsive"> </div>
							</li>
							<li data-thumb="../${good.image2}">
							   <div class="thumb-image"> <img src="../${good.image2}" data-imagezoom="true" class="img-responsive"> </div>
							</li> 
						</ul>
					</div>
				</div>	
				<div class="col-md-4 single-grid simpleCart_shelfItem">		
					<h3>${good.name}</h3>
					<div class="tag">
						<p>分类 : <a href="goods?typeid=${good.type.id}">${good.type.name}</a></p>
					</div>
					<p>介绍: ${good.intro}</p>
					<div class="galry">
						<div class="prices">
							<h5 class="item_price">¥ ${good.price}</h5>
						</div>
						<div class="clearfix"></div>
					</div>
					<div class="btn_form">
						<a href="javascript:;" class="add-cart item_add" onclick="buy(${good.id})">加入购物车</a>	
					</div>
				</div>
				<div class="col-md-4 single-grid1">
					<!-- <h2>商品分类</h2> -->
					<ul>
						<c:forEach var="type" items="${typeList}">
							<li><a href="goods?typeid=${type.id}">${type.name}</a></li>
						</c:forEach>
					</ul>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
	
	<!--related-products--><!-- 
	<div class="related-products">
		<div class="container">
			<h3>猜你喜欢</h3>
			<div class="product-model-sec single-product-grids">
				<div class="product-grid single-product">
					<a href="single.html">
					<div class="more-product"><span> </span></div>						
					<div class="product-img b-link-stripe b-animate-go  thickbox">
						<img src="images/m1.png" class="img-responsive" alt="">
						<div class="b-wrapper">
						<h4 class="b-animate b-from-left  b-delay03">							
						<button>View</button>
						</h4>
						</div>
					</div>
					</a>					
					<div class="product-info simpleCart_shelfItem">
						<div class="product-info-cust prt_name">
							<h4>Product #1</h4>								
							<span class="item_price">$2000</span>
							<div class="ofr">
							  <p class="pric1"><del>$2300</del></p>
							  <p class="disc">[15% Off]</p>
							</div>
							<div class="clearfix"> </div>
						</div>												
					</div>
				</div>
				<div class="clearfix"> </div>
			</div>
		</div>
	</div>
 -->	<!--related-products-->	
	
	<jsp:include page="footer.jsp"/>

</body>
</html>