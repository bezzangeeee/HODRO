<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ include file ="include.jsp" %>  
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
@import url(http://fonts.googleapis.com/earlyaccess/notosanskr.css);
	#footer_body *,:after,:before{
		box-sizing: inherit;
	}
	#footer_body {

		background-color: white;
		font-family: Open Sans,Helvetica,Arial,Hiragino Sans GB,Microsoft YaHei,WenQuanYi Micro Hei,sans-serif;
	}
	#footer_body a {
		text-decoration: none;
	}
	#footer_body a:hover{
		color : #44a8f2;
	}	
	#footer_body ul {
		list-style-type: none;
		padding-left: 0px;
	}
	#page_footer{
		background: #fff;
   		padding-top: 72px;
	}	
	#footer_style{
		border-top: 1px solid #f0f1f2;
	}
	.style_container{
		width: 1200px;
	    padding-bottom: 48px;
	    flex-basis: 0;
	    display: flex;
	    justify-content: space-between;
   		margin: 0 auto;
   		
	}
	.style_secitem{
		margin-right: 24px;
		width: 100%;
	}
	h3{
		line-height: 24px;
	    margin-bottom: 8px;
	    color: #3b3e40;
	    font-size: 12px;
	    font-weight: 500;
	    vertical-align: baseline;
    	background: transparent;
	}
	.style_secitem li : not(:last-child){
		margin-bottom: 8px;
	}
	.style_secitem li{font-size: 12pxl; margin-bottom: 8px;}
	.style_secitem li a{
		display: inline-block;
	    text-decoration: none;
	    color: #6c7073;
	    font-size: 12px;
	    line-height: 24px;
	    vertical-align: baseline;
   		background: transparent;
	}.style_secitem li a:hover{color : #44a8f2;}
	#form_subscribe{
		width: 187px;
	}
	#subscribe_text{
		color: #6c7073;
    	font-size: 12px;
    	line-height: 16px;
    	padding-bottom: 16px;
	}
	#subscribe_input{
		float: left;
	    display: inline-block;
	    height: 32px;
	    padding: 0 8px;
	    width: 156px;
	    font-size: 12px;
	    font-family: open sans;
	    line-height: 32px;
	    color: #6c7073;
	    background-color: #fff;
	    background-image: none;
	    border: 1px solid #d4d7d9;
	    border-radius: 4px;
	    transition: border-color .15s ease-in-out,box-shadow .15s ease-in-out;
	    font: 99% sans-serif;
	    outline: none;
	}	
	#btn_submit{
		color: #fff;
	    font-size: 14px;
	    background-color: #6c7073;
	    width: 32px;
	    height: 34px;
	    line-height: 30px;
	    border-radius: 0 4px 4px 0;
	    text-transform: uppercase;
	    display: inline-block;
	    vertical-align: middle;
	    margin-left: -1px;
	    box-sizing: border-box;
	    position : absolute;
		top : 0;
		right : 14px;
	}
	#footer_body .fa :before{
	    display: inline-block;
   		font-size: inherit;
   	 	text-rendering: auto;  
	}
	#footer_body i :before{
		vertical-align: baseline;
    	background: transparent;
	}
	#email_div{
		position : relative;
		font-size: 12px;
	}
	#footer_end{
		background: #fff;
    	padding: 0 0 72px;
    	position: relative;
	    font-size: 100%;
	    font-weight: 400;
	    vertical-align: baseline;
	}
	
	#style_ftop{
		display: flex;
	    border-bottom: 1px solid #f0f1f2;
	    padding-bottom: 16px;
	    margin-bottom: 16px;
	    line-height: 24px;
	    height: 40px;
	    width: 100%;
	}
	#style_footer_logo{
		flex-grow: 1;
	    font-weight: 400;
	    font-size: 12px;
	    color: #6c7073;
	    height: 24px;
	    line-height: 24px;
	}
	#style_footer_logo a{
		display: inline-block;
    	line-height: 24px;
    	color: #6c7073;
	}
	#style_footer_logo a:not(:last-child){
		margin-right: 24px;
	}#style_footer_logo a:hover{color : #44a8f2;}
	#footer_logo{
		display: inline-block;
	    height: 24px;
	    margin-right: 32px;
	}
	#style_footersec{
		text-align: right;
		flex-grow: 1;
	    font-weight: 400;	    
	    color: #6c7073;
	    height: 24px;
	    line-height: 24px;
	}
	#style_footersec a{
		display: inline-block;
	    width: 24px;
	    height: 24px;
	    cursor: pointer;
	}#style_footersec a:hover{color : #44a8f2;}
	#style_footersec a i{
		display: inline-block;
	    width: 100%;
	    height: 100%;
	    background-repeat: no-repeat;
	    background-position: 50%;
	    color: #6c7073;
	   
	}
	#style_copyright{
		display: flex;
		flex-basis: 0;
		vertical-align: baseline;
	}
	#copyright_section{
		text-align: left;
	    font-weight: 400;
	    font-size: 12px;
	    color: #6c7073;
	    height: 24px;
	    line-height: 24px;
	    flex-grow: 1;
	}
	#copyright_section span{
		display: inline-block;
  		line-height: 24px;
	}	
	#style_service{
	 	margin-left: 32px;
	}
	#style_service a{
		padding-right: 20px;
		position: relative;
   		display: inline-block;
   		color: #6c7073;
	}
	#style_service a:hover{
		color : #44a8f2;
	}
	#style_click{
	    font-size: 12px;
    	color: #6c7073;	
	}
	#style_click a{
		display: inline-block;
   		line-height: 24px;
   		color: #6c7073;
	}#style_click a:hover{color : #44a8f2;}
	#blank{
		font-size: 12px;
	    line-height: 24px;
	    color: #6c7073;
	    margin-top: 16px;
	}
	.service_span{
		width: 2px;
	    height: 2px;
	    border-radius: 50%;
	    background: #6c7073;
	    position: absolute;
	    right: 10px;
	    top: 50%;	
	}
	.style_container1{
		width: 1200px;
    	margin: 0 auto;
    	position: relative;
	}
	#style_footer_logo img{
		width: 83px;
	    height: 40px;
	    display: flex;
	}
	
</style>
</head>
<body id="footer_body">
	<div id="page_footer">
		<footer id="footer_style">
			<div class="style_container">
				<div class="style_secitem">
					<h3>인기제품</h3>
					<ul>
						<li><a href="#">매빅</a></li>
						<li><a href="#">스파크</a></li>
						<li><a href="#">팬텀</a></li>
						<li><a href="#">오즈모</a></li>
						<li><a href="#">인스파이어</a></li>
					</ul>
				</div>
				<div class="style_secitem">
					<h3>프로그램</h3>
					<ul>
						<li><a href="#">교육프로그램</a></li>
						<li><a href="#">제휴 프로그램</a></li>
						<li><a href="#">스토어 앱</a></li>
					</ul>
				</div>
				<div class="style_secitem">
					<h3>도움말</h3>
					<ul>
						<li><a href="#">결제방식</a></li>
						<li><a href="#">주문정보</a></li>
						<li><a href="#">배송 및 납품</a></li>
						<li><a href="#">환불 정책</a></li>
						<li><a href="#">기술지원</a></li>
						<li><a href="#">AS 정책</a></li>
					</ul>
				</div>
				<div class="style_secitem">
					<h3>커뮤니티</h3>
					<ul>
						<li><a href="#">SkyPixel</a></li>
						<li><a href="#">DJI 포럼</a></li>
					</ul>
				</div>
				<div class="style_secitem">
					<form id="form_subscribe">
						<h3>구독</h3>
						<div id="subscribe_text">신제품, 알찬 할인 혜택, 새로운 소식 등 다양한 정보를 제일 먼저 받아보세요.</div>
						<div id="email_div">
							<input type="email" placeholder="이메일주소" id="subscribe_input">
							<button disabled id="btn_submit"><i class="fa fa-search"></i></button>
						</div>
					</form>
				</div>
			</div>
		</footer>
		<div id="footer_end">
			<div class="style_container1">
				<div id="style_ftop">
					<div id="style_footer_logo">
						<a href="#" id="footer_logo"><img alt="로고" src="img/로고.png"></a>
						<a href="#">회사소개</a>
						<a href="#">문의하기</a>
						<a href="#">채용공고</a>
						<a href="#">스토어</a>
					</div>
					<div id="style_footersec">
						<a href="https://www.facebook.com/"><i class="fa fa-facebook-official"></i></a>
						<a href="https://www.youtube.com/"><i class="fa fa-youtube-play"></i></a>
						<a href="https://www.instagram.com/"><i class="fa fa-instagram"></i></a>
						<a href="https://twitter.com/"><i class="fa fa-twitter"></i></a>
					</div>
				</div>
				<div id="style_copyright">
					<div id="copyright_section">
						<span>Copyright ©2018 HODRO All Rights Reserved</span>
						<span id="style_service">
							<a href="#">개인정보 보호정책<span class="service_span"></span></a>
							<a href="#">이용약관<span class="service_span"></span></a>
							<a href="#">사이트맵<span class="service_span"></span></a>
						</span>
					</div>
					<div id="style_click">웹사이트에 관한 의견이 있으십니까?<a href="#">여기를 클릭하세요</a></div>
				</div>
			</div>
			<div class="style_container1">
				<div id="blank"></div>
			</div>
		</div>
	</div>
</body>
</html>