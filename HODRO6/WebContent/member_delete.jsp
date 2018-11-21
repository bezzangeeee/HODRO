<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>HODRO 회원탈퇴</title>
	<meta http-equiv="content-type" content="text/html; charset=utf-8" />
	<meta name="description" content="Made with WOW Slider - Create beautiful, responsive image sliders in a few clicks. Awesome skins and animations. Css slideshow" />

	<!-- Start WOWSlider.com HEAD section --> <!-- add to the <head> of your page -->
	<link rel="stylesheet" type="text/css" href="engine1/style.css" />
	<script type="text/javascript" src="engine1/jquery.js"></script>
	<!-- End WOWSlider.com HEAD section -->
<style type="text/css">
@import url('https://fonts.googleapis.com/css?family=Nanum+Gothic');
	body,ul,p{
		margin:0; padding:0;
		font-family: 'Nanum Gothic', sans-serif;
	}
	body{
		background-color: white;
	}
	a{
		text-decoration: none;
	}
	ul{
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
	#con_layout{
		display: inline-block;
		width:600px;
		height:858px;
		background: white;
	}
	.clr_div{
		clear:both;
	}
	/*header  */
	.divsize{
		width:456px;
		margin:0 auto;
		box-sizing: border-box;
	}
	#header{
		height:120px;
		padding-top: 30px;
		position: relative;
	}
	#hd_logo{
		margin:0 auto; padding:0;
		display:block;
		width: 240px;
		height: 44px;
		box-sizing: border-box;
	}
	#hd_logo img{
		height:70px;
   		width: 170px;
	    box-sizing: border-box;
	    display: block;
    	margin: auto;
	}
	#header_memdelete{
		font-family: 'Noto Sans KR', sans-serif;
		font-size: 33px;
		margin: 10px auto 33px;
		color: #707374;
		font-weight: 300;
		text-align: center;
	}
	/*container*/
	#container{position:relative;}
	#memdelte_frm{
		width: 460px;
		margin: 0 auto;
	}
	.warning{
		color: red;
		font-weight: bold;
	}
	.terms{
		margin-bottom: 20px;
		background-color: white;
		border:1px solid #dadada;
	}
	.terms_p{
		position: relative;
		margin: 0px;
		padding: 15px;
		display: block;
	}
	.terms_span{
		position: relative;
		display:block;
		height:58px;
	}
	.terms_span > input{
		position: absolute;
		right: 1px;
		top:50%;
		width:22px;
		height: 22px;
		margin-top: -11px;
		visibility: hidden;
	}
	.terms_span>label{
		font-size: 14px;
		font-weight: 700;
		top:-1px;
		height: 58px;
		line-height:20px;
		display: block;
		cursor: pointer;
		background: url("img/check_off.gif")100% 50% no-repeat;
	}
	.terms_span > input:checked+label{
		background-image:url('img/그림1_1.gif');
	}
	#terms_ul{
		padding-bottom: 7px;
	}
	#terms_ul >li{
		display:block;
		padding: 13px 15px 7px;
	}
	#terms_ul_li1{
		border-top: 1px solid #f0f0f0;
	}
	.ul_li_span{
		position: relative;
		display: block;
		height: 24px;
	}
	.ul_li_span>input{
		position:absolute;
		right:1px;
		top:50%;
		margin-top: -11px;
		width:22px;
		height: 22px;
		visibility: hidden;
	}
	.ul_li_span>label{
		background: url("img/check_off.gif")100% 50% no-repeat;
		display: block;
	}
	.ul_li_span >input:checked+label{
		background-image:url('img/그림1_1.gif');
	}
	.label1{
		height: 24px;
		font-size: 14px;
		font-weight: 700;
		line-height: 24px;
		position: absolute;
		color: #333;
		top:0px;
		left:0px;
		width:100%;
	}
	#label4{
		height: 24px;
		font-size: 14px;
		font-weight: 700;
		line-height: 24px;
		position: absolute;
		color:red;
		top:0px;
		left:0px;
		width:100%;
	}
	#label4 >span{
		font-size: 11px;
		font-weight: 400px;
		color: gray;
		padding-left: 10px;
		
	}
	.span_only{
		color:#44a8f2;
		font-size: 12px;
		font-weight: 400;
	}	
	.terms_box{
		box-sizing: border-box;
		position: relative;
		height: 79px;
		margin-top: 11px;
		padding: 8px 10px;
		border:1px solid #f0f0f0;
		background-color: #f7f7f7;
		overflow: auto;
	}	
	.article>p{
		display:block;
		font-size: 13px;
		line-height: 20px;
		color:#666;
	}
	.btn_type{
		width:auto;
		margin:0px 5px;
		font-size: 20px;
		font-weight: 600;
		line-height: 61px;
		display: block;
		box-sizing: border-box;
		height: 61px;
		padding-top: 1px;
		text-align: center;
		border-radius: 5px;
	}
	.btn_type:hover{
		box-shadow: 0 0 4px rgba(0,0,0,0.2);
	}
	.btn_agree{
		color: #fff;
		border: 1px solid #44a8f2;
		background-color: #44a8f2;
	}
	.btn_default{
		color:#333;
		border: 1px solid #e7e7e7;
		background-color: #fff;
	}
	.btn_double_area{
		margin: 8px -5px 0px;
		overflow: hidden;
	}
	.btn_double_area>span{
		display: block;
		float:left;
		width:50%;
	}
	#divpw{
		margin-bottom: 20px;
	}
	#pw{
		font-size: 15px;
		text-align: center;
		color:#707374;
		display: inline-block;
		margin: 10px;
	}
	#pwbox{
		display: inline-block;
		width:360px;
		height: 33px;
	}
	
	#footer{
		padding-top: 20px;
	}
	#footer *{
		font-size:9px;
		line-height:normal;
		list-style:none;
		color:#333;
	}
	#footer>ul{
		text-align:center;
		margin: auto;
	}
	#footer>ul>li{
		display:inline-block;
		border-left:1px solid #dadada;
		padding:0 5px 0 7px;
	}
	#footer>ul>li:first-child{
		border-left:0px!important;/* 최우선으로 CSS적용(root) */
									/* 남발해서 사용x */
									/*CSS 속성으로 해결하고, 최후에 사용할 것을 권장 */
	}
	#address{
		margin:0 auto;
		text-align:center;
	}
	#address *{
		font:9px verdana;
	}
	#addr_logo{
		width: 66px;
	    height: 10px;
	    margin-top: 3px;
	}
	#address a{
		font-weight:bold;
	}
	a:not(#hd_logo a):hover{
		box-shadow: 0 0 4px rgba(0,0,0,0.2);
		cursor: pointer;
	}
	#footer >ul>li a:hover{
		color:#44a8f2;
	}
	#err_check_msg{
		display:inline-block;
		width:428px;
		height:24px;
		font-size:11px;
		font-weight:700;
		line-height:24px;
		color:#f46665;
		padding:0px 15px;
		text-align:center;
	}
	#err_check{
		display:none;
	}
	#addr_cr{
		padding-bottom: 5px;
		display: inline-block;
	}
	#modal_header{
		display: block;
	    font-size: 17px;
	    float: left;
	    width: 94%;
	    height: 23px;
	    padding: 8px 9px;
	    background-color: #030066;
	    color: white;
	    border-radius: 13px;
	}
	#modal_con1{
		width: 300px;
    	height: 145px;	
	}
	#modal_con1>p{
		font-size: 22px;
	    text-align: center;
	    color: black;
	    padding: 70px 0px 30px;
	    display: block;
	}
	#modal_con1>p>span{
		color: red;
		font-weight: 450px; 
	}
	.modal_btn{
	    line-height: 30px;
	    display: inline-block;
	    height: 30px;
	    padding-top: 1px;
	    text-align: center;
	    width: 130px;
	    position: relative;
	    border-radius: 22px;
	    margin: 0 10px;
	}
	.modal_btn:hover{
		cursor: pointer;
	}
	.modal_btn>span{
		font-size: 20px;
	    text-align: center;
    	position: absolute;
    	display: contents;
	}
	#divbc{
		background-color: #EAEAEA;
		border: 1px solid #EAEAEA;
	}
	#divbc:hover{
		box-shadow: 0 0 4px rgba(0,0,0,0.2);
		color: black;
	}
	#btnCs{
		color: #8C8C8C;
	}
	#btnCs:hover{
		color:black;
	}
	#div_agr{
		border: 1px solid #44a8f2;
		background-color: #44a8f2;
	}
	#div_agr:hover{
		box-shadow: 0 0 4px rgba(0,0,0,0.2);
	}
	#btnagr{
		color: #fff;
	}
	
	.overlay {
	    background-color: rgba(0, 0, 0, 0.6);
	    bottom: 0;
	    cursor: default;
	    left: 0;
	    opacity: 0;
	    position: fixed;
	    right: 0;
	    top: 0;
	    visibility: hidden;
	    z-index: 9;
	    transition: opacity .5s;
	}
	.overlay:target {
	    visibility: visible;
	    opacity: 1;
	}
	.popup {
	    background-color: #fff;
	    border: 3px solid #fff;
	    display: inline-block;
	    left: 50%;
	    opacity: 0;
	    padding: 15px;
	    position: fixed;
	    text-align: justify;
	    top: 40%;
	    visibility: hidden;
	    z-index: 10;
	    transform: translate(-50%, -50%);
	    border-radius: 10px;
	    box-shadow: 0 1px 1px 2px rgba(0, 0, 0, 0.4) inset;
	    transition: opacity .5s, top .5s;
	}
	.overlay:target+.popup {
	    top: 50%;
	    opacity: 1;
	    visibility: visible;
	}
</style>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		/* alert("test"); */ 
		$("#cbox").click(function(){
			/* alert("test"); */
			/* 체크가 된 경우 체크해제 해주고 
			   해제된 경우 다시 체크 되게 해주는 알고리즘*/
			var ckAll = $("#cbox").is(":checked");
			/* alert("상태:"+ckAll)  */
			/*전체체크 버튼 클릭 되있으면 ckAll true*/
			/*전체체크 버튼 클릭 안되있으면 ckAll false*/   
			
			   /*체크 ON, OFF */
			 if(ckAll ==true){
				$(".ckboxs").prop("checked",true);
			}else{
				$(".ckboxs").prop("checked",false);
			} 			
		});
		$(".ckboxs").click(function () {
	 		if($(".ckboxs:checked").length==3){
				$("#cbox").prop("checked",true);
				$("#cbox").css("backgroud-image","img/그림1_1.gif");
				
			}else{
				$("#cbox").prop("checked",false);
				$("#cbox").css("backgroud-image","img/check_off.gif");
			} 
		});
		/*동의 버튼을 클릭했을 때 
		
		(필수1)과 (필수2)의 checked값을 가지고 와서 둘다 true면 페이지 이동
		아니면 err_check display block 변경*/
		$(".btn_agree").click(function(){
			/* alert("test"); */
			var ck1 = $("#li1box").is(":checked");
			var ck2 = $("#li2box").is(":checked");
			if(ck1==true && ck2 ==true){
				$("#popup").css("display", "block");
			}else{			
				$("#err_check").css("display","block");
			}
		});	
		
		/* Modal창 켜고 끄기 */
		$(".btn_agree").click(function(){
			$("#popup").css("display", "block");	
		});
		$("#btnCs").click(function(){
			$("#pwbox").val("");
			$("#popup").css("display", "none");
		});
	});
	
	
	$(document).on("click","#btnagr",function(){		
		var nowPw=$("#pwbox").val();
		$.ajax({
			url : "memberdeleteplay.bizpoll",
			type : "POST",
			dataType : "json",
			data : "id=${sessionScope.loginUser.id}&pw="+nowPw,
			success : function(data){
				if(data.message =="-1"){
					location.href="index.bizpoll";
				}else{
					$("#modal_all").css("display","none");
					$("#pwbox").next().text("정확한 비밀번호를 입력해주세요.");
					$("#pwbox").select();
				}	
			},
			error : function(){
				alert("system error!");
			}
		})
	
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
		<div id="con_layout">
			<header>
				<div id="header" class="divsize">
					<h1 id="hd_logo">
						<a href="index.bizpoll"><img alt="호버드론로고" src="img/로고.png"></a>
					</h1>
				</div>
				<div id="header_memdelete">회원탈퇴</div>
			</header>
			<article>				
				<div id="container" class="divsize">
					<form id="memdelte_frm">
						<div class="terms">
							<ul id="terms_ul">
								<li id="terms_ul_li1">
									<span class="ul_li_span">
										<input type="checkbox" id="li1box" class="ckboxs">
										<label for="li1box" class="label1">
											HODRO 아이디 재사용 및 복구불가 안내 
										</label>
									</span>
									<div class="terms_box">
										<div class="article">
											<p>회원탈퇴 진행 시 본인을 포함한 타인 모두<span class="warning">아이디 재사용이나 복구가 불가능</span>합니다.
											 신중히 선택하신 후 결정해주세요.</p>
											<br>
											<p></p>
										</div>
									</div>
								</li>
								<li id="terms_ul_li2">
									<span class="ul_li_span">
										<input type="checkbox" id="li2box" class="ckboxs">
										<label for="li2box" class="label1">
											내정보 및 개인형 서비스 이용 기록 삭제 안내
										</label>
									</span>
									<div class="terms_box">
										<div class="article">																				
											<p>내정보 및 개인형 서비스 이용기록이 모두 삭제되며,<span class="warning">삭제된 데이터는 복구되지 않습니다.</span>
											삭제되는 서비스를 확인하시고, 필요한 데이터는 미리 백업을 해주세요.
										</div>
									</div>
								</li>
								<li id="terms_ul_li3">
									<span class="ul_li_span">
										<input type="checkbox" id="li3box" class="ckboxs">
										<label for="li3box" class="label1">
											게시판형 서비스에 등록한 게시글 삭제 불가 안내
										</label>
									</span>
									<div class="terms_box">
										<div class="article">
											<p>삭제를 원하는 게시글이 있다면 반드시 회원탈퇴 전 비공개 처리하거나 삭제하시기 바랍니다.
											탈퇴 후에는 회원정보가 삭제되어 본인 여부를 확인할 수 있는 방법이 없어, 
											<span class="warning">게시글을 임의로 삭제해드릴 수 없습니다.</span></p>
										</div>
									</div>
								</li>
								<li id="terms_ul_li4">
									<span class="ul_li_span">
										<input type="checkbox" id="cbox">
										<label for="cbox" id="label4">
											상기 내용을 모두 확인하였습니다<span>(전체선택)</span>
										</label>
									</span>
								</li>	
							</ul>
						</div>
						
						<div id="divpw">
							<span id="pw">비밀번호</span>
							<input type="password" id="pwbox" placeholder=" 비밀번호">
						</div>
						
						<div id="err_check">
							<span id="err_check_msg">HODRO 탈퇴에 대한 안내 모두 동의해 주세요.</span>
						</div>
						<div class="btn_double_area">
							<span><a href="index.bizpoll" class="btn_type btn_default">취소</a></span>
							<span><a href="#login_form" class="btn_type btn_agree">확인</a></span>
						</div>
				</div>				
			</article>
			<footer>
				<div id="footer" class="divsize">
					<ul>
						<li><a href="#">이용약관</a></li>
						<li><strong><a href="#">개인정보처리방침</a></strong></li>
						<li><a href="#">책임의 한계와 법적고지</a></li>
						<li><a href="#">회원정보 고객센터</a></li>
					</ul>	
					<div id="address">
						<span>
							<a href="#">
								<img id="addr_logo" alt="로고" src="img/로고.png">
							</a>
						</span>
						<div id="addr_cr">
							<span>Copyright</span>
							<span>ⓒ</span>
							<span>
								<strong>
									<a href="#">HODRO Corp.</a>
								</strong>
							</span>
							<span>All Rights Reserved.</span>
						</div>
					</div>
				</div>
			</footer>		
		</div>
		<div class="clr_div"></div>
	</div>
        <a href="#" class="overlay" id="login_form"></a>
        <div class="popup">
           <div id=modal_header>HODRO</div>
            <div id="modal_con1"><p>정말 <span>탈퇴</span>하시겠습니까?</div>            
				<div class="modal_btn" id="divbc">
					<span><a href="#" id="btnCs">취소</a></span>
				</div>
			
            <div class="modal_btn" id="div_agr">
				<span><a href="#" id="btnagr">확인</a></span>				
			</div>			
        </div>	
</body>
</html>