<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	   <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>SAKEYA 마이페이지</title>
<link rel="icon" type="image/x-icon"
	href="../container/assets/favicon.ico" />
<link rel="stylesheet" href="css/mainIndex.css">
<link rel="stylesheet" href="css/common.pc.min.css">
<link rel="stylesheet" href="css/common.cjos.pc.min.css">
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.3/css/all.css">
<link rel="stylesheet" href="css/mainOriginIndex.css">
<link rel="stylesheet"
	href="css/page.pc.myzone-shopping.min.css">
<link rel="stylesheet" type="text/css"
	href="css/page.pc.account.min.css" />
<link rel="stylesheet"
	href="css/page.pc.myzone-main_v3.min.css">
<style>
	.zero_1{
		margin-left:150px;
		
	}
	.mypagetable th, .mypagetable td{
	width: 200px;
	text-align:center;
	
	}
</style>
</head>
<body>

		<div id="container">
			<div id="container">
				<div id="aside">
					<h2 class="tit_cs">
						<a href="SakeyaServlet?command=mypage">MY PAGE</a>
					</h2>
					<div class="cs_snb">
						<ul class="list_snb">
						<li>
					<a href="SakeyaServlet?command=index"><strong class="tit_sub">홈</strong></a></li>
							<li><strong class="tit_sub">나의 쇼핑정보</strong>
								<ul class="list_snb_sub">
									<li><a href="AllDelivStat.io"
										class="link_snb_sub" spcid="MYCJ____left__orderlist__">주문배송
											조회</a></li>
									<!-- <li>
                                    <a href="#" class="link_snb_sub" spcid="MYCJ____left__rent__">증빙서류 발급</a>
                                </li> -->
								</ul></li>
							<li><strong class="tit_sub">나의 계정설정</strong>
								<ul class="list_snb_sub">
									<li><a href="personalInfoSelect.io?userID=${userID }"
										class="link_snb_sub _btn_modify">회원정보수정</a></li>
									<!-- <li>
                                    <a href="#" class="link_snb_sub" spcid="MYCJ____left__pinfuse__">회원등급</a>
                                </li> -->
								</ul></li>
							<li><strong class="tit_sub">고객센터</strong>
								<ul class="list_snb_sub">
									<li><a href="SakeyaServlet?command=qna_list" class="link_snb_sub"
										spcid="MYCJ____left__zzimall__">1:1 문의내역</a></li>
									<!-- <li>
                                    <a href="#" class="link_snb_sub" spcid="MYCJ____left__tvpush__">공지사항</a>
                                </li> -->
									<li><a href="SakeyaServlet?command=customer1"
										class="link_snb_sub" spcid="MYCJ____left__foodstp__">FAQ</a></li>
								</ul></li>
						</ul>
					</div>
				</div>

				<div id="content">
					<div class="myzone_wrap">
						<div class="myzone_info_area">

							<!-- 마이존 메인 상단 고객정보 영역 -->
							<div class="_myzoneMainTopContainer">
								<div class="grade_area family">
									<div class="rank_area">
										<span class="rank"></span> 
									</div>
									<div class="name_area">
										<span class="name"> ${sessionScope.loginUser.name} </span>님
									</div>
									<a href="#"
										class="btn_benefit" spcid="MYCJ____cust__bfc__">등급혜택 /
										예상등급</a>
								</div>
							</div>

							<!-- 혜택별 잔액 -->
							<div class="_myzoneMoneyBalanceContainer">
								<div class="benefit_area_v2">
									<ul class="lst_benefit">
										<li><a href="#" spcid="MYCJ____cust__vipdc__"> <span
												class="tit" spcid="MYCJ____cust__vipdc__">VIP 즉시할인</span> <span
												class="bx_num" spcid="MYCJ____cust__vipdc__"> <span
													class="num" spcid="MYCJ____cust__vipdc__">0</span>원
											</span>
										</a></li>
										<li class=""><a href="#" spcid="MYCJ____cust__mileage__">
												<span class="tit" spcid="MYCJ____cust__mileage__">적립금</span>
												<span class="bx_num" spcid="MYCJ____cust__mileage__">
													<span class="num num" spcid="MYCJ____cust__mileage__">0</span>원
											</span>
										</a></li>
										<li class=""><a href="#" spcid="MYCJ____cust__onepnt__">
												<span class="tit" spcid="MYCJ____cust__onepnt__">보유포인트</span> <span class="bx_num" spcid="MYCJ____cust__onepnt__">
													<span class="num _cjonePoint"
													spcid="MYCJ____cust__onepnt__">0</span>P
											</span>
										</a></li>
										<li><a
											href="#"
											spcid="MYCJ____cust__cpn__"> <span class="tit"
												spcid="MYCJ____cust__cpn__">보유쿠폰</span> <span class="num num"
												spcid="MYCJ____cust__cpn__">0</span>장
										</a></li>
										<li><a
											href="#"
											spcid="MYCJ____cust__deposit__"> <span class="tit"
												spcid="MYCJ____cust__deposit__">예치금</span> <span
												class="num num" spcid="MYCJ____cust__deposit__">0</span>원
										</a></li>
										<li><a
											href="#"
											spcid="MYCJ____cust__cert__"> <span class="tit"
												spcid="MYCJ____cust__cert__">보유 상품권</span> <span
												class="num num" spcid="MYCJ____cust__cert__">0</span>원
										</a></li>
									</ul>
								</div>
							</div>

						</div>

						<!-- 주문/배송조회 -->
						<div class="_myzoneOrderShippingCountContainer">
							<div class="myzone_order_area">
								<div class="tit_area">
									<h3 class="tit">주문/배송조회</h3>
									<span>(취소/교환/반품 신청)</span>
								</div>
							<table id="cartList" class ="mypagetable">
								<tr>
									<th>주문일자</th>
									<th>주문번호</th>
									<th>상품명</th>
									<th>결제 금액</th>
									<th>주문 상세</th>
									</th>
								</tr>
								<c:forEach items="${orderList}" var="orderVO">
									<tr>
										<td><fmt:formatDate value="${orderVO.indate}" type="date" /></td>
										<td>${orderVO.oseq}</td>
										<td>${orderVO.pname}</td>
										<td><fmt:formatNumber value="${orderVO.price2}"
												type="currency" /></td>
										<td><a
											href="SakeyaServlet?command=order_detail&oseq=${orderVO.oseq}">
												조회 </a></td>
									</tr>
								</c:forEach>
							</table>
							<ul class="lst_order">
									<li class="zero_1"><a href="DelivStat0.io"
										spcid="MYCJ____odrh__odrrd__">상품준비중<span class="num"
											spcid="MYCJ____odrh__odrrd__">${orderStat_ready }</span></a></li>
									<li class="zero"><a href="DelivStat1.io"
										spcid="MYCJ____odrh__odrdiv__">배송중<span class="num"
											spcid="MYCJ____odrh__odrdiv__">${orderStat_deliv }</span></a></li>
									<li class="zero"><a href="DelivStat2.io"
										spcid="MYCJ____odrh__odrfins__">배송완료<span class="num"
											spcid="MYCJ____odrh__odrfins__">${orderStat_comp }</span></a></li>
								</ul>
								<ul class="lst_order_state lst_order_state_v2 link_snb_sub">
									<li class="zero"><a href="indexBd.io?userID=${userID }"
										spcid="MYCJ____odrh__cancel__"> <span class="tit"
											spcid="MYCJ____odrh__cancel__">취소</span> <span class="num"
											spcid="MYCJ____odrh__cancel__">${cancel }</span>
									</a></li>
									<li class="zero"><a href="indexBd.io?userID=${userID }"
										spcid="MYCJ____odrh__change__"> <span class="tit"
											spcid="MYCJ____odrh__change__">교환</span> <span class="num"
											spcid="MYCJ____odrh__change__">${change }</span>
									</a></li>
									<li class="zero"><a href="indexBd.io?userID=${userID }"
										spcid="MYCJ____odrh__return__"> <span class="tit"
											spcid="MYCJ____odrh__return__">반품</span> <span class="num"
											spcid="MYCJ____odrh__return__">${back }</span>
									</a></li>
								</ul>

								<a href="DelivStat0.io" class="btn_whole_view"
									spcid="MYCJ____odrh__ordlist__"><span class="blind"
									spcid="MYCJ____odrh__ordlist__">주문/배송 조회</span>전체보기</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>

	</div>
</body>
</html>