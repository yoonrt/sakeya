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
<link
	href="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css"
	rel="stylesheet" id="bootstrap-css">
<script
	src="//maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
<script
	src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script type="text/javascript" src="js/mypage.js"></script>
</head>
<body>
	<style>
.cartwrapper {
	padding-top: 50px;
	margin: 0 auto;
	width: 1080px;
	padding-bottom: 10px;
}

.product-image {
	float: left;
	width: 20%;
}

.product-details {
	float: left;
	width: 37%;
}

.product-price {
	float: left;
	width: 12%;
}

.product-quantity {
	float: left;
	width: 10%;
}

.product-removal {
	float: left;
	width: 9%;
}

.product-line-price {
	float: left;
	width: 12%;
	text-align: right;
}

/* This is used as the traditional .clearfix class */
.group:before, .shopping-cart:before, .column-labels:before, .product:before,
	.totals-item:before, .group:after, .shopping-cart:after, .column-labels:after,
	.product:after, .totals-item:after {
	content: '';
	display: table;
}

.group:after, .shopping-cart:after, .column-labels:after, .product:after,
	.totals-item:after {
	clear: both;
}

.group, .shopping-cart, .column-labels, .product, .totals-item {
	zoom: 1;
}

/* Apply clearfix in a few places */
/* Apply dollar signs */
.product .product-price:before, .product .product-line-price:before,
/* 	.totals-value:before { */
/* 	content: '$'; */
/* } */

/* Body/Header stuff */
body {
	padding: 0px 30px 30px 20px;
	font-family: "HelveticaNeue-Light", "Helvetica Neue Light",
		"Helvetica Neue", Helvetica, Arial, sans-serif;
	font-weight: 100;
}

h1 {
	font-weight: 100;
}

label {
	color: #aaa;
}

.shopping-cart {
	margin-top: -45px;
}

/* Column headers */
.column-labels label {
	padding-bottom: 15px;
	margin-bottom: 15px;
	border-bottom: 1px solid #eee;
}

.column-labels .product-image, .column-labels .product-details,
	.column-labels .product-removal {
	text-indent: -9999px;
}

/* Product entries */
.product {
	margin-bottom: 20px;
	padding-bottom: 10px;
	border-bottom: 1px solid #eee;
}

.product .product-image {
	text-align: center;
}

.product .product-image img {
	width: 100px;
}

.product .product-details .product-title {
	margin-right: 20px;
	font-family: "HelveticaNeue-Medium", "Helvetica Neue Medium";
}

.product .product-details .product-description {
	margin: 5px 20px 5px 0;
	line-height: 1.4em;
}

.product .product-quantity input {
	width: 40px;
}

.product .remove-product {
	border: 0;
	padding: 4px 8px;
	background-color: #c66;
	color: #fff;
	font-family: "HelveticaNeue-Medium", "Helvetica Neue Medium";
	font-size: 12px;
	border-radius: 3px;
}

.product .remove-product:hover {
	background-color: #a44;
}

/* Totals section */
.totals .totals-item {
	float: right;
	clear: both;
	width: 100%;
	margin-bottom: 10px;
}

.totals .totals-item label {
	float: left;
	clear: both;
	width: 79%;
	text-align: right;
}

.totals .totals-item .totals-value {
	float: right;
	width: 21%;
	text-align: right;
}

.totals .totals-item-total {
	font-family: "HelveticaNeue-Medium", "Helvetica Neue Medium";
}

.checkout {
	float: right;
	border: 0;
	margin-top: 20px;
	padding: 6px 25px;
	background-color: #6b6;
	color: #fff;
	font-size: 25px;
	border-radius: 3px;
}

.checkout:hover {
	background-color: #494;
}

/* Make adjustments for tablet */
@media screen and (max-width: 650px) {
	.shopping-cart {
		margin: 0;
		padding-top: 20px;
		border-top: 1px solid #eee;
	}
	.column-labels {
		display: none;
	}
	.product-image {
		float: right;
		width: auto;
	}
	.product-image img {
		margin: 0 0 10px 10px;
	}
	.product-details {
		float: none;
		margin-bottom: 10px;
		width: auto;
	}
	.product-price {
		clear: both;
		width: 70px;
	}
	.product-quantity {
		width: 100px;
	}
	.product-quantity input {
		margin-left: 20px;
	}
	.product-quantity:before {
		content: 'x';
	}
	.product-removal {
		width: auto;
	}
	.product-line-price {
		float: right;
		width: 70px;
	}
}
/* Make more adjustments for phone */
@media screen and (max-width: 350px) {
	.product-removal {
		float: right;
	}
	.product-line-price {
		float: right;
		clear: left;
		width: auto;
		margin-top: 10px;
	}
	.product .product-line-price:before {
		content: 'Item Total: $';
	}
	.totals .totals-item label {
		width: 60%;
	}
	.totals .totals-item .totals-value {
		width: 40%;
	}
}

/* Make more adjustments for phone */
@media screen and (max-width: 350px) {
	.product-removal {
		float: right;
	}
	.product-line-price {
		float: right;
		clear: left;
		width: auto;
		margin-top: 10px;
	}
	.product .product-line-price:before {
		content: 'Item Total: $';
	}
	.totals { .totals-item { label { width:60%;
		
	}
	.totals-value {
		width: 40%;
	}
}
}
}
</style>
	<div class="cartwrapper">
<!-- 		<h1>Shopping Cart</h1> -->

		<div class="shopping-cart">
	<form name="formm" method="post">
				<input type="hidden" value=2 name="identify">
				<c:choose>
				<c:when test= "${cartList.size() == 0}">
				<h3 style="color: red;text-align: center;"> 장바구니가 비었습니다. </h3> 
                </c:when>
                <c:otherwise>
			
			<div class="column-labels">
 <!-- 				<label class="product-image">Image</label>  -->
			<label class="product-price" style="width: 400px;">Product</label> <label
					class="product-price">Price</label> <label class="product-quantity">Quantity</label>
				<label class="product-removal">Remove</label> <label
					class="product-line-price">Total</label>
			</div>

				<div class="product">
					<c:forEach items="${cartList}" var="cartVO">
			
				 	
					<div class="product-image">
<!-- 						<img src="images/nike.jpg"> -->
					</div>
					<div class="product-details">
						<div class="product-title"> <a href="SakeyaServlet?command=product_detail&pseq=${cartVO.pseq}">${cartVO.pname}</a></div>
						<p class="product-description"><fmt:formatDate value="${cartVO.indate}" type="date" /></p>
					</div>
					<div class="product-price" id="ticket_price">${cartVO.price2}원</div>
					<div class="product-quantity">
						<input type="number" value="${cartVO.quantity}" min="1" style="width:30px" id="num" oninput="calc()">
					</div>
					<div class="product-removal">
						<input type="checkbox" name="cseq" value= "${cartVO.cseq}">
					</div>
					<div class="product-line-price"><b id ="total">${cartVO.price2}원</b></div>
				</div>

 			</c:forEach>
				<div class="totals">
					<div class="totals-item">
						<label>Subtotal</label>
						<div class="totals-value" id="cart-subtotal"><fmt:formatNumber value="${cartVO.price2}" type="currency"/></div>
					</div>
					<div class="totals-item">
						<label>배송비</label>
						<div class="totals-value" id="cart-tax">0</div>
					</div>
<!-- 					<div class="totals-item"> -->
<!-- 						<label>Shipping</label> -->
<!-- 						<div class="totals-value" id="cart-shipping">15.00</div> -->
<!-- 					</div> -->
					<div class="totals-item totals-item-total">
						<label>Grand Total</label>
						<div class="totals-value" id="cart-total"><fmt:formatNumber value="${totalPrice}"
								type="currency" /></div>
					</div>
				</div>
				</c:otherwise>
				</c:choose>

				<c:if test= "${cartList.size() != 0}">
						<span class="order"> <a class="text-center"  class="submit" onclick="go_order_insert()">ORDER</a></span>
						</c:if>
						<span class="order"> <a class="text-center" onclick="go_cart_delete()">Delete</a></span>
					   
					    
					
					</form>
		</div>
	</div>


	<script>
	function calc() 
    {
      var price = document.getElementById("ticket_price").innerHTML;
      var noTickets = document.getElementById("num").value;
      var total = parseFloat(price) * noTickets
      if (!isNaN(total))
        document.getElementById("total").innerHTML = total+"원"
    }

// 	$(document).ready(function() {
	 
// 	/* Set rates + misc */
// 	var taxRate = 0.05;
// 	var shippingRate = 15.00; 
// 	var fadeTime = 300;
	 
	 
// 	/* Assign actions */
// 	$('.product-quantity input').change( function() {
// 	  updateQuantity(this);
// 	});
	 
// 	$('.product-removal button').click( function() {
// 	  removeItem(this);
// 	});
	 
	 
// 	/* Recalculate cart */
// 	function recalculateCart()
// 	{
// 	  var subtotal = 0;
	   
// 	  /* Sum up row totals */
// 	  $('.product').each(function () {
// 	    subtotal += parseFloat($(this).children('.product-line-price').text());
// 	  });
	   
// 	  /* Calculate totals */
// 	  var tax = subtotal * taxRate;
// 	  var shipping = (subtotal > 0 ? shippingRate : 0);
// 	  var total = subtotal + tax + shipping;
	   
// 	  /* Update totals display */
// 	  $('.totals-value').fadeOut(fadeTime, function() {
// 	    $('#cart-subtotal').html(subtotal.toFixed(2));
// 	    $('#cart-tax').html(tax.toFixed(2));
// 	    $('#cart-shipping').html(shipping.toFixed(2));
// 	    $('#cart-total').html(total.toFixed(2));
// 	    if(total == 0){
// 	      $('.checkout').fadeOut(fadeTime);
// 	    }else{
// 	      $('.checkout').fadeIn(fadeTime);
// 	    }
// 	    $('.totals-value').fadeIn(fadeTime);
// 	  });
// 	}
	 
	 
// 	/* Update quantity */
// 	function updateQuantity(quantityInput)
// 	{
// 	  /* Calculate line price */
// 	  var productRow = $(quantityInput).parent().parent();
// 	  var price = parseFloat(productRow.children('.product-price').text());
// 	  var quantity = $(quantityInput).val();
// 	  var linePrice = price * quantity;
	   
// 	  /* Update line price display and recalc cart totals */
// 	  productRow.children('.product-line-price').each(function () {
// 	    $(this).fadeOut(fadeTime, function() {
// 	      $(this).text(linePrice.toFixed(2));
// 	      recalculateCart();
// 	      $(this).fadeIn(fadeTime);
// 	    });
// 	  });  
// 	}
	 
	 
// 	/* Remove item from cart */
// 	function removeItem(removeButton)
// 	{
// 	  /* Remove row from DOM and recalc cart total */
// 	  var productRow = $(removeButton).parent().parent();
// 	  productRow.slideUp(fadeTime, function() {
// 	    productRow.remove();
// 	    recalculateCart();
// 	  });
// 	}
	 
// 	});
	 

	 </script>
</body>
</html>