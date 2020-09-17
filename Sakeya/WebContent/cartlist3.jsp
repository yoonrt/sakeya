<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
<!DOCTYPE html>
<html>
	<head>
		<title>Shopping Cart</title>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
		<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
		<link rel="stylesheet" type="text/css" href="css/bootstrap.min123.css"/>
		<link rel="stylesheet" type="text/css" href="css/custom123.css"/>
		
		<style> 
.side_nav1{
	float: left;
}
.side_nav1 .nav ul .active{

} 
#aside{
        float: left;
        width: 190px;
        margin-left: 105px;
    }
</style>		
	</head>

	<body>
		
	<%@ include file="header.jsp" %>
	
	<script>
 function go_cart_delete() {
	 var count = 0;
	 if (document.formm.cseq.length == undefined) {
	 if (document.formm.cseq.checked == true) {
	     count++;
	 }
	 }
	 for ( var i = 0; i < document.formm.cseq.length; i++) {
	
	 if (document.formm.cseq[i].checked == true) {
	 count++;
	
	 }
	 }
	 if (count == 0) {
	 alert("삭제할 항목을 선택해 주세요.");
	 } else {
	 document.formm.action = "SakeyaServlet?command=cart_delete";
	 document.formm.submit();
	 }
	}
 function go_order_insert() {
	 document.formm.action = "SakeyaServlet?command=order_insert";
	 document.formm.submit();
	}

 </script>
		<div class="container-fluid breadcrumbBox text-center">	
				



		<div class="container text-center">

<!-- 			<div class="col-md-5 col-sm-12"> -->
<!-- 				<div class="bigcart"></div> -->
<%-- 				<h1>${sessionScope.loginUser.name}`s shopping cart</h1> --%> 
				
<!-- 			</div> -->


		<div class="wrapper">
			<div id="aside">
				<div class="side_nav1">
					<ul class="nav nav-pills nav-stacked">
						<li role="presentation" class="active"><a
							href="SakeyaServlet?command=index">Home</a></li>
						<li role="presentation"><a
							href="SakeyaServlet?command=cart_list">장바구니</a></li>
						<li role="presentation"><a
							href="SakeyaServlet?command=mypage">진행중인 주문</a></li>
						<li role="presentation"><a
							href="SakeyaServlet?command=order_all">총 주문</a></li>
					</ul>
				</div>
			</div>
			<div class="col-md-7 col-sm-12 text-left">
				<form name = "formm" method = "post"> 
				<input type ="hidden" value=2 name="identify">
				<c:choose>
				<c:when test= "${cartList.size() == 0}">
				<h3 style="color: red;text-align: center;"> 장바구니가 비었습니다. </h3> 
                </c:when>
                <c:otherwise>
                
				<ul>
					<li class="row list-inline columnCaptions">
						<span>QTY</span>
						<span>ITEM</span>
						<span>date</span>
						
						<span>Price</span>
					</li>
					
					<c:forEach items="${cartList}" var="cartVO">
					 <a href="SakeyaServlet?command=product_detail&pseq=${cartVO.pseq}">					
					<li class="row">
					    <span class="quantity">${cartVO.quantity}</span>
						<span class="itemName">${cartVO.pname}</span>
<%-- 						<span claee="pseq">${cartVO.pseq}</span>  --%>
						<a class=""></a></a>
						<span class="price"> <fmt:formatNumber value="${cartVO.price2*cartVO.quantity}" type="currency"/> </span>
						
					    <span class="date"><fmt:formatDate value="${cartVO.indate}" type="date"/></span>
						<span class="box"><input type="checkbox" name="cseq" value= "${cartVO.cseq}"></span>
						</li>
					    </c:forEach>
					
					
					
					<li class="row totals">
						<span class="itemName">Total:</span>
						<span class="price"><fmt:formatNumber value="${totalPrice}" type="currency"/></span>
						
						
						
						<c:if test= "${cartList.size() != 0}">
						<span class="order"> <a class="text-center"  class="submit" onclick="go_order_insert()">ORDER</a></span>
						</c:if>
						<span class="order"> <a class="text-center" onclick="go_cart_delete()">Delete</a></span>
					   
					    
					</li>
					</form>
									
			
			</c:otherwise>
			</c:choose>
			</div>
        
		</div>
        
		
		<!-- JavaScript includes -->

		<script src="http://code.jquery.com/jquery-1.11.0.min.js"></script> 
		<script src="js/bootstrap.min.js"></script>
		<script src="js/customjs.js"></script>
    
	</body>
</html>