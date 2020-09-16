<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
    <link rel="stylesheet" href="css/bootstrap.css">
    <meta charset="UTF-8">
    <title>아이디 중복 체크</title>
    <link href="CSS/subpage.css" rel="stylesheet">
    <style type="text/css">
		.btn-primary1 {
            color: #fff;
            background-color: #c60d22;
            border-color: #c60d22;
        }

        .btn-primary1:hover,
        .btn-primary1:focus,
        .btn-primary1.focus,
        .btn-primary1:active,
        .btn-primary1.active,
        .open>.dropdown-toggle.btn-primary1 {
            color: #fff;
            background-color: #770914;
            border-color: #770914;
        }
        
        #wrap {
            margin: 0 20px;
        }

        h1 {
            font-family: "Times New Roman", Times, serif;
            font-size: 45px;
            color: #CCC;
            font-weight: normal;
        }

        input[type=button],
        input[type=submit] {
            float: right;
        }
    </style>
    <script type="text/javascript">
        function idok() {
            opener.formm.id.value = "${id}";
            window.open('','_self').close();
        }
        function idCheck(){
            var re = /^[a-zA-Z0-9]{4,12}$/;

            var vid = document.getElementById("id");

            if(vid.value==""){
                alert("아이디를 입력하세요");
                document.idChkform.id.focus();
                return false;	
            }
            else if (!re.test(vid.value)) {
                alert("아이디는 영문 대소문자 4~12자리로 입력해 주세요");
                document.idChkform.id.focus();
                return false;
            }
            else {
            	return true;
            }
        }
        
        function pValue(){
        	document.getElementById("id").value = opener.document.formm.id.value;
        }
    </script>
</head>

<body onload="pValue()">
    <div class = "container-fluid" style="background-image: linear-gradient(to right, #c60d22, #e68a00)">
        	<h4 class="text-center" style="color:white">ID 중복확인</h4>
        </div>
        <form method=post name=idChkform style="margin: 30px" action="SakeyaServlet?command=id_check_form">
       	 <div style="font-size: 13px;">아이디는 영문(소문자), 숫자로 4~12자 이내로 입력해 주세요.</div><br>
               아이디 <input type="text" name="id" id="id" size="20" value=""> <input type=submit value="검색" class="btn btn-primary1 btn-sm" onclick="idCheck();"><br>
            <div style="margin-top: 20px;">
                <c:if test="${message == 1}">
                    <script type="text/javascript">
                        opener.document.formm.id.value = "";
                    </script>
                    ${id}는 이미 사용중인 아이디입니다.
                </c:if>
                <c:if test="${message==-1}">
                    ${id}는 사용 가능한 ID입니다. 
                    <input type="button" value="사용" class="btn btn-primary1 btn-sm" onclick="idok();">
                </c:if>
            </div>
        </form>
</body>
</html>