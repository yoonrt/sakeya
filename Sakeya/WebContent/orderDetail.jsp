<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1.0" charset="UTF-8">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap.css">

 <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css"> <!-- 폰트 어썸 -->
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
    <link rel="stylesheet"
     href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
     <link rel="stylesheet" type = "text/css" href = "css/headercss.css">
     <link rel="stylesheet" type="text/css" href="css/default.css">
<link rel="stylesheet" type="text/css" href="css/style.css">
 <script type="text/javascript" src ="js/headerjs.js">
	</script>
<%@ include file="header.jsp" %> 
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%@ include file="sub_menu.jsp" %>
<h2> My Page(주문 상세 정보) </h2>
 <form name="formm" method="post">
 <h3> 주문자 정보 </h3> 
 <table id="cartList"> 
 <tr>
 <th>주문일자</th> <th>주문번호</th> <th>주문자</th>
 <th> 주문 총액</th> 
 </tr> 
 <tr> 
 <td> <fmt:formatDate value="${orderDetail.indate}" type="date"/></td>
 <td> ${orderDetail.oseq} </td> 
 <td> ${orderDetail.mname} </td>
 <td> <fmt:formatNumber value="${orderVO.price2*orderVO.quantity}" type="currency"/> </td>
 </tr> 
 </table> 
 <h3> 주문 상품 정보 </h3> 
 <table id="cartList">
 <tr>
 <th>상품명</th> <th>상품별주문번호</th> <th>수량</th>
 <th>가격</th> <th>처리 상태</th> 
 </tr>
 <c:forEach items="${orderList}" var="orderVO">
 <tr>
 <td> ${orderVO.pname} </td>
 <td> ${orderVO.odseq} </td> 
 <td> ${orderVO.quantity} </td>
 <td> <fmt:formatNumber type="currency"
value="${totalPrice}" /> </td>
 <td>
 <c:choose>
 <c:when test='${orderVO.result=="1"}'> 진행중 </c:when>
 <c:otherwise> <span style="color:red"> 처리완료 </span></c:otherwise>
 </c:choose>
 </td>
 </tr>
 </c:forEach> 
 </table> 
 <div class="clear"></div>
 <div id="buttons" style="float: right">
 <input type="button" value="쇼핑 계속하기" class="cancel" 
onclick="location.href='SakeyaServlet?command=index'">
 </div>
 </form> 
</body>

</html>