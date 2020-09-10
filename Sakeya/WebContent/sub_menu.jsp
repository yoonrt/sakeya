<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
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
<link rel="icon" type="image/png" href="images/sake.ico">
</head>
<body>
<style> 
.side_nav1{
	float: left;
}
.side_nav1 .nav ul .active{

} 
</style>
<div class = "wrapper">
<div class = "side_nav1">
<ul class="nav nav-pills nav-stacked">
  <li role="presentation" class="active"><a href="SakeyaServlet?command=index">Home</a></li>
    <li role="presentation"><a href="SakeyaServlet?command=cart_list">장바구니</a></li>
  <li role="presentation"><a href="SakeyaServlet?command=mypage">진행중인 주문</a></li>
  <li role="presentation"><a href="SakeyaServlet?command=order_all">총 주문</a></li>
</ul>
</div>
</div>
</body>
</html>