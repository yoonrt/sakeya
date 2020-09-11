<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0"
	charset="UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap.css">

<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.1/css/all.css">
<!-- 폰트 어썸 -->
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">

<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" type="text/css" href="css/headercss.css">
<link rel="stylesheet" type="text/css" href="css/default.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
<link rel="icon" type="image/png" href="images/sake.ico">
<script type ="text/javascript" src = "js/mypage.js"></script>
</head>
<body>
<style>
* {
  box-sizing: border-box;
}
 
html,
body {
  width: 100%;
  height: 100%;
  margin: 0;
  background-color: white;
  font-family: 'Roboto', sans-serif;
}
.shopping-cart {
	
  width: 1024px;
  margin: 0 auto;
  background: #FFFFFF;
  box-shadow: 1px 2px 3px 1px rgba(0,0,0,0.10); 
  border-radius: 6px;
 
  display: flex;
  flex-direction: column;
}
.title {
  height: 60px;
  border-bottom: 1px solid #E1E8EE;
  padding: 20px 30px;
  color: #5E6977;
  font-size: 20px;
  font-weight: 400;
}
 
.item {
  padding: 20px 30px;
  height: 120px;
  display: flex;
}
 
.item:nth-child(3) {
  border-top:  1px solid #E1E8EE;
  border-bottom:  1px solid #E1E8EE;
}
.cart-buttons {
  position: relative;
  padding-top: 30px;
  margin-right: 60px;
}
.cart-buttons .delete-btn,
.cart-buttons .like-btn {
  display: inline-block;
  Cursor: pointer;
}
.cart-buttons .delete-btn {
  width: 18px;
  height: 17px;
  background: url(&amp;quot;delete-icn.svg&amp;quot;) no-repeat center;
}
 
.cart-buttons .like-btn {
  position: absolute;
  top: 9px;
  left: 15px;
  background: url('twitter-heart.png');
  width: 60px;
  height: 60px;
  background-size: 2900%;
  background-repeat: no-repeat;
}
.is-active {
  animation-name: animate;
  animation-duration: .8s;
  animation-iteration-count: 1;
  animation-timing-function: steps(28);
  animation-fill-mode: forwards;
}
 
@keyframes animate {
  0%   { background-position: left;  }
  50%  { background-position: right; }
  100% { background-position: right; }
}
.cart-image {
  margin-right: 50px;
}
 
Let’s add some basic style to  product name and description.
.description {
  padding-top: 10px;
  padding-right: 30px;
  margin-right: 50px;
  width: 120px;
}
 
.description span {
  display: block;
  font-size: 14px;
  color: #43484D;
  font-weight: 400;
}
 
.description span:first-child {
  margin-bottom: 5px;
}
.description span:last-child {
  font-weight: 300;
  margin-top: 8px;
  color: #86939E;
}
.quantity {
  padding-top: 20px;
  margin-right: 60px;
  text-align:center;
  padding-left: 150px;
}
.quantity input {
  -webkit-appearance: none;
  border: none;
  text-align: center;
  width: 32px;
  font-size: 16px;
  color: #43484D;
  font-weight: 300;
}
 
button[class*=btn] {
  width: 30px;
  height: 30px;
  background-color: #E1E8EE;
  border-radius: 6px;
  border: none;
  cursor: pointer;
}

 
button:focus,
input:focus {
  outline:0;
}
.total-price {
	
  width: 83px;
  padding-top: 27px;
  padding-left:150px;
  text-align: center;
  font-size: 16px;
  color: #43484D;
  font-weight: 300;
}
@media (max-width: 800px) {
  .shopping-cart {
    width: 100%;
    height: auto;
    overflow: hidden;
  }
  .item {
    height: auto;
    flex-wrap: wrap;
    justify-content: center;
  }
  .image img {
    width: 50%;
  }
  .image,
  .quantity,
  .description {
    width: 100%;
    text-align: center;
    margin: 6px 0;
  }
  .cart-buttons {
    margin-right: 20px;
  }
}
</style>
<div class="shopping-cart">
  <!-- Title -->
  <div class="title">
    	장바구니
  </div>
 
  <!-- Product #1 -->
  <form name="formm" method="post">
  <c:choose>
				<c:when test="${cartList.size() == 0}">
					<h3 style="color: red; text-align: center;">장바구니가 비었습니다.</h3>
				</c:when>
				<c:otherwise>
				
					<c:forEach items="${cartList}" var="cartVO">
					
					<a href="SakeyaServlet?command=product_detail&pseq=${cartVO.pseq}">
					<input type="checkbox" name="cseq" value= "${cartVO.cseq}">
  <div class="item">
    <div class="cart-buttons">
      <a href="#" class="fas fa-trash-alt" onclick="go_cart_delete()"></a>
<!--       <span class="like-btn"></span> -->
    </div>
 	<input type="hidden" name="cseq" value="${cartVO.cseq}">
    <div class="cart-image">
     <a href="SakeyaServlet?command=product_detail&pseq=${cartVO.pseq}"> <img src ="image/${cartVO.image }" ></a>
    </div>
 
    <div class="description">
    <a href="SakeyaServlet?command=product_detail&pseq=${cartVO.pseq}"> 
      <span>${cartVO.pname}</span>
      </a>
      <span><fmt:formatDate value="${cartVO.indate}" type="date" /></span>
    </div>
 
    <div class="quantity">
      <button class="plus-btn" type="button" name="button" onclick='javascript_:change(1);'>
        <a class="fas fa-plus" onclick='javascript_:change(1);'></a>
      </button>
      <input type="text" name="name" value="${cartVO.quantity}">
      <button class="minus-btn" type="button" name="button">
        <i class="fas fa-minus"></i>
      </button>
    </div>
 
    <div class="total-price">
    <fmt:formatNumber value="${cartVO.price2*cartVO.quantity}" type="currency" />
	</div>
  </div>
  	</c:forEach>
  </c:otherwise>
			</c:choose>
  
  <div id="buttons" style="float: right">
				<input type="button" value="쇼핑 계속하기" class="cancel"
					onclick="location.href='SakeyaServlet?command=index'">
				<c:if test="${cartList.size() != 0}">
					<input type="button" value="주문하기" class="submit"
						onclick="go_order_insert()">
				</c:if>
			</div>
</form>
</div>

<!-- <script src = "js/mypage.js"> -->


<!-- </script> -->
</body>
</html>