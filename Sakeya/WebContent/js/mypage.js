function go_cart() {
// if (document.formm.quantity.value == "") {
// alert("수량을 입력하여 주세요.");
// document.formm.quantity.focus();
// } else {
 document.formm.action = "SakeyaServlet?command=cart_insert";
 document.formm.submit();
 
}
function go_cart_delete() {
 var count = 0;
 if (document.formm.cseq.length == undefined) {
 if (document.formm.cseq.checked == true) {
	 count++;
 }
 }
 for ( var i = 0; i < document.formm.cseq.length; i++) {
 alert("" + document.formm.cseq[i].checked);
 if (document.formm.cseq[i].checked == true) {
 count++;
 alert("" + count);
 }
 }
 if (count == 0) {
 alert("삭제할 항목을 선택해 주세요.");
 } else {
 document.formm.action = "SakeyaServlet?command=cart_delete";
 document.formm.submit();
 }
}
function go_order_insert() {
 document.formm.action = "SakeyaServlet?command=order_insert";
 document.formm.submit();
}
function go_order_delete() {
 var count = 0;
 if (document.formm.oseq.length == undefined) {
 if (document.formm.oseq.checked == true) {
 count++;
 }
 }
 for ( var i = 0; i < document.formm.oseq.length; i++) {
 if (document.formm.oseq[i].checked == true) {
 count++;
 }
 }
 if (count == 0) {
 alert("삭제할 항목을 선택해 주세요.");
 } else {
 document.formm.action = "SakeyaServlet?command=order_delete";
 document.formm.submit();
 }
}
function go_order() {
 document.formm.action = "SakeyaServlet?command=mypage";
 document.formm.submit();
}

	// 장바구니 수량 변경
	
//	$('.like-btn').on('click', function() {
//   $(this).toggleClass('is-active');
//});
//
//
//$('.minus-btn').on('click', function(e) {
//    e.preventDefault();
//    var $this = $(this);
//    var $input = $this.closest('div').find('input');
//    var value = parseInt($input.val());
// 
//    if (value &amp;amp;gt; 1) {
//        value = value - 1;
//    } else {
//        value = 0;
//    }
// 
//  $input.val(value);
// 
//});
// 
//$('.plus-btn').on('click', function(e) {
//    e.preventDefault();
//    var $this = $(this);
//    var $input = $this.closest('div').find('input');
//    var value = parseInt($input.val());
// 
//    if (value &amp;amp;lt; 100) {
//        value = value + 1;
//    } else {
//        value =100;
//    }
// 
//    $input.val(value);
//});

