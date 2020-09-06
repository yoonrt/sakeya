<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!doctype html>
<html>
<head>
<link rel="icon" type="image/png" href="images/sake.ico">
<meta charset="utf-8">
</head>
<body>
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

.list li {
	position: relative;
	width: 35%;
	float: left;
	margin: 1%;
}

.list a {
	display: block;
	border: 1px solid #ccc;
	text-decoration: none;
	color: gray;
}

.list .img {
	width: 100%;
}

.list h2 {
	padding: 5px;
}

.list p {
	padding: 0 5px 5px;
}

.list .mark {
	overflow: hidden;
	position: absolute;
	left: -10px;
	top: -10px;
	width: 150px;
	height: 100px;
}

.list .mark div {
	width: 100px;
	background: skyblue;
	transform: rotate(-45deg) translate(-25px, -10px);
	text-align: center;
	font-size: 15px;
	color: #fff;
}

.list li:hover {
	border-color: #333333;
}
</style>
	<div class="wrapper">
		<ul class="list">
			<li><a href="SakeyaServlet?command=product_detail&pseq"> <img src="image/${productVO.image }" alt=""
					class="img">
					<h2>${productVO.name }</h2>
					<h4>${productVO.price2}원</h4>
					<p>발매일 ${productVO.indate }</p>
			</a>
				<div class="mark">
					<div>NEW</div>
				</div></li>
			<li><a href="SakeyaServlet?command=product_detail&pseq"> <img src="images/sakeUragazanryu.jpg"
					alt="" class="img">
					<h2>Uragazanryu</h2>
					<p>발매일 2020.08.27</p>
			</a>
				<div class="mark">
					<div>NEW</div>
				</div></li>

			<li><a href="#a"> <img src="images/sake2.jpg" alt=""
					class="img">
					<h2>Yukikage “Snow Shadow”</h2>
					<p>발매일 2020.08.27</p>
			</a>
				<div class="mark">
					<div>NEW</div>
				</div></li>

			<li><a href="#a"> <img src="images/sakekinmiyas.JPG" alt=""
					class="img">
					<h2>kinmiya</h2>
					<p>
						발매일 2020.08.27<br> An ultra classic shochu very widespread in
						Japan. Produced in Mie by Miyazaki Honten distillery. The base
						product is molasses, the region's specialty. Light and creamy, it
						is to be enjoyed fresh with a few yakitori skewers!
					</p>
			</a>
				<div class="mark">
					<div>NEW</div>
				</div></li>


		</ul>
</body>
</div>
</html>