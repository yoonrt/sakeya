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
</head>
<body>
	<%@ include file ="header.jsp" %>
	<%@ include file ="navigation.jsp" %>
	<div class ="wrapper">
	<h2>Item</h2>
	<c:forEach items="${productKindList }" var="productVO">
		<ul class="product_list">
		<li>
			<dl>
				<dt>
					<a href="SkeyaServlet?command=product_detail&pseq=${productVO.pseq}">${productVO.name}</a>
				</dt>
				<dd class="img">
					<a href="#a"><img src="image/${productVO.image }" alt=""></a>
				</dd>
				<dd class="price">${productVO.price2 }</dd>
				<dd class="btm">
					<div>77개구매</div>
					<div>
						<a href="#a"><img src="image/ico_heart.jpg" alt=""> 찜
							21</a>
					</div>
				</dd>
			</dl>
		</li>

		
	</ul>
	</c:forEach>
	</div>
		<%@ include file ="footer.jsp" %>
</body>
</html>