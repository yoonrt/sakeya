<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>  
<%@ include file="header.jsp" %>   
<%@ include file="sub_menu.jsp" %>   
  <article>
    <h2> 이벤트  </h2>
    <h3> 이벤트 게시판 </h3>
    <form name="formm" method="post">
      <table id="cartList">
      <tr>
        <th>번호</th> <th>제목</th> <th>등록일</th>   
      </tr>
      <c:forEach items="${boardList}"  var="boardVO">
      <tr>  
        <td> ${BoardVO.eseq} </td>    
        <td> <a href="SakeyaServlet?command=board_view&qseq=${boardVO.eseq}"> ${boardVO.evtitle} </td>      
        <td> <fmt:formatDate value="${boardVO.indate}" type="date"/></td>
        <td> 
          <c:choose>
            <c:when test="${BoardVO.rep==1}"> no </c:when>
            <c:when test="${BoardVO.rep==2}"> yes </c:when>
          </c:choose>
        </td>    
      </tr>
      </c:forEach>    
      </table>
      <div class="clear"></div>
      <div id="buttons" style="float:right">
      <input type="button"  value="1:1 질문하기"  class="submit"    
onclick="location.href='SakeyaServlet?command=board_write_form'"> 
      <input type="button"    value="쇼핑 계속하기"  class="cancel"  
onclick="location.href='SakeyaServlet?command=index'">  
      </div>
    </form>
  </article>
<%@ include file="footer.jsp" %>