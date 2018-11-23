<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file ="include/include.jsp" %> 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>HODRO 회원등록</title>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta name="description" content="Made with WOW Slider - Create beautiful, responsive image sliders in a few clicks. Awesome skins and animations. Css slideshow" />
	
	<!-- Start WOWSlider.com HEAD section --> <!-- add to the <head> of your page -->
	<link rel="stylesheet" type="text/css" href="engine1/style.css" />
	<script type="text/javascript" src="engine1/jquery.js"></script>
	<!-- End WOWSlider.com HEAD section -->

<style type="text/css">
@import url(http://fonts.googleapis.com/earlyaccess/jejugothic.css);
@import url(http://fonts.googleapis.com/earlyaccess/notosanskr.css);

	body {
		margin: 0;
		padding: 0;
		background-color: white;
		font-family: 'Jeju Gothic', serif;
	}
	a {
		text-decoration: none;
	}	
	ul {
		list-style-type: none;
	}
	#body_wrap{
		width : 1200px;
		height: 858px;
		box-shadow: 0 0 6px rgba(0,0,0,0.3);
		margin : 50px auto;
		align-items: center;
	}
	#body_wrap>div:not(.clr_div){
		float: left;
	}
	#photo_wrap{
		display: inline-block;
		width:600px;
		background: white;
		border-radius:10px; 
		align-items: center;
	}
	#mem_layout{
		display: inline-block;
		width:600px;
		height:858px;
		background: white;
	}
	
	.clr_div{
		clear:both;
	}
	
	/*header(호버드론로고)*/
	#content_layout {
		width: 460px;
		margin: 0 auto;
		/* border: 1px solid blue; */
	}
	
	#header_div img {
		display: block;
		margin: 40px auto 20px;
		height: 70px;
    	width: 170px;
    	box-sizing: border-box;
	}
	
	#header_member {
		font-family: 'Noto Sans KR', sans-serif;
		font-size: 33px;
		margin: 30px auto;
		color: #707374;
		font-weight: 300;
		text-align: center;
	}
	
	/*section(input(id,pw,rpw,이름,번호,주소,e-mil),확인버튼,find*/
	#insert_id{
		background-color: white;
		border: 1px solid #dadada;
		width : 460px;
		height: 51px;
		box-sizing: border-box;
		margin-top: 20px;
		position: relative;
	}
	#insert_label{
		font-family: 'Noto Sans KR', sans-serif;
		font-size: 15px;
		position: absolute;
		z-index: 1;
		transition: all .4s cubic-bezier(.25,.8,.25,1);
		transition-duration: 0.3s;
		color :#979797;
		top: 13px;
		left: 10px;
	}
	#input_id{
		width: 100%;
		height: 48px;
		display: block;
		position: relative;
		border: none;
		overflow: visible;
		padding: 20px 0px 0px 10px;
		box-sizing: border-box;
		transition: all .4s cubic-bezier(.25,.8,.25,1);
		outline : none;
		z-index: 9;
    	background-color: #ffffff00;
		
	}
	#insert_pw{
		background-color: white;
		border: 1px solid #dadada;
		width : 460px;
		height: 51px;
		box-sizing: border-box;
		margin-top: 20px;
		position: relative;
	}
	#insert_label_pw{
		font-family: 'Noto Sans KR', sans-serif;
		font-size: 15px;
		position: absolute;
		z-index: 1;
		transition: all .4s cubic-bezier(.25,.8,.25,1);
		transition-duration: 0.3s;
		color :#979797;
		top: 13px;
		left: 10px;
	}
	#input_pw{
		width: 100%;
		height: 48px;
		display: block;
		position: relative;
		border: none;
		overflow: visible;
		padding: 20px 0px 0px 10px;
		box-sizing: border-box;
		transition: all .4s cubic-bezier(.25,.8,.25,1);
		outline : none;
		z-index: 9;
    	background-color: #ffffff00;
	}
	#insert_rpw{
		background-color: white;
		border: 1px solid #dadada;
		width : 460px;
		height: 51px;
		box-sizing: border-box;
		margin-top: 20px;
		position: relative;
	}
	#insert_label_rpw{
		font-family: 'Noto Sans KR', sans-serif;
		font-size: 15px;
		position: absolute;
		z-index: 1;
		transition: all .4s cubic-bezier(.25,.8,.25,1);
		transition-duration: 0.3s;
		color :#979797;
		top: 13px;
		left: 10px;
	}
	#input_rpw{
		width: 100%;
		height: 48px;
		display: block;
		position: relative;
		border: none;
		overflow: visible;
		padding: 20px 0px 0px 10px;
		box-sizing: border-box;
		transition: all .4s cubic-bezier(.25,.8,.25,1);
		outline : none;
		z-index: 9;
    	background-color: #ffffff00;
	}
	#insert_name{
		background-color: white;
		border: 1px solid #dadada;
		width : 460px;
		height: 51px;
		box-sizing: border-box;
		margin-top: 20px;
		position: relative;
	}
	#insert_label_name{
		font-family: 'Noto Sans KR', sans-serif;
		font-size: 15px;
		position: absolute;
		z-index: 1;
		transition: all .4s cubic-bezier(.25,.8,.25,1);
		transition-duration: 0.3s;
		color :#979797;
		top: 13px;
		left: 10px;
	}
	#input_name{
		width: 100%;
		height: 48px;
		display: block;
		position: relative;
		border: none;
		overflow: visible;
		padding: 20px 0px 0px 10px;
		box-sizing: border-box;
		transition: all .4s cubic-bezier(.25,.8,.25,1);
		outline : none;
		z-index: 9;
    	background-color: #ffffff00;
	}
	
	#insert_pn{
		background-color: white;
		border: 1px solid #dadada;
		width : 460px;
		height: 51px;
		box-sizing: border-box;
		margin-top: 20px;
		position: relative;
	}
	#insert_label_pn{
		font-family: 'Noto Sans KR', sans-serif;
		font-size: 15px;
		position: absolute;
		z-index: 1;
		transition: all .4s cubic-bezier(.25,.8,.25,1);
		transition-duration: 0.3s;
		color :#979797;
		top: 13px;
		left: 10px;
	}
	#input_pn{
		width: 100%;
		height: 48px;
		display: block;
		position: relative;
		border: none;
		overflow: visible;
		padding: 20px 0px 0px 10px;
		box-sizing: border-box;
		transition: all .4s cubic-bezier(.25,.8,.25,1);
		outline : none;
		z-index: 9;
    	background-color: #ffffff00;
	}
	#selmail{
		font-size:12px;		
	}
	#wrap_email >*.not(.clr){
		float:left;
		margin-right: 5px;
	}
	#wrap_email > input,select{
		width:144px;
		height:30px;
		box-sizing:border-box;
		margin-top: 17px;	
		border: 1px solid #dadada;
	}
	#btn_addr{
		width: 241px;
    	height: 31px;
    	cursor: pointer;
    	border-radius: 2px;
    	color: #fff;
		background: #44a8f2;
		border: 1px solid #44a8f2;
		box-sizing:border-box;
		font-size: 12px;
    	font-family: Open Sans, Helvetica Neue, Hiragino Sans GB,
			Microsoft YaHei, WenQuanYi Micro Hei, Arial, sans-serif !important;
			
	}
	#sample6_postcode{
		width: 212px;
   		height: 25px;
   		margin: 20px 0 5px 0;
   		border: 1px solid #dadada;
	}
	.input_addr2{
		width: 225PX;
    	height: 25px;
   		margin-bottom: 5px;
   		border: 1px solid #dadada;
	}
	#btn_member {
		display: block;
		box-sizing: border-box;
		width: 100%;
		height: 59px;
		font-size: 22px;
		text-align: center;
		color: #fff;
		background: #44a8f2;
		border: 1px solid #44a8f2;
		border-radius: 2px;
		padding-top: 2px;
		line-height: 61px;
		margin: 26px auto;
		cursor: pointer;
		font-family: Open Sans, Helvetica Neue, Hiragino Sans GB,
			Microsoft YaHei, WenQuanYi Micro Hei, Arial, sans-serif !important;
	}
	
	#btn_member:hover {
		box-shadow: 0 0 4px rgba(0, 0, 0, 0.2);
	}
	#clr{
		clear:both;
	}
	#err_check_msg{
		display:inline-block;
		width:460px;
		height:40px;
		font-size:17px;
		font-weight:400;
		line-height:24px;
		color:#f46665;
		padding:15px 5px 0px;
		text-align:center;
		box-sizing: border-box;
	}
	#err_check{
		display:none;
	}
	.error{
		color:#f46665;
		font-size: 12px;
		font-weight: 300;
		padding: 5px 10px;
		display: none;
	}
	#error_email{
		color:#f46665;
		font-size: 12px;
		font-weight: 300;
		padding: 5px 10px;
		display: none;
	}
	#error_addr{
		color:#f46665;
		font-size: 12px;
		font-weight: 300;
		padding: 5px 10px;
		display: none;
	}
</style>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	/*input */
	//id
	$("#insert_id").focus(function(){
		$(this).css("font-size", "17px");
		$("#insert_label").css("top","5px").css("font-size","12px");
	});
	$("#input_id").focus(function(){
		$(this).css("font-size", "17px");
		$("#insert_label").css("top","5px").css("font-size","12px");
	});
	$("#input_id").blur(function(){
		var idVal = $(this).val();
		if(idVal == ""){
			$(this).css("font-size","5px");
			$("#insert_label").css("top","15px").css("font-size","15px");
		}
	});
	
	//pw
	$("#insert_pw").focus(function(){
		$(this).css("font-size", "17px");
		$("#insert_label_pw").css("top","5px").css("font-size","12px");
	});
	$("#input_pw").focus(function(){
		$(this).css("font-size", "17px");
		$("#insert_label_pw").css("top","5px").css("font-size","12px");
	});
	$("#input_pw").blur(function(){
		var idVal2 = $(this).val();
		if(idVal2 == ""){
			$(this).css("font-size","5px");
			$("#insert_label_pw").css("top","15px").css("font-size","15px");
		}
	});
	
	// 비밀번호 확인
	$("#insert_rpw").focus(function(){
		$(this).css("font-size", "17px");
		$("#insert_label_rpw").css("top","5px").css("font-size","12px");
	});
	$("#input_rpw").focus(function(){
		$(this).css("font-size", "17px");
		$("#insert_label_rpw").css("top","5px").css("font-size","12px");
	});
	$("#input_rpw").blur(function(){
		var idVal2 = $(this).val();
		if(idVal2 == ""){
			$(this).css("font-size","5px");
			$("#insert_label_rpw").css("top","15px").css("font-size","15px");
		}
	});
	
	//이름
	$("#insert_name").focus(function(){
		$(this).css("font-size", "17px");
		$("#insert_label_name").css("top","5px").css("font-size","12px");
	});
	$("#input_name").focus(function(){
		$(this).css("font-size", "17px");
		$("#insert_label_name").css("top","5px").css("font-size","12px");
	});
	$("#input_name").blur(function(){
		var idVal2 = $(this).val();
		if(idVal2 == ""){
			$(this).css("font-size","5px");
			$("#insert_label_name").css("top","15px").css("font-size","15px");
		}
	});
	//전화번호
	$("#insert_pn").focus(function(){
		$(this).css("font-size", "17px");
		$("#insert_label_pn").css("top","5px").css("font-size","12px");
	});
	$("#input_pn").focus(function(){
		$(this).css("font-size", "17px");
		$("#insert_label_pn").css("top","5px").css("font-size","12px");
	});
	$("#input_pn").blur(function(){
		var idVal2 = $(this).val();
		if(idVal2 == ""){
			$(this).css("font-size","5px");
			$("#insert_label_pn").css("top","15px").css("font-size","15px");
		}
	});
	//이메일
	$("#selmail").change(function(){
		var selmail =$("#selmail").val();
		/*#selmail의 value값을 selmail변수에 담아라 */
		
		if(selmail == "directVal"){
			$("#email_url").val("");
			$("#email_url").focus();
		}else{
			$("#email_url").val(selmail);
			/*#email_url으 value속성에 selmail변수에 값을 넣어라 */
		}
	});	 
	
	 
	//blur 했을때 input태그에 값 없으면 경고메세지 출력  
	$(".input_join").blur(function(){
		//.input태그에 입력된 값을 가져옴  
		var inputVal = $(this).val();
		
		// input태그에 값이 없으면 경고메세지 출력 
		if(inputVal ==""){
			$(this).next().css("display","block");
		}else{
			 $(this).next().css("display","none");
		}
	});	 
	$(".input_join_email").blur(function(){
		/* input태그에 입력된 값을 가져옴  */
		var inputVal = $(this).val();		
		/* input태그에 값이 없으면 경고메세지 출력 */
		if(inputVal ==""){	
			$("#error_email").text("필수정보입니다").css("display","block");
		}else{
			 $("#error_email").css("display","none");
		}
	});
	$(".input_join_addr").blur(function(){
		/* input태그에 입력된 값을 가져옴  */
		var inputVal = $(this).val();		
		/* input태그에 값이 없으면 경고메세지 출력 */
		if(inputVal ==""){	
			$("#error_addr").text("필수정보입니다").css("display","block");
		}else{
			 $("#error_addr").css("display","none");
		}
	});
	
	$("#input_id").blur(function(){
		var idVal = $(this).val(); //id값 받아오기		
		if(idVal !=""){ //id값이 있는 경우에만 Ajax동작 하게 만들겠다			
			$.ajax({				
				url : "idCheck.bizpoll",
				type : "POST",
				dataType : "json",
				data : "id="+idVal,
				success : function(data){
					if(data.message =="-1"){
						$("#input_id").next().text("이미 사용 중인 ID 입니다").css("display","block").css("color","#F46665");
						$("#input_id").select();
					}else{
						$("#input_id").next().text("멋진 ID 네요!").css("display","block").css("color","#0000FF" );
						$("#input_pw").select();
					}	
				},
				error : function(){
					alert("system error!");
				}
			});		
		}
	});
	
	/*비밀번호 재확인 input태그를 bulr했을 때 비밀번호와 비밀번호 재확인 값을 비교  */
	 $("#input_rpw").blur(function(){
		
		//비밀번호와 비밀번호확인 값이 다르면 경고창 메세지 출력
		var pw1 = $("#input_pw").val();
		var pw2 = $("#input_rpw").val();
		if(pw1 != "" && pw2 !=""){
			if(pw1 ==pw2){// 값이 일치하는 경우  
				$(".checkpw").next().css("display","none");
			}else{/* 값이 일치하지 않는경우 
				/*1.비밀번호 확인 메세지에 "비밀번호가 일치하지 않습니다" 출력
				2. 비밀번호 확인(input)-> select가 가고 
				3. 값을 초기화*/
			
				$(this).next().text("비밀번호가 일치하지 않습니다").css("display","block");
				$(this).select();				
			}
		}
		
	}); 
		$(".input_join_addr").click(function(){ //우편번호조회로 연결
			$("#btn_addr").click();
		});
		
	/*$("#btn_member").click(function(){
		var id = $("#input_id").val();
		var pw = $("#input_pw").val();
		var rpw = $("#input_rpw").val();
		var name = $("#input_name").val();
		var pn = $("#input_pn").val();
		var addr = $(".input_addr2").val();
		var email = $("#email").val();
		var email_url = $("#email_url").val();		
		alert(id+","+pw+","+rpw+","+name+","+pn+","+addr+","+email+","+email_url);
		
		if(id !="" && pw !="" && rpw !="" && name !="" && pn !="" && addr !="" && email !=""  && email_url !=""){
		}else{//둘다 값x 또는 둘 중에 하나라도 값이x
			$("#err_check").css("display","block");
			return; //java로 이동하지 않고 화면단으로 다시 돌아감
		}
	});	*/
	
});

 $(document).on("click","#btn_member",function(){
	 //유효성체크하는 값을 받아온다. 
	var 
	form = $("#frm_mem"),
	mid = $("#input_id"),
	mpw = $("#input_pw"),
	mpw2 = $("#input_rpw"),
	mname = $("#input_name"),
	mphone = $("#input_pn"),
	zipcode = $("#sample6_postcode"),
	maddr1 = $("#sample6_address"),
	maddr2 = $("#sample6_address2"),
	memailid = $("#email"),
	memailurl = $("#email_url");
	
	
	
	//trim:앞뒤 공백제거 
	//id 유효성 검사 
	var id = $.trim(mid.val());
	var regId= /^[a-zA-Z0-9]{4,12}$/; //4~12자까지 영문자와 숫자만 가능
	
	if(id == ""){
		mid.focus();
		mid.next().css("display","block");			
		return false;
	}else if(!regId.test(id)){
		mid.focus();
		mid.next("span").text("4~12자 이내 영문자와 숫자만 입력하세요").css("display","block").css("color","#F46665");;
		return false;
	}//+ID 중복 체크 
	
	//pw 유효성 검사 
	var pw =$.trim(mpw.val());
	var pw2 = $.trim(mpw2.val());
	//영문자, 숫자 포함 특수문자 사용가능 8~20자리
	var regPass=/^.*(?=.{8,20})(?=.*[0-9])(?=.*[a-zA-Z]).*$/;

	if(pw==""){
		mpw.focus();
		mpw.next().text("필수정보입니다").css("display","block");
		return false;
	}else if(!regPass.test(pw)){
		mpw.select();
		mpw.next().text("8~20자 이내 영문자, 숫자, 특수문자만 사용하세요").css("display","block");
		return false;
	}else if(pw2==""){
		mpw2.focus();
		mpw2.next().text("필수정보입니다").css("display","block");
		return false;
	}else if(pw !=pw2){
		mpw2.select();
		mpw.next().text("비밀번호가 일치하지 않습니다").css("display","block");
		return false;
	}
	//이름 유효성 체크 
	//name값으로 ""인지 체크하는 유효성 체크  //
	var name =$.trim(mname.val());
	if(name ==""){
		mname.focus();
		mname.next().text("필수정보입니다").css("display","block");
		return false;
	}
	//◆ 전화번호
	//1. 01012345678 (11글자)
	//2. 010-1234-5678 (13글자)

	/* ▶ 체크하는 방법  
	1)input size =11 고정
	     010-1234-56 (11글자)
	2) input size 고정 안하고 
	    010-1234-5678 입력받으면
	     substring으로 "-" 을 제거한후 데이터 베이스에 저장 
	3) 애초에 input tag를 3개를 만든다.
	      input1 - input2-input3
	      input size = 3 size=4 size =4   */
	
	var phone = $.trim(mphone.val());
	var regphone = /^(01[016789]{1}|02|0[3-9]{1}[0-9]{1})-?[0-9]{3,4}-?[0-9]{4}$/;
	
	
	if(phone ==""){
		mphone.focus();
		mphone.next().text("필수정보입니다").css("display","block");
		return false;
	}else if($.isNumeric(phone) == false){// 숫자값만 들어왔는지 체크 //
		mphone.select();
		mphone.next().text("숫자만입력하세요").css("display","block");
		return false;
	}else if(!regphone.test(phone)){
		mphone.select();
		mphone.next().text("올바른 값을 입력하세요").css("display","block");
		return false;
	}
	
	
	var zipcodeVal = $.trim(zipcode.val());
	var addr1 = $.trim(maddr1.val());
	var addr2 = $.trim(maddr2.val());
	
	if(zipcodeVal ==""){
		zipcode.parent().children().last().text("필수정보 입니다").css("display","block");
		return false;
	}else if(addr1 =""){
		addr1.parent().children().last().text("필수정보 입니다").css("display","block");
		return false;
	}else if(addr2 =""){
		addr2.focus();
		addr2.parent().children().last().text("필수정보 입니다").css("display","block");
		return false;
	}

	//mail 
	//1. ""check
	//2. 정규식 check
	
	var mailid =$.trim(memailid.val());
	var mailurl =$.trim(memailurl.val());
	
	var mail = mailid + "@" + mailurl;
	var regMail = /([\w-\.]+)@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.)|(([\w-]+\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\]?)$/;
	
	if(mailid ==""){
		memailid.focus();
		memailid.next().text("필수정보입니다").css("display","block");
		return false;
	}else if(memailurl ==""){
		memailurl.focus();
		$("#selmail").next.text("필수정보입니다").css("display","block");
		return false;
	}else if(!regMail.test(mail)){
		memailid.select();
		$("#selmail").next.text("Email형식이 올바르지 않습니다").css("display","block");
		return false;
	}  
	

	/* 유효성체크 값이 유효한값 확인 끝!!!*/
	form.submit();
});
</script>
<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.

                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var fullAddr = ''; // 최종 주소 변수
                var extraAddr = ''; // 조합형 주소 변수

                // 사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    fullAddr = data.roadAddress;

                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    fullAddr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 조합한다.
                if(data.userSelectedType === 'R'){
                    //법정동명이 있을 경우 추가한다.
                    if(data.bname !== ''){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있을 경우 추가한다.
                    if(data.buildingName !== ''){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 조합형주소의 유무에 따라 양쪽에 괄호를 추가하여 최종 주소를 만든다.
                    fullAddr += (extraAddr !== '' ? ' ('+ extraAddr +')' : '');
                }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
                document.getElementById('sample6_postcode').value = data.zonecode; //5자리 새우편번호 사용
                document.getElementById('sample6_address').value = fullAddr;

                // 커서를 상세주소 필드로 이동한다.
                document.getElementById('sample6_address2').focus();
            }
        }).open();
    }
	
	

</script>
</head>
<body>
	<div id="body_wrap">
		<div id="photo_wrap">
			<!-- Start WOWSlider.com BODY section --> <!-- add to the <body> of your page -->
				<div id="wowslider-container1">
				<div class="ws_images"><ul>
					<li><img src="data1/images/1.png" alt="" title="" id="wows1_0"/></li>
					<li><a href="http://wowslider.net"><img src="data1/images/2.jpg" alt="jquery image carousel" title="" id="wows1_1"/></a></li>
					<li><img src="data1/images/3.jpg" alt="" title="" id="wows1_2"/></li>
				</ul></div>
				<div class="ws_bullets"><div>
					<a href="#" title=""><span><img src="data1/tooltips/1.png" alt=""/>1</span></a>
					<a href="#" title=""><span><img src="data1/tooltips/2.jpg" alt=""/>2</span></a>
					<a href="#" title=""><span><img src="data1/tooltips/3.jpg" alt=""/>3</span></a>
				</div></div><div class="ws_script" style="position:absolute;left:-99%"><a href="http://wowslider.net">css slideshow</a> by WOWSlider.com v8.8</div>
				<div class="ws_shadow"></div>
				</div>	
				<script type="text/javascript" src="engine1/wowslider.js"></script>
				<script type="text/javascript" src="engine1/script.js"></script>
				<!-- End WOWSlider.com BODY section -->			
		</div>
		<div id="mem_layout">
			<div id="content_layout">
				<header>
					<div id="header_div">
						<a href="index.bizpoll"><img alt="호버드론로고" src="img/로고.png"></a>
					</div>
					<div id="header_member">등록하기</div>
				</header>
				<section>
					<form  id = "frm_mem" name ="frm_mem" action="memberplay.bizpoll" method="POST">
						
						<div id="insert_id" class="insertval">
							<label for ="insert_id" id="insert_label" class="insertlabval">
								아이디
							</label>
							<input type ="text" id="input_id"  class="input_join" name="input_id">
							<span class="error">필수정보입니다</span>
						</div>
						
						<div id="insert_pw" class="insertval">
							<label for ="insert_pw" id="insert_label_pw" class="insertlabval">
								비밀번호
							</label>
							<input type ="password" id="input_pw" class="input_join" class="checkpw" name="input_pw">
							<span class="error">필수정보입니다</span>
						</div>		
						
						<div id="insert_rpw" class="insertval">
							<label for ="insert_rpw" id="insert_label_rpw" class="insertlabval">
								비밀번호 확인
							</label>
							<input type ="password" id="input_rpw" class="input_join" class="checkpw">
							<span class="error">필수정보입니다</span>
						</div>	
						
						<div id="insert_name" class="insertval">
							<label for ="insert_name" id="insert_label_name" class="insertlabval">
								이름
							</label>
							<input type ="text" id="input_name" class="input_join" name="input_name"> 
							<span class="error">필수정보입니다</span>
						</div>
						
						<div id="insert_pn" class="insertval">
							<label for ="insert_pn" id="insert_label_pn" class="insertlabval">
								핸드폰번호(-없이 입력하세요)
							</label>
							<input type ="text" id="input_pn" class="input_join" maxlength="11" name="input_pn">
							<span class="error">필수정보입니다</span>
						</div>
						
						<div>
							<input type="text" id="sample6_postcode" class="input_join_addr" placeholder=" 우편번호" readonly="readonly" class="addrbtn" name="zipcode">
							<input type="button" id="btn_addr" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"><br>
							<input type="text" id="sample6_address" class="input_addr2 input_join_addr" placeholder=" 주소" readonly="readonly" class="addrbtn" name="sample6_address">
							<input type="text" id="sample6_address2" class="input_addr2 input_join_addr" placeholder=" 상세주소" name="sample6_address2">
						</div>
						<span id="error_addr">필수정보입니다</span>	
						
						
						<div id="wrap_email">
							<input type ="text" id="email" placeholder="ID" class="input_join_email" name="email1">
							<span>@</span>
							<input type="text" id="email_url" placeholder="URL" class="input_join_email" name="email_url">
							<select id="selmail">
								<option value="" selected="selected">Email 선택</option>
								<option value="directVal">직접입력</option>
								<option value="naver.com">naver.com(네이버)</option>
								<option value="daum.net">daum.net(다음카카오)</option>
								<option value="gmail.com">gmail.com(구글)</option>
								<option value="nate.com">nate.com(네이트)</option>
							</select>
							<div class=".clr"></div>
						</div>
						<span id="error_email">필수정보입니다</span>
						
						<div id="err_check">
							<span id="err_check_msg">*** 모두 입력해 주세요 ***</span>
						</div>
						<div>
							<a href="#" id="btn_member">확인</a> <!--유효성 체크 때문에 #으로 해둠-->
						</div>
					</form>
				</section>
			</div>
		</div>
		<div class="clr_div"></div>	
	</div>
</body>
</html>