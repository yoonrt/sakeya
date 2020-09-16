<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ include file="header.jsp"%>
<%@ include file="sub_menu.jsp"%>
<script>
	function go_cart_delete() {
		var count = 0;
		if (document.formm.cseq.length == undefined) {
			if (document.formm.cseq.checked == true) {
				count++;
			}
		}
		for (var i = 0; i < document.formm.cseq.length; i++) {
			alert("" + document.formm.cseq[i].checked);
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

<article>
	<h2>Cart List</h2>
	
	<form name="formm" method="post">
		<input type ="hidden" value=2 name="identify">
		<c:choose>
			<c:when test="${cartList.size() == 0}">
				<h3 style="color: red; text-align: center;">장바구니가 비었습니다.</h3>
			</c:when>
			<c:otherwise>
				<table id="cartList">
					<tr>
						<th>상품명</th>
						<th>수량</th>
						<th>가격</th>
						<th>주문일</th>
						<th>삭제</th>
					</tr>

					<c:forEach items="${cartList}" var="cartVO">
						<tr>
							<td><a
								href="SakeyaServlet?command=product_detail&pseq=${cartVO.pseq}">
									<h3>${cartVO.pname}</h3>
							</a></td>
							<td>${cartVO.quantity}</td>
							<td><fmt:formatNumber
									value="${cartVO.price2*cartVO.quantity}" type="currency" /></td>
							<td><fmt:formatDate value="${cartVO.indate}" type="date" /></td>
							<td><input type="checkbox" name="cseq"
								value="${cartVO.cseq}"></td>
						</tr>
					</c:forEach>

					<tr>
						<th colspan="2">총 액</th>
						<th colspan="2"><fmt:formatNumber value="${totalPrice}"
								type="currency" /><br></th>
						<th><a href="#" onclick="go_cart_delete()"><h3>삭제하기</h3></a></th>
					</tr>
				</table>
			</c:otherwise>
		</c:choose>

		<div class="clear"></div>

		<div id="buttons" style="float: right">
			<input type="button" value="쇼핑 계속하기" class="cancel"
				onclick="location.href='SakeyaServlet?command=index'">
			<c:if test="${cartList.size() != 0}">
				<input type="button" value="주문하기" class="submit"
					onclick="go_order_insert()">
			</c:if>
		</div>
	</form>
</article>
