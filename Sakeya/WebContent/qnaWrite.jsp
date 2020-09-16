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
<body>
<style>
.qnabox th{
text-align:center;
}
.qnabox td{
padding-bottom:20px;
}
.qnabox input{
padding: 6px 12px;
font-size: 14px;
  line-height: 1.42857143;
    border: 1px solid #ccc;
  border-radius: 10px;
      -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
          box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
  -webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow ease-in-out .15s;
       -o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
          transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
}
.qnabox textarea{
padding: 6px 12px;
font-size: 14px;
  line-height: 1.42857143;
    border: 1px solid #ccc;
  border-radius: 10px;
    -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
          box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
  -webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow ease-in-out .15s;
       -o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
          transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
}

.qnabox input:focus {
  border-color: brown;
  outline: 0;
  -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(102, 175, 233, .6);
          box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(102, 175, 233, .6);
}
.qnabox textarea:focus {
  border-color: brown;
  outline: 0;
  -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(102, 175, 233, .6);
          box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(102, 175, 233, .6);
}
.qnawriteh2{
padding_bottom:10px;
}

</style>
	<%@ include file ="header.jsp" %>
	<%@ include file ="navigation.jsp" %>
	<div class ="wrapper">
	<article>
	
	
		
		<form name="formm" method="post"
			action="SakeyaServlet?command=qna_write">
			<fieldset>
		
<!-- 				<legend>Qna Info</legend> -->
			<table class="qnabox">
				<tr>
				<th>
				<label>글 제목</label> 
				</th>
				<td>
				<input type="text" name="subject" size="77">
				</td>
				</tr>
				<tr>
				<th>
				<label>문의내용</label>
				</th>
				<td>
				<textarea class = "qnawritebox" rows="8" cols="65" name="content"></textarea>
				</td>
				</tr>
				
				
				</table>
			</fieldset>
			
			<div class="clear"></div>
			<div id="buttons" style="float: right">
				<button type="submit" value="글쓰기" class="btn btn-link" style="width:70px;"><i class="fas fa-pen"></i><p>글쓰기</p></button>
				 <button type="reset" value="취소" class="btn btn-link"><i class="fas fa-trash"></i><p>취소</p></button> 
				 <button type="button" value="쇼핑 계속하기" class="btn btn-link" onclick="location.href='SakeyaServlet?command=index'">
				 <i class="fas fa-shopping-cart"></i> <p>쇼핑 계속하기</p> </button>
			</div>
		</form>
	</article>
	</div>
</body>
</html>