<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!doctype html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <title>회원 가입</title>
    <meta http-equiv="Content-Type" content="text-html; charset= " UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/bootstrap.css">
    <link rel="stylesheet" href="css/custom.css">
    <title>Sakeya Sign in Form</title>
    <script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
    <script src="js/bootstrap.js"></script>
    <script language="javascript">
        function validate() {
            var re = /^[a-zA-Z0-9]{4,12}$/ // 아이디와 패스워드가 적합한지 검사할 정규식
            var re2 = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
            // 이메일이 적합한지 검사할 정규식

            var uid = document.getElementById("id");
            var upw = document.getElementById("pwd");
            var uemail = document.getElementById("email");

            if (!check(re, uid, "아이디는 4~12자의 영문 대소문자와 숫자로만 입력")) {
                return false;
            }

            else if (!check(re, upw, "패스워드는 4~12자의 영문 대소문자와 숫자로만 입력")) {
                return false;
            }

            else if (formm.pwd.value != formm.pwdCheck.value) {
                alert("비밀번호가 다릅니다. 다시 확인해 주세요.");
                formm.pwdCheck.value = "";
                formm.pwdCheck.focus();
                return false;
            }

            else if (formm.name.value == "") {
                alert("이름을 입력해 주세요");
                formm.name.focus();
                return false;
            }

            else if (email.value == "") {
                alert("이메일을 입력해 주세요");
                email.focus();
                return false;
            }

            else if (!check(re2, uemail, "적합하지 않은 이메일 형식입니다.")) {
                return false;
            }

            else if (formm.zipNum.value == "") {
                alert("주소를 입력해 주세요");
                formm.zipNum.focus();
                return false;
            }

            else if (formm.addr1.value == "") {
                alert("상세주소1은 필수 입력 사항입니다");
                formm.addr1.focus();
                return false;
            }

            else if (formm.phonenum1.value == "") {
                alert("전화번호를 입력해 주세요");
                formm.phonenum1.focus();
                return false;
            }

            else if (formm.phonenum2.value == "") {
                alert("전화번호를 입력해 주세요");
                formm.phonenum2.focus();
                return false;
            }

            else if (formm.phonenum3.value == "") {
                alert("전화번호를 입력해 주세요");
                formm.phonenum3.focus();
                return false;
            } else {
                document.formm.action = "SakeyaServlet?command=join";
                document.formm.submit();
            }
        }
        function check(re, what, message) {
            if (re.test(what.value)) {
                return true;
            }
            alert(message);
            what.value = "";
            what.focus();
            //return false;
        }
        function idCheck() {
            if (formm.id.value == "") {
                alert("아이디를 입력해 주세요");
                document.formm.userID.focus();
                return;
            }
            var url = "idcheck.jsp" //+ document.join.uid.value;
            window.open(url, "_blank_1", "toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=330, height=200");
        }
            function post_zip() {
                var url = "findZipNum.jsp";
                window.open(url, "_blank_1", "toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=550, height=300, top=300, left=300");
            }
    </script>
</head>
<body>
    <div class="container">
    <form name="formm" onsubmit="return validate();" method="post" enctype="text/plain">
        <br>
        <table class="table table-bordered table-hover" style="text-align: center; border: 1px solid #dddddd">
            <thead>
                <tr>
                    <th colspan="3">
                        <h4 style="text-align: center;">Sakeya 회원 가입 양식</h4>
                </tr>
            </thead>
            <tbody> 
            <tr>
                <td style="width: 110px;"><b>아이디</td>
                <td><input class="form-control" type="text" name="id" id="id" size="20"
                        maxlength="12"></input>&nbsp4~12자의 영문 대소문자와 숫자로만 입력
                </td>
                <td style="width: 110px"><button class="btn btn-primary" onclick="idCheck()" type="button">중복체크</button>
                </td>
            </tr>

            <tr>
                <td style="width: 110px;"><b>비밀번호</td>
                <td><input class="form-control" type="password" name="pwd" id="pwd" size="21"
                        maxlength="12"></input>&nbsp4~12자의 영문 대소문자와
                    숫자로만 입력</td>
            </tr>
            <tr>
                <td style="width: 110px;"><b>비밀번호 확인</td>
                <td><input class="form-control" type="password" name="pwdCheck" id="pwdCheck" size="21" maxlength="12">
                </td>
            </tr>

            <tr>
                <td style="width: 110px;"><b>이름</td>
                <td><input class="form-control" type="text" name="name" id="name" size="25"></input></td>
            </tr>

            <tr>
                <td style="width: 110px;"><b>메일주소</td>
                <td><input class="form-control" type="text" name="email" id="email" size="25"></input>&nbsp예)
                    id@domain.com</td>
            </tr>

            <tr>
                <td style="width: 110px;"><b>주소</td>
                <td><input class="form-control" type="text" name="zipNum" maxLength="20" size="10"></td>
                <td style="width: 110px"><input type="button" value="주소찾기" class="btn btn-primary" onclick="post_zip()">
                </td>
            </tr>

            <tr>
                <td style="width: 110px;"><b>상세주소1</td>
                <td><input class="form-control" type="text" name="addr1" id="addr1" size="25"></input></td>
            </tr>

            <tr>
                <td style="width: 110px;"><b>상세주소2</td>
                <td><input class="form-control" type="text" name="addr2" id="addr2" size="25"></input></td>
            </tr>

            <tr>
                <td style="width: 110px;"><b>전화번호</td>
                <td><input type="text" name="phonenum1" id="phonenum1" size="2" maxlength="3"> - </input><input
                        type="text" name="phonenum2" id="phonenum2" size="5" maxlength="4"></input>
                    - <input type="text" name="phonenum3" id="phonenum3" size="5" maxlength="4">
                </td>
            </tr>

            <tr align="center">
                <td style="text-align: left" colspan="2">
                    <input class="btn btn-primary pull-right" type="submit" value="회원가입"></td>
                <td style="text-align: left" colspan="2"><input class="btn btn-primary pull-right" type="reset"
                        value="취소">
                </td>
            </tbody>
        </table>
        </form>
        </div>
</body>
</html>