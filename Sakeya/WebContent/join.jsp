<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text-html; charset=" UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/custom.css">
    <title>Sakeya Sign in Form</title>
    <style>
    	.title{
    		margin-bottom: 10px;
    	}
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

        .logo-container {
            position: absolute;
            left: 50%;
            transform: translate(-50%, -0%);
        }

        .table1 {
            width: 100%;
            max-width: 100%;
            margin-bottom: 20px;
            margin-top: 11rem;
        }

        .form-control {
            display: block;
            width: 100%;
            height: 34px;
            margin-top: 8px;
            margin-bottom: 8px;
            padding: 6px 12px;
            font-size: 14px;
            line-height: 1.42857143;
            color: #555;
            background-color: #fff;
            background-image: none;
            border: 1px solid #ccc;
            border-radius: 4px;
            -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
            box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075);
            -webkit-transition: border-color ease-in-out .15s, -webkit-box-shadow ease-in-out .15s;
            -o-transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
            transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
        }

        .form-control:focus {
            border-color: #66afe9;
            outline: 0;
            -webkit-box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 8px rgba(102, 175, 233, .6);
            box-shadow: inset 0 1px 1px rgba(0, 0, 0, .075), 0 0 8px rgba(102, 175, 233, .6);
        }

        .form-control::-moz-placeholder {
            color: #999;
            opacity: 1;
        }

        .form-control:-ms-input-placeholder {
            color: #999;
        }

        .form-control::-webkit-input-placeholder {
            color: #999;
        }

        .form-control[disabled],
        .form-control[readonly],
        fieldset[disabled] .form-control {
            cursor: not-allowed;
            background-color: #eee;
            opacity: 1;
        }

        textarea.form-control {
            height: auto;
        }

        input[type="search"] {
            -webkit-appearance: none;
        }
        .insert{
            position: absolute;
   			left: 50%;
        }
    </style>
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <script type="text/javascript">
        function go_save() {
            if (!idChecking()) {
                return false;
            } else if (!pwdCheck()) {
                return false;
            } else if (formm.name.value == "") {
                alert("이름을 입력해 주세요");
                return false;
            } else if (!emailCheck()) {
                return false;
            } else if (formm.zipNum.value == "") {
                alert("주소 입력은 필수사항입니다");
                return false;
            } else if (formm.addr1.value == "") {
                alert("상세주소를 입력해 주세요");
                return false;
            } else if (formm.phone.value == "") {
                alert("전화번호를 입력해 주세요");
                return false;
            }
            return true;
        }
        function idChecking() {
            var re = /^[a-zA-Z0-9]{4,12}$/;

            var vid = document.getElementById("id");

            if (vid.value == "") {
                alert("아이디를 입력하세요");
                document.formm.id.focus();
                return false;
            }
            else if (!re.test(vid.value)) {
                alert("아이디는 영문 대소문자 4~12자리로 입력해 주세요");
                document.formm.id.focus();
                return false;
            }
            else {
                return true;
            }
        }

        function pwdCheck() {
            var re = /^[a-zA-Z0-9]{4,12}$/;
            var vpw = document.getElementById("pwd");
            var vpwdchk = document.getElementById("pwdCheck");

            if (vpw.value == "") {
                alert("비밀번호를 입력하세요");
                document.formm.pwd.focus();
                return false;
            }
            else if (!re.test(vpw.value)) {
                alert("비밀번호는 영문 대소문자 4~12자리로 입력해 주세요");
                document.formm.pwd.focus();
                return false;
            }
            else if (vpw.value != vpwdchk.value) {
                alert("비밀번호가 다릅니다, 다시 확인해 주세요");
                document.formm.pwd.focus();
                return false;
            }
            else {
                return true;
            }
        }

        function emailCheck() {
            var re2 = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;

            var email = document.getElementById("email");

            if (email.value == "") {
                alert("이메일을 입력하세요");
                document.formm.email.focus();
                return false;
            }
            else if (!re2.test(email.value)) {
                alert("이메일 형식을 올바르게 입력해 주세요");
                document.formm.email.focus();
                return false;
            }
            else {
                return true;
            }
        }
        function idCheck() {
            if (formm.id.value == "") {
                alert("아이디를 입력해 주세요");
                document.formm.id.focus();
                return;
            }
            var url = "idcheck.jsp" //+ document.join.uid.value;
            window.open(url, "_blank_1", "toolbar=no, menubar=no, scrollbars=no, resizable=no, width=530, height=250, top=300, left=300");
        }
        function post_zip() {
            var url = "findZipNum.jsp";
            window.open(url, "_blank_1", "toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=530, height=350, top=300, left=300");
        }
    </script>
</head>

<body>
    <%-- <%@ include file ="navigation.jsp" %> --%>
    <div class="container">
        <span class="logo-container"> <a href="SakeyaServlet?command=index"> <img src="image/sakeyalogo.png" width="230px" height="110px" onError="this.style.visibility='hidden'">
            </a>
        </span>
        <form id="join" action="SakeyaServlet?command=join" method="post" name="formm">
            <table class="table1" style="text-align: center;">
                <thead>
                    <tr>
                        <th colspan="3">
                            <h2 style="text-align: left;"><b>Sakeya 회원 가입 양식</b></h2>
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <tr>
                        <td style="width: 110px;">
                            <h5 style="text-align: left;">아이디</h5>
                        </td>
                        <td><input class="form-control" type="text" name="id" id="id" maxLength="20" size="12" placeholder="4~12자의 영문 대소문자와 숫자로만 입력"></td>
                        <td style="width: 110px"><button class="btn btn-primary1" onclick="idCheck()" type="button">중복체크</button></td>
                    </tr>
                    <tr>
                        <td style="width: 110px;">
                            <h5 style="text-align: left;">비밀번호</h5>
                        </td>
                        <td colspan="2"><input class="form-control" type="password" name="pwd" id="pwd" maxLength="20" placeholder="4~12자의 영문 대소문자와 숫자로만 입력">
                        </td>
                    </tr>

                    <tr>
                        <td style="width: 110px;">
                            <h5 style="text-align: left;">비밀번호 확인</h5>
                        </td>
                        <td colspan="2"><input class="form-control" type="password" name="pwdCheck" id="pwdCheck" maxLength="20"></td>
                    </tr>

                    <tr>
                        <td style="width: 110px;">
                            <h5 style="text-align: left;">이름</h5>
                        </td>
                        <td colspan="2"><input class="form-control" type="text" name="name" id="name" maxLength="20" placeholder="예) 홍길동">
                        </td>
                    </tr>

                    <tr>
                        <td style="width: 110px;">
                            <h5 style="text-align: left;">이메일</h5>
                        </td>
                        <td colspan="2"><input class="form-control" type="text" name="email" id="email" maxLength="20" placeholder="예) Sakeya@domain.com">
                        </td>
                    </tr>
                    <tr>
                        <td style="width: 110px;">
                            <h5 style="text-align: left;">우편번호</h5>
                        </td>
                        <td><input class="form-control" type="text" name="zipNum" id="zipNum" maxLength="20" size="10">
                        </td>
                        <td style="width: 110px"><input type="button" value="주소찾기" class="btn btn-primary1" onclick="post_zip()"></td>
                    </tr>
                    <tr>
                        <td style="width: 110px;">
                            <h5 style="text-align: left;">상세주소1</h5>
                        </td>
                        <td colspan="2"><input class="form-control" type="text" name="addr1" id="addr1" maxLength="20">
                        </td>
                    </tr>

                    <tr>
                        <td style="width: 110px;">
                            <h5 style="text-align: left;">상세주소2</h5>
                        </td>
                        <td colspan="2"><input class="form-control" type="text" name="addr2" maxLength="20"></td>
                    </tr>

                    <tr>
                        <td style="width: 110px;">
                            <h5 style="text-align: left;">전화번호</h5>
                        </td>
                        <td colspan="2"><input class="form-control" type="text" name="phone" id="phone" maxLength="11" placeholder="(-) 없이 입력해 주세요">
                        </td>
                    </tr>

                </tbody>
            </table>
            <div class="insert">
            	<input class="btn btn-success pull-right btn-lg" type="submit" value="회원가입" onclick="return go_save();">
            </div>
        </form>
    </div>
</body>
<%-- <%@ include file ="footer.jsp" %> --%>
</html>