<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %> 
   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <title>information page</title>
    <link rel="stylesheet" href="css/information.css">
    <script>
        function magnify(imgID, zoom) {
          var img, glass, w, h, bw;
          img = document.getElementById(imgID);
          /*create magnifier glass:*/
          glass = document.createElement("DIV");
          glass.setAttribute("class", "img-magnifier-glass");
          /*insert magnifier glass:*/
          img.parentElement.insertBefore(glass, img);
          /*set background properties for the magnifier glass:*/
          glass.style.backgroundImage = "url('" + img.src + "')";
          glass.style.backgroundRepeat = "no-repeat";
          glass.style.backgroundSize = (img.width * zoom) + "px " + (img.height * zoom) + "px";
          bw = 3;
          w = glass.offsetWidth / 2;
          h = glass.offsetHeight / 2;
          /*execute a function when someone moves the magnifier glass over the image:*/
          glass.addEventListener("mousemove", moveMagnifier);
          img.addEventListener("mousemove", moveMagnifier);
          /*and also for touch screens:*/
          glass.addEventListener("touchmove", moveMagnifier);
          img.addEventListener("touchmove", moveMagnifier);
          function moveMagnifier(e) {
            var pos, x, y;
            /*prevent any other actions that may occur when moving over the image*/
            e.preventDefault();
            /*get the cursor's x and y positions:*/
            pos = getCursorPos(e);
            x = pos.x;
            y = pos.y;
            /*prevent the magnifier glass from being positioned outside the image:*/
            if (x > img.width - (w / zoom)) {x = img.width - (w / zoom);}
            if (x < w / zoom) {x = w / zoom;}
            if (y > img.height - (h / zoom)) {y = img.height - (h / zoom);}
            if (y < h / zoom) {y = h / zoom;}
            /*set the position of the magnifier glass:*/
            glass.style.left = (x - w) + "px";
            glass.style.top = (y - h) + "px";
            /*display what the magnifier glass "sees":*/
            glass.style.backgroundPosition = "-" + ((x * zoom) - w + bw) + "px -" + ((y * zoom) - h + bw) + "px";
          }
          function getCursorPos(e) {
            var a, x = 0, y = 0;
            e = e || window.event;
            /*get the x and y positions of the image:*/
            a = img.getBoundingClientRect();
            /*calculate the cursor's x and y coordinates, relative to the image:*/
            x = e.pageX - a.left;
            y = e.pageY - a.top;
            /*consider any page scrolling:*/
            x = x - window.pageXOffset;
            y = y - window.pageYOffset;
            return {x : x, y : y};
          }
        }
        </script>
        <script type ="text/javascript" src ="js/mypage.js">
        </script>
        </head>
<body>
  <%@ include file ="header.jsp" %>
	<%@ include file ="navigation.jsp" %>
	
	<div id ="container"><div id = "idx_top">
	
	</div></div>
	
    <div class ="product_view ">
    <form method ="post" name ="formm">
    <a href=
	"SakeyaServlet?command=product_detail&pseq=${productVO.pseq}"> 
        <h2>
          ${productVO.name }
        </h2>
        </a>
        <table>
            <caption>
                <details class ="hide">
                    <summary>상품정보</summary>
                    판매가, 상품코드, 옵션, 및 결제금액 안내
                </details>
            </caption>
            <colgroup>
            <col style ="width: 173px;">
            <col>
            </colgroup>
            <tbody>
                <tr>
                    <th>판매가격</th>
                    <td class="productprice">${productVO.price2 } 원</td>
                </tr>
                <tr>
                    <th>상품코드</th>
                    <td>${productVO.pseq }</td>
                </tr>
                <tr>
                    <th>브랜드</th>
                    <td>kosea정수기(DB 브랜드)</td>
                </tr>
                <tr>
                    <th>구매수량</th>
                    <td>
                        <div class="length">
                        <input type ="number" min=1 value=1 name ="quantity">
                        <a href="#a">증가</a>
                        <a href="#a">감소</a>
                    </div>
                    </td>
                    <th>
                    <input type="hidden" name="pseq"
 value="${productVO.pseq}"><br>
 </th>
                </tr>
                <tr>
                    <th>사용가능쿠폰</th>
                    <td>0개</td>
                </tr>
                <tr>
                    <th>옵션선택</th>
                    <td>
                        <select>
                            <option>기본(+0)(DB 옵션)</option>
                        </select>
                    </td>
                </tr>

                <tr>
                    <th>배송비</th>
                    <td>무료배송(DB 배송비)</td>
                </tr>
                <tr>
                    <th>결제금액</th>
                    <td class =sumprice><b>39,000원(가격+옵션)   </b></td>
                </tr>
            </tbody>
        </table>
        <div class ="productimg img-magnifier-container">
            <img id="myimage" class="target" src ="image/${productVO.image }">
            <input type="hidden" value="${productVO.image }" name="image">
<%--             <input type ="text" value= "${productVO.image }" name= "image"> --%>
<!--             <ul > -->
<!--                 <li class= on><a href="#a"><img id = "smallimg" src ="image/sake1.jpg" alt=""></a></li> -->
<!--                 <li class=on><a href="#a"><img id = "smallimg2" src ="image/sake1.jpg" alt=""></a></li> -->
<!--             </ul> -->
        </div>
        <div class ="btns">
        	<input type ="submit" class ="putinbusket" onclick="go_cart()">
            <button type= "submit" class ="putinbusket" onclick="go_cart()"><span>장바구니</span></button>
            <button type= "submit" class ="buyit" onclick="go_order()"><span>구매하기</span></button>
        </div>
        </form>
    </div>
    
    <script>
        /* Initiate Magnify Function
        with the id of the image, and the strength of the magnifier glass:*/
        magnify("myimage", 2);
        
        </script>
        <div id ="container"><div id = "idx_bottom">
	    </div></div>
        
        
        <%@ include file ="footer.jsp" %>
        <c:out value ="${param.pseq }"/>
   </body>
   
</html>