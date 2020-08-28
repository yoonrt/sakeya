<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta http-equiv = "Content-Type" content="text/html; charset=UTF-8">
<!-- 합쳐지고 최소화된 최신 CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel ="stylesheet" href ="${pageContext.request.contextPath }/resources/css2/all.css">
 <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.6.1/css/all.css"> <!-- 폰트 어썸 -->
 <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
 
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<title>Insert title here</title>
</head>
<body>
<style type ="text/css">
*{
 	border-collapse: collapse;
 	margin:0px;
 	padding:0px;
 	text-decoration: none;
 	color: black;
 	list-style:none;
 	
 	}
 	.logobtn{
 	position:absolute;
 	left: 10%;
 	
 	}
 	
 .searchb {
  background-color: white;
  border-color: #e7e7e7;
}
 	.search-group {
 	
  position: absolute;
  top: 12px;
  left: 30%; 
/*   display: table; */
  border-collapse: separate;
}
.search-bar{
width:400px;
}
 	
 	/* SNS 아이콘  */
.btnSNS {
  position:absolute;
  left: 60%;
  background-color: white;
  border: none;
  color: white;
  padding-left: 3px;
  cursor: pointer;
  font-size: 30px; 
  }
  #SNS{
    margin-top: 10px;
  margin-left: 10px;
  padding-left: 3px;
    background-color: white;
  border: none;
  color: white;
  cursor: pointer;
  margin-left: 0%;
   font-size: 40px;
        color: DodgerBlue;
  }
/*   /* 버튼에 마우스 올렸을 떄 */ */
/*   .btnSNS:hover { */
/*   background-color: RoyalBlue; */
}
.input-group{
margin-top:13px;
}
.input_text {
	width: 380px;
	  height: 30px;
  padding: 6px 12px;
	margin: 0 auto;
	margin-top: 2%;
	border: 0;
	line-height: 21px;
	font-weight: bold;
	font-size: 16px;
	outline: none;
	border-radius: 30px;
	  color: #555;
  background-color: #fff;
  background-image: none;
  border: 1px solid brown;
     -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
          box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
  -webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow ease-in-out .15s;
       -o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
          transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
}
.input_text:focus {
  border-color: #66afe9;
  outline: 0;
  -webkit-box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(102, 175, 233, .6);
          box-shadow: inset 0 1px 1px rgba(0,0,0,.075), 0 0 8px rgba(102, 175, 233, .6);
}
#search-bt{
height: 20px;
width: 20px;
border-radius: 30px;
  position:relative;
 
  left: -40px;
  bottom: 5px;
  background-color:transparent; 
   border:0px transparent solid;
}
.dropdown-toggle{
margin-top:2%;
}
#mypage {
	position:relative;
	right: 10px;
	top: 10px;
	bottom:10px;
  list-style-type: none;
  background-color: white;
  height: 40px;
    list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
/*   border: 1px solid #e7e7e7; */
}
#myli {
/*   float: left; */
  border-right:1px solid #bbb;
}
#myli a {
  display: block;
  color: #666;
  text-align: center;
  padding: 14px 16px;
/*   text-decoration: none; */
}
#myli a:hover:not(.active) {
  background-color: #ddd;
}
#myli a.active {
  color: white;
  background-color: #4CAF50;
}
#mypage button{
 position:relative;
 top:3px;
 background-color:transparent;  
 border:0px transparent solid;
}
.rightnav{
positon:absolute;
right:20%
}
/* div */
/* { */
/* border-image:url(border.png) 30 30 round; */
/* -moz-border-image:url(border.png) 30 30 round; /* Firefox */ */
/* -webkit-border-image:url(border.png) 30 30 round; /* Safari and Chrome */ */
/* -o-border-image:url(border.png) 30 30 round; /* Opera */ */
/* } */
</style>
	<script type="text/javascript">
		function move() {
			location.href = 'http://www.naver.com'
		}
		function moveinsta(){
			location.href ='https://www.instagram.com/?hl=ko'
			
		}
		function movefacebook(){
			location.href='https://ko-kr.facebook.com/'
		}
		function moveyoutube(){
			location.href='https://www.youtube.com/'
		}
		var i3 = document.getElementById("i3").style.visibility="visible"; 
	</script>
	
<!-- 	<nav class="header"> -->
<!--       <div class="navbar-header"> -->
<!--          <button type="button" class="navbar-toggle collapsed" -->
<!--             data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" -->
<!--             aria-expanded="false"> -->
<!--             <span class="icon-bar"></span> <span class="icon-bar"></span> <span -->
<!--                class="icon-bar"></span> -->

<!--          </button> -->
<!--          </div> -->
         <!-- <a class="navbar-brand" href="main.jsp">KO酒屋</a> -->
         
            <!--   	로고 -->
            <span class ="logobtn">
          <button class="btn btn-link" type ="button"  width="120px" height="60px" onclick ="move()">
          <img src="image/cloaking.png"  width="120px" height="60px" 
          onError="this.style.visibility='hidden'">
          </button>
          </span>
       
    
      
<!--    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1"> -->
  
<!-- 		 <div class="col-lg-6"> -->
<!--        검색창 -->
   <span class="search-group">
     <label for="search" class="sr-only" id ="searchb">검색</label>
	<input type='search' class='input_text' />
	<button type='submit' class="logobtn btn btn-default" height='30px' id ="search-bt"> 
     <span class="fas fa-search"></span>
	</button>
	</span>
	 
	  
<!-- 	    <div class="col-lg-6"> -->
<!--     <div class="search-bar input-group"> -->
<!--       <input type="text" class="form-control" placeholder="Search for..."> -->
<!--       <span class="input-group-btn"> -->
<!--         <button class="btn btn-default" type="button">Go!</button> -->
<!--       </span> -->
<!--     </div>/input-group -->
<!--   </div>/.col-lg-6 -->


		<!-- 인스타 -->
	<span class="btnSNS">
<!-- 	   <button type ="button"  onclick ="moveinsta()"> -->
         	<i class="fab fa-instagram" id= "SNS" onclick ="moveinsta()"></i>
<!--         </button> -->
  
        <!-- 페이스북 --> 
<!--        <button type ="button" id= "SNS" onclick ="moveinsta()"> -->
      	<i class="fab fa-facebook-square"  id= "SNS" onclick ="movefacebook()"></i>
		<!-- 유튜브 -->
		<i class="fab fa-youtube" id="SNS" onclick="moveyoutube()"></i>
        </span>
        
	 <ul class="rightnav nav navbar-nav navbar-right" id = "mypage">
        <li id ="myli"><a href="main.jsp">장바구니</a></li>
         <li id ="myli"><a href="bbs.jsp">MyPage</a></li> 

  <button type="button" class="  btn btn-primary dropdown-toggle"   data-toggle="dropdown" aria-expanded="false">
    접속하기 <span class="caret"></span>
  </button>
  
  <ul class="dropdown-menu" role="menu">
    <li><a href="#">로그인</a></li>
    <li><a href="#">회원가입</a></li>
    <li class="divider"></li>
    <li><a href="#">회원가입</a></li>
  </ul>

	</ul>
	




<!--          <li class="dropdown" id ="myli"> -->
<!--          <a href="#" class="dropdown-toggle" -->
<!--             data-toggle="dropdown" role="button" aria-haspoup="true" -->
<!--             aria-expanded="false">접속하기 <span class="caret"></span></a>  -->
<!--             <ul class ="dropdown-menu"> -->
<!--             <li class="active"><a href="login.jsp">로그인</a></li> -->
<!--             <li><a href="join.jsp">회원가입</a></li> -->
<!--             </ul> -->
<!--          </li> -->
         
<!--          </span> -->
<!--  	</div> -->
<!-- </div>/.collapse -->

   <!--    <ul class="nav navbar-nav"> -->
      <!--    <li><a href="main.jsp">메인</a></li>
         <li><a href="bbs.jsp">계시판</a></li> -->
       <!--   </ul> -->
       
       
 
   </nav>

</body>
</html>