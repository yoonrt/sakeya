<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>QnA</title>
<style>
* {
	font-family: sans-serif; /* Change your font family */
}

.wrapper {
	margin: 0 auto;
	width: 1024px;
	padding-bottom: 10px
}

.content-table {
	/* 	border: 1px solid white; */
		border-bottom: 2px solid #73151a;
	margin: 25px 0;
	font-size: 0.9em;
	min-width: 400px;
/* 	border-collapse: collapse; */
	border-spacing: 0;
	box-shadow: 0 2px 5px rgba(64, 64, 64, .7);
	border-radius: 5px 5px 5px 5px;
	overflow: hidden;
}

.content-table thead .tablehead {
	/* border-top:1px solid #009879; */
	background-color: #73151a;
	color: white;
	text-align: center;
	font-weight: bold;
	border-raius: 30px;
}

.content-table thead .tablehead th {
	color: white;
}

.content-table th, .content-table td {
	padding: 12px 15px;
	text-align: center
}
/* .content-table tbody{ */
/* 	border-bottom: 2px solid #009879; */
/* 	border-radius: 40px; */
/* } */
.content-table tbody tr {
	/* 	border-bottom: 1px solid #dddddd; */
	border-radius: 10px;
}

.content-table tbody tr:nth-of-type(even) {
	background-color: #f3f3f3;
}

.content-table tbody tr:last-of-type {
	/* 	border-bottom: 1px solid #009879; */
	/* 	border-radius: 10px; */
	
}

.content-table tbody tr.active-row {
	font-weight: bold;
	color: #009879;
}
</style>
</head>
<body>
	<%@ include file="header.jsp"%>
	<%@ include file="navigation.jsp"%>
	<div class="wrapper">
		<form name="formm" method="post">
			<table class="content-table">
				<thead>
					<tr class="tablehead">
						<th>번호</th>
						<th>제목</th>
						<th>등록일</th>
						<th>답변여부</th>
					</tr>
				</thead>
				<c:forEach items="${qnaList}" var="qnaVO">
					<tbody>
						<tr>
							<td>${qnaVO.qseq}</td>
							<td><a
								href="SakeyaServlet?command=qna_view&qseq=${qnaVO.qseq}">
									${qnaVO.subject} </a></td>
							<td><fmt:formatDate value="${qnaVO.indate}" type="date" /></td>
							<td><c:choose>
									<c:when test="${qnaVO.rep==1}"> no </c:when>
									<c:when test="${qnaVO.rep==2}"> yes </c:when>
								</c:choose></td>
						</tr>
					</tbody>
				</c:forEach>
			</table>
			<div id="buttons" style="float: right">
				<input type="button" value="1:1 질문하기" class="submit"
					onclick="location.href='SakeyaServlet?command=qna_write_form'">
				<input type="button" value="쇼핑 계속하기" class="cancel"
					onclick="location.href='SakeyaServlet?command=index'">
			</div>
		</form>
	</div>
	<%@ include file="footer.jsp"%>
</body>
</html>