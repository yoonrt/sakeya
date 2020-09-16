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

<script type="text/javascript" src="js/headerjs.js">
     
	</script>
<script type="text/javascript" src="js/mypage.js"></script>

</head>
<body>

	<div class="top">
		<div class="wrapper">
			<div class="topnav">

				<a class="active" href="SakeyaServlet?command=customer1">고객센터</a> <a
					href="SakeyaServlet?command=mypage">마이페이지</a> <a
					href="SakeyaServlet?command=cart_list">장바구니</a>
				<c:choose>
					<c:when test="${empty sessionScope.loginUser}">
						<a href="SakeyaServlet?command=login_form">로그인</a>
						<a href="SakeyaServlet?command=contract">회원가입</a>
						<a href="SakeyaServlet?command=admin_login_form">관리자</a>
					</c:when>
					<c:otherwise>
						<li style="color: black"><a
							href="SakeyaServlet?command=logout">로그아웃</a>
							${sessionScope.loginUser.name}(${sessionScope.loginUser.id})</li>

					</c:otherwise>
				</c:choose>
			</div>



		</div>
	</div>
	<div class="header">
		<div class="wrapper">
			<div class="headernav">
				<span class="sidebar-container">
					<div id="sideNavid" class="sidenav">
						<a href="javascript:void(0)" style="font-size: 30px;"
							class="closebtn" onclick="closeNav()">&times;</a> <a href="#"><img src = "image/sakeyaside.png" width = "200px" height = "200px"></a>메뉴2</a> <a href="#">메뉴1</a> <a
							href="#">메뉴2</a>
					</div> <span style="font-size: 30px; cursor: pointer" onclick="openNav()">&#9776;</span>

				</span> <span class="logo-container"> <a
					href="SakeyaServlet?command=index"> <img
						src="image/sakeyalogo.png" width="230px" height="110px"
						onError="this.style.visibility='hidden'">
				</a>
				</span>

				<!-- <div class ="search-container">
               <input class ="searchbar" type="text" name ="" placeholder="검색">
               <div class ="searchbtn">
                   <a href="#search"><i class= "fas fa-search"></i></a>
               </div> -->
				<div class="buscar-caja">
					<input type="text" name="" class="buscar-txt"
						placeholder="search..." /> <a class="buscar-btn"> <i
						class="fa fa-search"></i>
					</a>
				</div>
			</div>
		</div>

	</div>

</body>
</html>