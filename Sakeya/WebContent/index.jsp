<%-- <%@ page language="java" contentType="text/html; charset=UTF-8" --%>
<%-- 	pageEncoding="UTF-8"%> --%>
<!-- <!DOCTYPE html> -->
<!-- <html> -->
<!-- <head> -->
<!-- <meta charset="UTF-8"> -->
<!-- <!-- <link rel="stylesheet" type="text/css" href="css/default.css"> --> -->
<!-- <!-- <link rel="stylesheet" type="text/css" href="css/style.css"> --> -->
<!-- <!-- <link rel="icon" type="image/png" href="images/sake.ico"> --> -->
<!-- <title>Insert title here</title> -->
<!-- <style> -->
/* .wrapper { */
/* 	margin: 0 auto; */
/* 	width: 1024px; */
/* 	padding-bottom: 10px */
/* } */

/* * { */
/* 	padding: 0; */
/* 	margin: 0; */
/* } */

/* body { */
/* 	padding: 50px; */
/* } */

/* li { */
/* 	list-style: none; */
/* } */

/* .product_list li { */
/* 		float: left; */
/* 	margin: 10px; */
/* 	position: relative; */
/* 	width: 210px; */
/* 	height: 290px; */
/* 	border: none; */
/* 	padding: 10px; */
	
/* } */

/* .product_list a { */
/* 	display: block; */
/* 	border: none; */
/* 	text-decoration: none; */
/* 	color: gray; */
/* } */

/* .product_list .newimg { */
/* /* 	text-align: center; */ */
/* 	width: 210px; */
/* 	height: 250px; */
	
/* } */

/* .product_list h2 { */
/* /* 	padding: 5px; */ */
/* } */

/* .product_list p { */
/* /* 	padding: 0 5px 5px; */ */
/* } */

/* .product_list .mark { */
/* 	overflow: hidden; */
/* 	position: absolute; */
/* 	left: -10px; */
/* 	top: -10px; */
/* 	width: 150px; */
/* 	height: 100px; */
/* } */

/* .product_list .mark div { */
/* 	width: 30px; */
/* 	background: skyblue; */
/* 	transform: rotate(-45deg) translate(-25px, -10px); */
/* 	text-align: center; */
/* 	font-size: 15px; */
/* 	color: #fff; */
/* } */

/* .product_list li:hover { */
/* 	border-color: #333333; */
/* } */
<!-- </style> -->
<!-- </head> -->
<!-- <body> -->
<%-- 	<%@ include file ="header.jsp" %> --%>
<%-- 	<%@ include file ="navigation.jsp" %> --%>
<!-- 	<div class ="wrapper"> -->
	
	
<!-- 	<div id = "front"> -->
<!-- <!-- 	신상품 리스트 --> -->
<!-- 	<h2 style= "padding:5px;"> New Item</h2> -->
<!-- 	 <div id="bestProduct" style ="padding-bottom: 30px;" >  -->
<%-- 	 <c:forEach items="${newProductList }" var="productVO"> --%>

<!-- 		<ul class="product_list"> -->
<%-- 			<li><a href="SakeyaServlet?command=product_detail&pseq=${productVO.pseq}"> <img class ="newimg" src="image/${productVO.image }" alt="" --%>
<!-- 					class="img"> -->
<%-- 					<h2>${productVO.name }</h2> --%>
<%-- 					<h4>${productVO.price2}원</h4> --%>
					
<!-- 			</a> -->
<!-- <!-- 			<div class="mark"> --> -->
<!-- <!-- 					<div>NEW</div> --> -->
<!-- <!-- 				</div> --> -->
<!-- 				</li> -->
<!-- 		</ul> -->
		
<%-- 	</c:forEach> --%>
<!-- 	</div> -->
	
<!-- 	<br> -->
<!-- 	<br> -->
	
	
<!-- 	<!-- 인기상품 리스트 --> -->
<!-- 		<h2 style= "padding:5px;"> Best Item</h2> -->
<!-- 	 <div id="bestProduct">  -->
<%-- 	 <c:forEach items="${bestProductList }" var="productVO"> --%>

<!-- 		<ul class="product_list"> -->
	
<!-- 		<li> -->
<!-- 			<dl> -->
<!-- 				<dt> -->
<%-- 					<a href="SakeyaServlet?command=product_detail&pseq=${productVO.pseq}">${productVO.name }</a> --%>
<!-- 				</dt> -->
<!-- 				<dd class="listimg"> -->
<%-- 					<a href="#a"><img src="image/${productVO.image }" alt=""></a> --%>
<!-- 				</dd> -->
<%-- 				<dd class="listprice">${productVO.price2}</dd> --%>
<!-- 				<dd class="listbtm"> -->
<%-- 					<div>${productVO.pseq }</div> --%>
<!-- 					<div> -->
<!-- 						<a href="#a"><img src="image/ico_heart.jpg" alt=""> 찜 -->
<!-- 							21</a> -->
<!-- 					</div> -->
<!-- 				</dd> -->
<!-- 			</dl> -->
<!-- 		</li> -->
<!-- 		</ul> -->
<%-- 	</c:forEach> --%>
<!-- 	</div> -->
<!-- 	</div> -->
<%-- 		<%@ include file ="footer.jsp" %> --%>
<!-- </body> -->
<!-- </html> -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<!-- <link rel="stylesheet" type="text/css" href="css/default.css"> -->
<!-- <link rel="stylesheet" type="text/css" href="css/style.css"> -->
<!-- <link rel="icon" type="image/png" href="images/sake.ico"> -->
<title>Insert title here</title>
<style>
.wrapper {
	margin: 0 auto;
	width: 1024px;
	padding-bottom: 10px
}

* {
	padding: 0;
	margin: 0;
}

body {
	padding: 50px;
}

li {
	list-style: none;
}

.product_list li {
		float: left;
	margin: 10px;
	position: relative;
	width: 210px;
	height: 290px;
	border: none;
	padding: 10px;
	
}

.product_list a {
	display: block;
	border: none;
	text-decoration: none;
	color: gray;
}

.product_list .newimg {
/* 	text-align: center; */
	width: 210px;
	height: 250px;
	
}

.product_list h2 {
/* 	padding: 5px; */
}

.product_list p {
/* 	padding: 0 5px 5px; */
}

.product_list .mark {
	overflow: hidden;
	position: absolute;
	left: -10px;
	top: -10px;
	width: 150px;
	height: 100px;
}

.product_list .mark div {
	width: 30px;
	background: skyblue;
	transform: rotate(-45deg) translate(-25px, -10px);
	text-align: center;
	font-size: 15px;
	color: #fff;
}

.product_list li:hover {
	border-color: #333333;
}
.itemList{
display:flex;
flex-wrap:wrap;
}
.itemTitle {
	text-align:center;
	margin-bottom:5px
}

.itemPrice {
	text-align:center;}
.item {
display:flex;
flex-direction:column;
width: 225px;
margin-right: 18px;
min-height: 360px;
}
.itemPicture {
background: white
}
.itemDescription {
	
}
.productHeader {
	
    width: 110px;
    text-align: center;
    margin: 0 auto 20px;
    padding-bottom: 10px;
    font-size: 20px;
    font-weight: 300;
    line-height: 1;
    color: #323232;
    letter-spacing: -.03em;
    border-bottom: 1px solid #b3b3b3;
}
</style>
</head>
<body>
	<%@ include file ="header.jsp" %>
	<%@ include file ="navigation.jsp" %>
	<div class ="wrapper">
	
	
	<div id = "front">
<!-- 	신상품 리스트 -->
	<h2 class="productHeader"> New Item</h2>
	<div id="newProduct">
		<ul class="itemList">
		<c:forEach items="${newProductList }" var="productVO">
			<li class="item">
				<div class="itemPicture">
					<a href="SakeyaServlet?command=product_detail&pseq=${productVO.pseq}">
					<img src="image/${productVO.image }" alt="" width="225" height="225">
					</a>
				</div>
				<div class="itemDescription">
					<div class="itemTitle">
					<a href="SakeyaServlet?command=product_detail&pseq=${productVO.pseq}" style="color: #000;text-decoration: none;">
					${productVO.name}
					</a>
					</div>
					<div class="itemPrice">
					<a>${productVO.price2}</a>
					</div>
				</div>
			</li>
		</c:forEach>
		</ul>
	</div>
	<br>
	<br>
	
	
	<!-- 인기상품 리스트 -->
	<h2 class="productHeader"> Best Item</h2>
	 <div id="bestProduct">
	 <ul class="itemList">
	 	<c:forEach items="${bestProductList }" var="productVO">
			<li class="item">
				<div class="itemPicture">
					<a href="SakeyaServlet?command=product_detail&pseq=${productVO.pseq}">
					<img src="image/${productVO.image }" alt="" width="225" height="225">
					</a>
				</div>
				<div class="itemDescription">
					<div class="itemTitle">
					<a href="SakeyaServlet?command=product_detail&pseq=${productVO.pseq}" style="color: #000;text-decoration: none;">
					${productVO.name}
					</a>
					</div>
					<div class="itemPrice">
					<a>${productVO.price2}</a>
					</div>
				</div>
			</li>
		</c:forEach>
	</ul>
	</div>
	</div>
		<%@ include file ="footer.jsp" %>
</body>
</html>