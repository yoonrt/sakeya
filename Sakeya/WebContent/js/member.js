function go_save() {
    var re = /^[a-zA-Z0-9]{4,12}$/
    var re2 = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;

    if (document.formm.id.value == "") {
        alert("아이디를 입력해 주세요.");
        document.formm.id.focus();
		return false;
       
    } else if (!check(re, id)) {
        alert("아이디는 4~12자의 영문 대소문자와 숫자로만 입력하세요.");
        document.formm.id.focus();
        return false;
    }else if (document.formm.id.value == document.formm.reid.value) {
        alert("중복확인은 필수입니다.");
        document.formm.id.focus();
      return false;
    } else if (document.formm.pwd.value == "") {
        alert("비밀번호를 입력해 주세요.");
        document.formm.pwd.focus();
      return false;
    } else if (!check(re, pwd)){
        alert("비밀번호는 4~12자의 영문 대소문자와 숫자로만 입력하세요.");
        document.formm.pwd.focus();
        return false;
    }else if (document.formm.pwd.value != document.formm.pwdCheck.value) {
        alert("비밀번호가 일치하지 않습니다.");
        document.formm.pwd.focus();
        return false;
    } else if (document.formm.email.value == "") {
        alert("이메일을 입력해 주세요.")
        document.formm.email.focus();
        return false;
    } else if (!check(re2, email)){
        alert("적합하지 않은 이메일 형식입니다.");
        document.formm.email.focus();
      return false;
    } else {
//        document.formm.action = "Servlet?command=join";
		alert("가입완료");
        document.formm.submit();
		return true;
    }
}

function idCheck() {
    if (document.formm.id.value == "") {
        alert("아이디를 입력해 주세요");
        document.formm.id.focus();
        return;
    }
}
    function post_zip() {
        var url = "" + document.formm.id.value;
        window.open(url, "", "toolbar=no, menubar=no, scrollbars=yes, resizable=no, width=550, height=300, top=300, left=300");
    }

 /*   function go_next() {
        if (document.formm.okon1[0].checked == true) {
            document.formm.action = "";
			return;
        } else if (document.formm.okon[1].checked == true) {
            alert("약관에 동의하셔야 합니다.")
        }
			return;
    }*/

function go_next() { 
	var chkbox = document.getElementsByName('okon1'); 
	var chk = false; for(var i=0 ; i<chkbox.length ; i++) { 
		if(chkbox[i].checked) { chk = true; 
		} else { chk = false; 
		} 
		} if(chk) { 
			
			return true; 
		} else {
			alert("모든 약관에 동의해 주세요.");
			return false;
			}
		} 
    function check(re, what) {
        if (re.test(what.value)) {
            return true;
        }
        what.value = "";
        what.focus();
        //return false;
    }
