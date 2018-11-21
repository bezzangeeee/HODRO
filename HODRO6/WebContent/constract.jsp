<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file ="include/include.jsp" %> 
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>HODRO 가입전 동의</title>
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
	
	/*container*/
	#container{position:relative;}
	#join_content{
		width: 460px;
		margin: 0 auto;
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
	.span_only{
		color:#44a8f2;
		font-size: 12px;
		font-weight: 400;
	}
	.span_select{	
		color:#969696;
		font-size: 12px;
		font-weight: 400;
	}
	.terms_box{
		box-sizing: border-box;
		position: relative;
		height: 88px;
		margin-top: 11px;
		padding: 8px 10px;
		border:1px solid #f0f0f0;
		background-color: #f7f7f7;
		overflow: auto;
	}	
	h3.article_title{
		font-size: 12px;
		font-weight: 700;
		line-height: 16px;
		color: #666;
		margin: 0;
		padding: 0;
		padding-bottom: 8px;
	}
	.article>p{
		display:block;
		font-size: 12px;
		line-height: 16px;
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
	 		if($(".ckboxs:checked").length==4){
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
				location.href ="member.bizpoll";
			}else{			
				$("#err_check").css("display","block");
			}
		});		
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
			</header>
			<article>
				<div id="container" class="divsize">
					<form id="join_content">
						<div class="terms">
							<p class="terms_p">
								<span class="terms_span">
									<input type="checkbox" id="cbox">
									<label for="cbox">
										이용약관, 개인정보 수집 및 이용,<br>
										위치정보 이용약관(선택), 프로모션 안내<br>
										메일 수신(선택)에 모두 동의 합니다. 
									</label>
								</span>
							</p>
							<ul id="terms_ul">
								<li id="terms_ul_li1">
									<span class="ul_li_span">
										<input type="checkbox" id="li1box" class="ckboxs">
										<label for="li1box" class="label1">
											HODRO 이용약관 동의 <span class="span_only">(필수)</span>
										</label>
									</span>
									<div class="terms_box">
										<div class="article">
											<h3 class="article_title">여러분을 환영합니다.</h3>
											<p>HODRO 서비스 및 제품(이하 ‘서비스’)을 이용해 주셔서 감사합니다. 본 약관은<br>
											    다양한 HODRO 서비스의 이용과 관련하여 HODRO 서비스를 제공하는 HODRO<br>
											    주식회사(이하 ‘HODRO’)와 이를 이용하는 HODRO 서비스 회원(이하 ‘회원’)<br> 
											    또는 비회원과의 관계를 설명하며, 아울러 여러분의 HODRO 서비스 이용에 도<br>움이 
											    될 수 있는 유익한 정보를 포함하고 있습니다</p>
											<br>
											<h3 class="article_title">제 2 조 (목적)</h3>
											<p></p>
										</div>
									</div>
								</li>
								<li id="terms_ul_li2">
									<span class="ul_li_span">
										<input type="checkbox" id="li2box" class="ckboxs">
										<label for="li2box" class="label1">
											개인정보 수집 및 이용에 대한 안내<span class="span_only">(필수)</span>
										</label>
									</span>
									<div class="terms_box">
										<div class="article">
											<p>정보통신망법 규정에 따라 HODRO에 회원가입 신청하시는 분께 수집하는 개인<br>
											    정보의 항목, 개인정보의 수집 및 이용목적, 개인정보의 보유 및 이용기간을<br>
											    안내 드리오니 자세히 읽은 후 동의하여 주시기 바랍니다.</p>
											<br>
											<h3 class="article_title">1. 수집하는 개인정보</h3>										
											<p>이용자는 회원가입을 하지 않아도 정보 검색, 뉴스 보기 등 대부분의 HODRO<br>
											    서비스를 회원과 동일하게 이용할 수 있습니다. 이용자가 메일, 캘린더, 카페,<br>
											    블로그 등과 같이 개인화 혹은 회원제 서비스를 이용하기 위해 회원가입을 할<br>
											    경우, HODRO는 서비스 이용을 위해 필요한 최소한의 개인정보를 수집합니다.</p>
										</div>
									</div>
								</li>
								<li id="terms_ul_li3">
									<span class="ul_li_span">
										<input type="checkbox" id="li3box" class="ckboxs">
										<label for="li3box" class="label1">
											위치정보 이용약관 동의<span class="span_select">(선택)</span>
										</label>
									</span>
									<div class="terms_box">
										<div class="article">
											<p>위치정보 이용약관에 동의하시면, <strong>위치를 활용한 광고 정보 수신</strong> 
											등을 포함하<br>는 HODRO 위치기반 서비스를 이용할 수 있습니다.</p>
											<br>
											<h3 class="article_title">제 1조 (목적)</h3>										
											<p>이 약관은 HODRO 주식회사 (이하 “회사”)가 제공하는 위치정보사업 또는 위치<br>
											    기반서비스사업과 관련하여 회사와 개인위치정보주체와의 권리, 의무 및 책임<br>
											    사항, 기타 필요한 사항을 규정함을 목적으로 합니다.</p>
										</div>
									</div>
								</li>
								<li id="terms_ul_li4">
									<span class="ul_li_span">
										<input type="checkbox" id="li4box" class="ckboxs">
										<label for="li4box" class="label1">
											이벤트 등 프로모션 알림 메일 수신<span class="span_select">(선택)</span>
										</label>
									</span>
								</li>
							</ul>
						</div>
						<div id="err_check">
							<span id="err_check_msg">HODRO 이용약관과 개인정보 수집 및 이용에 대한 안내 모두 동의해 주세요.</span>
						</div>
						<div class="btn_double_area">
							<span><a href="index.jsp" class="btn_type btn_default">비동의</a></span>
							<span><a href="#" class="btn_type btn_agree">동의</a></span>
						</div>
					</form>
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
</body>

</html>