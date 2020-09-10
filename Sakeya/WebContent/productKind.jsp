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
<%-- 	<% String productkindno; %> --%>
<%-- 		<c:if test="${productVO.kind==1 }"> --%>
<%-- 		<% productkindno = "일본소주1"; %> --%>
<%-- 	</c:if> --%>
<%-- 	<c:if test="${param.kind==2 }"> --%>
<%-- 		<% productkindno = "일본소주2"; %> --%>
<%-- 	</c:if> --%>
<%-- 	<c:if test="${param.kind==3 }"> --%>
<%-- 		<% productkindno = "일본소주3"; %> --%>
<%-- 	</c:if> --%>
<%-- 	<c:if test="${param.kind==4 }"> --%>
<%-- 		<% productkindno = "일본소주4"; %> --%>
<%-- 	</c:if> --%>

<%-- 	<c:if test="${param.kind==6 }"> --%>
<%-- 		<% productkindno = "리큐르1"; %> --%>
<%-- 	</c:if> --%>
<%-- 	<c:if test="${param.kind==7 }"> --%>
<%-- 		<% productkindno = "리큐르2"; %> --%>
<%-- 	</c:if> --%>
<%-- 	<c:if test="${param.kind==8 }"> --%>
<%-- 		<% productkindno = "리큐르3"; %> --%>
<%-- 	</c:if> --%>
<%-- 	<c:if test="${param.kind==9 }"> --%>
<%-- 		<% productkindno = "리큐르4"; %> --%>
<%-- 	</c:if> --%>
	
<%-- 	<c:if test="${param.kind==5 }"> --%>
<%-- 		<% productkindno = "술잔/술병"; %> --%>
<%-- 	</c:if> --%>
	
	
		<div class ="wrapper">
		<div id = "front">
<%-- 	<h2><%out.println(productkindno);  %></h2> --%>
		<h2 class="productHeader"> Item </h2>
		<div id="newProduct">
		<ul class="itemList">
		<c:forEach items="${productKindList }" var="productVO">
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