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
</head>
<style>
.qnatable{
	margin-top:30px;
/* 	border-collapse: collapse; */
/* 	border-radius: 10px; */
/* 		text-align: center */
}
/* .qnatable tr th{ */
/* 	border-right: 2px solid #73151a; */
/* 	border-bottom: 2px solid #73151a; */
/* } */
.qnatable th, .qnatable td {
/* 	border: 1px solid white; */
	padding: 12px 15px;
/* 	text-align: center */
/* 		border-radius: 20px; */
}
.qnatable th{
border: 1px solid white;
	background-color:#1b85cf;
	color: white;
}
.qnatable td {
	border: 1px solid black;
	}
.qnatable .dayday{
float:right;
}
.qnatable .qnatitle{
	height: 150px;
}
.qnatable .qnacomment{
	height: 70px;
}
</style>
<body>
	<%@ include file ="header.jsp" %>
	<%@ include file ="navigation.jsp" %>
	<div class ="wrapper">
	<article>
		<h2>1:1 고객 게시판</h2> 
		<br>
		<h3>고객님의 질문에 대해서 운영자가 1:1 답변을 드립니다.</h3>
		<form name="formm" method="post">
			<table id="notice" class= "qnatable">
				<tr>
					<th>제목</th>
					<td>${qnaVO.subject} <p class=dayday>등록일: &nbsp; <fmt:formatDate value="${qnaVO.indate}" type="date" /></p></td>
				</tr>
<!-- 				<tr> -->
<!-- 					<th>등록일</th> -->
<%-- 					<td><fmt:formatDate value="${qnaVO.indate}" type="date" /></td> --%>
<!-- 				</tr> -->
				<tr>
					<th class="qnatitle">문의내용</th>
					<td class="qnatitle">${qnaVO.content}</td>
				</tr>
				<tr>
					<th class="qnacomment">답변 내용</th>
					<td class="qnacomment">${qnaVO.reply}
				</tr>
			</table>
			<div class="clear"></div>
			<div id="buttons" style="float: right">
					 <button type="button" value="쇼핑 계속하기" class="btn btn-link" onclick="location.href='SakeyaServlet?command=qna_list'">
					  <i class="fas fa-list"></i> <p>목록보기</p> </button>
					 <button type="button" value="쇼핑 계속하기" class="btn btn-link" onclick="location.href='SakeyaServlet?command=index'">
				 <i class="fas fa-shopping-cart"></i> <p>쇼핑 계속하기</p> </button>
					
			</div>
		</form>
	</article>
	</div>
</body>
</html>