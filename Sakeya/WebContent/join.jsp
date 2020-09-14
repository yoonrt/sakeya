<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text-html; charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="css/bootstrap.css">
<link rel="stylesheet" href="css/custom.css">
<title>Sakeya Sign in Form</title>
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="js/bootstrap.js"></script>
<script type="text/javascript">
function go_save(){
    if(!idChecking()){
    	return false;
    }else if(!pwdCheck()){
    	return false;
    }else if (formm.name.value == "") {
        alert("이름을 입력해 주세요");
        return false;
    }else if(!emailCheck()){
    	return false;
    }else if (formm.zipNum.value == "") {
        alert("주소 입력은 필수사항입니다");
        return false;
    }else if (formm.addr1.value == "") {
        alert("상세주소를 입력해 주세요");
        return false;
    }else if (formm.phone.value == "") {
        alert("전화번호를 입력해 주세요");
        return false;
    }
    return true;
}
function idChecking(){
    var re = /^[a-zA-Z0-9]{4,12}$/;

    var vid = document.getElementById("id");
    var vpwdchk = document.getElementById("pwdCheck");
    var vemail = document.getElementById("email");

    if(vid.value==""){
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

function pwdCheck(){
    var re = /^[a-zA-Z0-9]{4,12}$/;
    var vpw = document.getElementById("pwd");
    var vpwdchk = document.getElementById("pwdCheck");

    if(vpw.value==""){
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

function emailCheck(){
    var re2 = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;

    var email = document.getElementById("email");

    if(email.value==""){
        alert("이메일을 입력하세요");
        document.formm.email.focus();
        return false;
    }
    else if(!re2.test(email.value)){
        alert("이메일 형식을 올바르게 입력해 주세요");
        document.formm.email.focus();
        return false;
    }
    else{
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
		window.open(url, "_blank_1", "toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=330, height=200");
	}
function post_zip() {
		var url = "findZipNum.jsp";
		window.open(url, "_blank_1", "toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=550, height=300, top=300, left=300");
    }
</script>
</head>
<body>
<%-- <%@ include file ="navigation.jsp" %> --%>
	<div class="container">

		<form id="join" action="SakeyaServlet?command=join" method="post" name="formm">
			<table class="table table-bordered table-hover"
				style="text-align: center; border: 1px solid #dddddd">
				<thead>
					<tr>
						<th colspan="3"><h4 style = "text-align: center;">Sakeya 회원 가입 양식</h4>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td style="width: 110px;"><h5>아이디</h5></td>
						<td><input class="form-control" type="text" 
							name="id" id="id" maxLength="20" size="12"></td>
						<td style="width: 110px"><button class="btn btn-primary"
								onclick="idCheck()" type="button">중복체크</button></td>

					</tr>
					<tr>
						<td style="width: 110px;"><h5>비밀번호</h5></td>
						<td colspan="2"><input class="form-control" type="password"
							 name="pwd" id="pwd" maxLength="20"></td>
					</tr>

					<tr>
						<td style="width: 110px;"><h5>비밀번호 확인</h5></td>
						<td colspan="2"><input class="form-control" type="password"
							 name="pwdCheck" id="pwdCheck" maxLength="20"></td>
					</tr>

					<tr>
						<td style="width: 110px;"><h5>이름</h5></td>
						<td colspan="2"><input class="form-control" type="text"
							 name="name" id="name" maxLength="20"></td>
					</tr>
					
					<tr>
						<td style="width: 110px;"><h5>E-mail</h5></td>
						<td colspan="2"><input class="form-control" type="text"
							 name="email" id="email" maxLength="20"></td>
					</tr>
					<tr>
						<td style="width: 110px;"><h5>Zip Code</h5></td>
						<td><input class="form-control" type="text" 
							name="zipNum" id="zipNum" maxLength="20" size="10"></td>
						<td style="width: 110px"><input type="button" value="주소찾기" class="btn btn-primary" 
								onclick="post_zip()"></td>		 
					</tr>
				     <tr>
						<td style="width: 110px;"><h5>Address1</h5></td>
						<td colspan="2"><input class="form-control" type="text"
							 name="addr1" id="addr1" maxLength="20"></td>		 
					</tr>
					
					 <tr>
						<td style="width: 110px;"><h5>Address2</h5></td>
						<td colspan="2"><input class="form-control" type="text"
							 name="addr2" maxLength="20"></td>		 
					</tr>
				 
					<tr>
						<td style="width: 110px;"><h5>Phone Number</h5></td>
						<td colspan="2"><input class="form-control" type="text"
							 name="phone" id="phone" maxLength="20"></td>
					</tr>
					<tr>
						<td style="text-align: left" colspan="2"><input
							class="btn btn-primary pull-right" type="submit" value="회원가입" onclick="return go_save()">
							
							</td>
                        <td style="text-align: left" colspan="2"><input
							class="btn btn-primary pull-right" type="reset" value="취소">
							
							</td>
                        					
					</tr>
				</tbody>
			</table>
		</form>
	</div>
</body>
<%-- <%@ include file ="footer.jsp" %> --%>
</html>