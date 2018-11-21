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
	
	#header_pwupdate {
		font-family: 'Noto Sans KR', sans-serif;
		font-size: 33px;
		margin: 60px auto;
		color: #707374;
		font-weight: 300;
		text-align: center;
	}
	
	/*section(input(id,pw,rpw,이름,번호,주소,e-mil),확인버튼,find*/
	#insert_pw{
		background-color: white;
		border: 1px solid #dadada;
		width : 460px;
		height: 51px;
		box-sizing: border-box;
		margin-top: 35px;
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
	#input_cpw{
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
	#insert_npw{
		background-color: white;
		border: 1px solid #dadada;
		width : 460px;
		height: 51px;
		box-sizing: border-box;
		margin-top: 35px;
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
	#input_npw{
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
	#insert_nrpw{
		background-color: white;
		border: 1px solid #dadada;
		width : 460px;
		height: 51px;
		box-sizing: border-box;
		margin-top: 35px;
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
	#input_nrpw{
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
	#btn_cancle {
		display: inline-block;
		float:left;
		box-sizing: border-box;
		width: 220px;
		height: 59px;
		font-size: 22px;
		text-align: center;
		color: #fff;
		background: #dadada;
		border: 1px solid #dadada;
		border-radius: 2px;
		padding-top: 2px;
		line-height: 50px;
		margin: 40px 20px 25px 0px;
		cursor: pointer;
		font-family: Open Sans, Helvetica Neue, Hiragino Sans GB,
			Microsoft YaHei, WenQuanYi Micro Hei, Arial, sans-serif !important;
	}	
	#btn_member {
		display: inline-block;
		float:left;
		box-sizing: border-box;
		width: 220px;
		height: 59px;
		font-size: 22px;
		text-align: center;
		color: #fff;
		background: #44a8f2;
		border: 1px solid #44a8f2;
		border-radius: 2px;
		padding-top: 2px;
		line-height: 50px;
		margin: 40px 0px;
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
</style>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
$(document).ready(function(){
	/*input */
	$("#insert_pw").focus(function(){
		$(this).css("font-size", "17px");
		$("#insert_label").css("top","5px").css("font-size","12px");
	});
	$("#input_cpw").focus(function(){
		$(this).css("font-size", "17px");
		$("#insert_label").css("top","5px").css("font-size","12px");
	});
	$("#input_cpw").blur(function(){
		var idVal = $(this).val();
		if(idVal == ""){
			$(this).css("font-size","5px");
			$("#insert_label").css("top","15px").css("font-size","15px");
		}
	});
	
	$("#insert_npw").focus(function(){
		$(this).css("font-size", "17px");
		$("#insert_label_pw").css("top","5px").css("font-size","12px");
	});
	$("#input_npw").focus(function(){
		$(this).css("font-size", "17px");
		$("#insert_label_pw").css("top","5px").css("font-size","12px");
	});
	$("#input_npw").blur(function(){
		var idVal2 = $(this).val();
		if(idVal2 == ""){
			$(this).css("font-size","5px");
			$("#insert_label_pw").css("top","15px").css("font-size","15px");
		}
	});
	
	$("#insert_nrpw").focus(function(){
		$(this).css("font-size", "17px");
		$("#insert_label_rpw").css("top","5px").css("font-size","12px");
	});
	$("#input_nrpw").focus(function(){
		$(this).css("font-size", "17px");
		$("#insert_label_rpw").css("top","5px").css("font-size","12px");
	});
	$("#input_nrpw").blur(function(){
		var idVal2 = $(this).val();
		if(idVal2 == ""){
			$(this).css("font-size","5px");
			$("#insert_label_rpw").css("top","15px").css("font-size","15px");
		}
	});
	
	$(".input_join").blur(function(){
		/* input태그에 입력된 값을 가져옴  */
		var inputVal = $(this).val();
		
		/* input태그에 값이 없으면 경고메세지 출력 */
		if(inputVal ==""){
			$(this).next().css("display","block");
		}else{
			 $(this).next().css("display","none");
		}
	});	
	
	
	
	/*비밀번호 재확인 input태그를 bulr했을 때 비밀번호와 비밀번호 재확인 값을 비교  */
	$("#input_nrpw").blur(function(){
		
		/*비밀번호와 비밀번호확인 값이 다르면 경고창 메세지 출력 */
		var pw1 = $("#input_npw").val();
		var pw2 = $("#input_nrpw").val();
		if(pw1 != "" && pw2 !=""){
			/* alert("====>"+pw1 +","+pw2); */
			if(pw1 ==pw2){/* 값이 일치하는 경우  */
				$(".checkpw").next().css("display","none");
			}else{/* 값이 일치하지 않는경우 */
				/*1.비밀번호 확인 메세지에 "비밀번호가 일치하지 않습니다" 출력
				2. 비밀번호 확인(input)-> select가 가고 
				3. 값을 초기화*/
			
				$(this).next().text("비밀번호가 일치하지 않습니다").css("display","block");
				$(this).select();				
			}
		}
		
	});
});	
	
	//Ajax 비밀번호 
	$(document).on("blur","#input_cpw",function(){
	//현재 비밀번호 입력받은 값이 일치한지 확인하는 과정
	var nowPw=$("#input_cpw").val();
	if(nowPw !=""){
		$.ajax({
			url:"pwCheck.bizpoll",
			type:"POST",
			dataType:"json",
			data:"id=${sessionScope.loginUser.id}&pw="+nowPw,
			success:function(data){
				/* alert("Ajax성공!!!!"); */
				if(data.message == "-1"){
					$("#input_cpw").next().text("비밀번호가 일치합니다").css("display","block").css("color","#0000FF");
					$("#input_npw").select();
				}else{
					$("#input_cpw").next().text("비밀번호가 일치하지 않습니다").css("display","block").css("color","#F46665");
					$("#input_cpw").select();
				}
			},
			error:function(){
				alert("System Error!!");
			}
		});
	}
});

$(document).on("click","#btn_member",function(){
	/* //유효성체크하는 값을 받아온다. 
	var 
	form = $("#frm_mem"),
	nowpw = $("#input_cpw"),
	mpw = $("#input_npw"),
	mpw2 = $("#input_nrpw");
	
	//trim:앞뒤 공백제거 
	//현재비밀번호 유효성 검사 
	var cpw = $.trim(nowpw.val());
	var pw = $.trim(mpw.val());
	var pw2 = $.trim(mpw2.val());
	var checkTest = $("#input_cpw").next().text();
	//checkText = 필수 정보입니다. 비밀번호가 일치하지 않습니다. 비밀번호가 일치합니다. 
	var regPass=/^.*(?=.{8,20})(?=.*[0-9])(?=.*[a-zA-Z]).*$/;
	
	if(cpw == ""){
		nowpw.focus();		
		nowpw.next().css("display","block");			
		return false;
	}else if(pw==""){
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
	if(cpw = npw){
		mpw.focus();
		mpw.val("");
		mpw2.val("");
		mpw.next().text("현재비밀번호와 동일합니다").css("display","block");
		return false;
		} */
 
	 $("#frm_mem").submit(); 
});
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
					<div id="header_pwupdate">비밀번호 변경</div>
				</header>
				<section>
					<form  id = "frm_mem" name ="frm_mem" action="memberpwplay.bizpoll" method="POST">
						
						<div id="insert_pw" class="insertval">
							<label for ="insert_pw" id="insert_label" class="insertlabval">
								현재 비밀번호
							</label>
							<input type ="password" id="input_cpw"  class="input_join" name="input_cpw">
							<span class="error">필수정보입니다</span>
						</div>
						
						<div id="insert_npw" class="insertval">
							<label for ="insert_npw" id="insert_label_pw" class="insertlabval">
								새 비밀번호
							</label>
							<input type ="password" id="input_npw" class="input_join" class="checkpw" name="input_npw">
							<span class="error">필수정보입니다</span>
						</div>		
						
						<div id="insert_nrpw" class="insertval">
							<label for ="insert_nrpw" id="insert_label_rpw" class="insertlabval">
								새 비밀번호 확인
							</label>
							<input type ="password" id="input_nrpw" class="input_join" class="checkpw">
							<span class="error">필수정보입니다</span>
						</div>	
						
						<input type="hidden" name="updateId" value ="${sessionScope.loginUser.id}">
						
						<div id="err_check">
							<span id="err_check_msg">*** 모두 입력해 주세요 ***</span>
						</div>
						<div>
							<a href="#" id="btn_cancle">취소</a>
						</div>
						<div>
							<a href="#" id="btn_member">저장하기</a>
						</div>
					</form>
				</section>
			</div>
		</div>
		<div class="clr_div"></div>	
	</div>
</body>
</html>