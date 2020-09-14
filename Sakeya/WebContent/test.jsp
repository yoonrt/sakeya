<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!doctype html>
<html lang="ko">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>test</title>
    <script>
    $(function() {
        $(window).scroll(function() {
            if ($(this).scrollTop() > 500) {
                $('#MOVE_TOP_BTN').fadeIn();
            } else {
                $('#MOVE_TOP_BTN').fadeOut();
            }
        });
        
        $("#MOVE_TOP_BTN").click(function() {
            $('html, body').animate({
                scrollTop : 0
            }, 400);
            return false;
        });
    });
	</script>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <style>
/*        p { margin:20px 0px; }  */
/*       a#MOVE_TOP_BTN {  */
/*      float:right;  */
/* /    right: 5%; */
/*      top: 0.5rem;  */
    
/*     z-index: 999;  */
/*     cursor: pointer;  */
/* }  */

/* .footertop{ */
/* 	position:relative; */
/* 	padding-right: 100px; */
/* } */
    </style>
  </head>
  <body>
  	<div class ="wrapper">
    <div class="container">
      <div class="row">
        <div class="col">
          <ul class="nav nav-tabs">
            <li class="nav-item">
              <a class="nav-link active" href="#">홈</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">로그인</a>
            </li>
            <li class="nav-item">
              <a class="nav-link" href="#">회원가입</a>
            </li>
            <li class="nav-item">
              <a class="nav-link disabled" href="#">고객센터</a>
            </li>
            <li class="nav-item">
              <a class="nav-link disabled" href="#">마이페이지</a>
            </li>

            <li style="float:right">
            <a id="MOVE_TOP_BTN" class ="nav-link navbar-right" href="#">TOP</a>
            </li>
          </ul>
        </div>
      </div>
    </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.3/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/js/bootstrap.min.js"></script>
  </body>
</html>