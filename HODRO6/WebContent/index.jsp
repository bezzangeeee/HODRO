<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!--index.jps 페이지에 header.jsp 페이지를 추가 -->    
<%@ include file = "include/header.jsp" %>    
    
<!DOCTYPE html>
<html>
<head>
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet">
<title>HODRO</title>

<style type="text/css">
@import url('https://fonts.googleapis.com/css?family=Nanum+Gothic');
	*{font-family: 'Nanum Gothic', sans-serif;}
	body{background-color: #f6f6f6;}
	#indexbody{
		padding-top: 113px;
	}
	/*#carousel_wrap{padding-top: 225px;}*/
	#carousel-example-generic{
		width: 100%;
		height: 480px;
		/* position: fixed; */ 
	}
	#backimg{
		 opacity: 0.9;
	}
	.item{
		position: relative;
	}
	.carousel-caption{
		position: absolute;
    	left: 20%;
    	top: 29%;
	    width: 100%;
	    text-align: center;
	    font-size: 40px;
	}
	#event{
		font-size : 50px;
	}
	.section_style{
		display:block;
		margin: 30px 0px;
    	flex-basis: 0;
    	position:relative;
    	width: 100%;
	}
	.section_style_container{
		display: flex;
    	width: 1200px;
    	margin: 0 auto;
    	height: 520px;
	}
	.bestitem{
    	background-color: white;
    	height:520px;
    	margin-right: 15px;
	}
	.bestitem:hover{
		box-shadow: 0 5px 6px 0px rgba(0, 0, 0, 0.3);
	
	}
	.bestitem_scene{
		position: relative;
		display: block;
		width:390px;
		height:520px;
	}
	.bestitem_img{
		width: 100%;
		height:520px;
		position: absolute;
	}
	.bestitem_img >img{
		width:99.5%;
		height: 264px;
		
	}
	.bestitem_entry{
		position: absolute;
    	width: 100%;
    	height: 100%;
    	display: flex;
    	align-items: center;
	}
	.bstinfo{
		padding-top:264px;	
			
	}
	.bstinfo>h2{
		width: 390px;
		height: 40px;
	    line-height: 40px;
    	font-size: 28px;
    	padding: 0 24px;
    	text-align: center;
    	color: black;
	}
	.bstsummary{
		width:390px;
		height: 24px;
		text-align: center;
    	display: inline-block;
    	font-size: 12px;
    	color: black;
	}
	
	.bstcontent{
		margin-top: 16px;
    	padding: 0 24px;
    	font-size: 14px;
    	font-weight: 400;
    	line-height: 24px;
    	text-align: center;
    	color: black;
	}
	.bstprice>span{
		display: block;
    	line-height: 95px;
    	text-align: center;
    	font-size: 16px;
    	color: black;
	}
	.section_style_event{
		width: 100%;
		height:400px;
	}
	.section_wrap{
		width: 1200px;
		height:400px;
		margin: 0 auto;
	}
	.section_con{
		width:592px;
		height: 400px;
		display: inline-flex;
   		align-items: center;
	}
	.section_con:hover{
		box-shadow: 0 5px 6px 0px rgba(0, 0, 0, 0.3);
	}
	#edusal{
		display: inline-block;
		margin-right: 16px;
		margin-bottom: 20px;
	}
	#edusal:hover{
		box-shadow: 0 5px 6px 0px rgba(0, 0, 0, 0.3);	
	}
	#edusal>img{
		width: 592px;
		height: 400px;
	}
	#point{
		display: inline-block;
		margin-bottom: 20px;
	}
	#point:hover{
		box-shadow: 0 5px 6px 0px rgba(0, 0, 0, 0.3);
	}
	#point>img{
		width: 592px;
		height: 400px;
	}
	.program{
		height: 400px;
	}
	button#mybtn{
		display: none;
		position: fixed;
		bottom: 20px;
		right:30px;
		z-index: 99;
		font-size: 18px;
		border: 1px solid #6799FF;
		outline: none;
		background-color: white;
		color: #6799FF;
		cursor: pointer;
		padding: 15px;
		border-radius: 30px;
	}
	button#mybtn:hover{
		background-color: #B2EBF4;
		color:white;
	}
	/*네이게이션 메뉴바*/
	#header_line3{
		width:100%;
		height: 112px;
    	background-color: white;
   		border-top: 1px solid #EAEAEA;
   		display: flex;
    	align-items: center;
		box-sizing:border-box; /*크기고정*/					
	}
	.header_line3_li{
		float:left;	
		box-sizing: border-box;
		width:132px;
		height:112px;
		flex-grow: 1;
		flex-basis: 0;
    	padding: 16px 0 15px;
    	border-bottom: 1px solid transparent;
	}
	#header_line3_ul>li>a{
		display: block;
	    width: 100px;
	    margin: 0 auto;
	    color: #333;
	    font-size: 12px;
	    text-decoration: none;
	    transition: all .3s;
	}
	#header_line3_ul>li>a:hover{
		color: black;
	}
	#header_line3_in{
		width:1200px;
		margin: 0 auto;		
	}
	.style_icon{
		height: 56px;
    	margin-left: auto;
    	margin-right: auto;
    	text-align: center;
	}
	.style_name{
		color: #3b3e40;
  	  	text-align: center;
  		font-size: 12px;
    	line-height: 24px;	
	}
	.style_name:hover{color:#1897f2;}
	
	
</style>
</head>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript" src="bootstrap/js/bootstrap.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$('.carousel').carousel({
			  interval: 5000
		});
	});
	$(window).scroll(function(){
		if($(document).scrollTop()>20){
			$("#mybtn").css("display","block");
		}else{
			$("#mybtn").css("display","none");
		}
	});
	$(document).on("click","#mybtn",function(){
		$(document).scrollTop(0);
		$("html,body").animate({scrollTop:0},1000);
	});


</script>
<body id ="indexbody">
	<div id="header_line3">
				<nav id="header_line3_in">
					<ul id="header_line3_ul">
						<li class="header_line3_li">
							<a href="#">
								<div class="style_icon" id="spark_icon"><img alt="스파크" src="img/spark_icon.png"></div>
								<div class="style_name" id="spark_name">스파크</div>
							</a>
						</li>
						<li class="header_line3_li">
							<a href="#">
								<div class="style_icon" id="mavic_icon"><img alt="매빅" src="img/mavic_icon.png"></div>
								<div class="style_name">매빅</div>
							</a>
						</li>
						<li class="header_line3_li">
							<a href="#">
								<div class="style_icon" id="phantom_icon"><img alt="팬텀" src="img/phantom_icon.png"></div>
								<div class="style_name">팬텀</div>
							</a>
						</li>
						<li class="header_line3_li">
							<a href="#">
								<div class="style_icon" id="osmo_icon"><img alt="오즈모" src="img/osmo_icon.png"></div>
								<div class="style_name">오즈모</div>
							</a>
						</li>
						<li class="header_line3_li">
							<a href="#">
								<div class="style_icon" id="inspire_icon"><img alt="인스파이어" src="img/inspire_icon.png"></div>
								<div class="style_name">인스파이어</div>
							</a>
						</li>
						<li class="header_line3_li">
							<a href="#">
								<div class="style_icon" id="industrial_icon"><img alt="산업용" src="img/industrial_icon.png"></div>
								<div class="style_name">산업용</div>
							</a>
						</li>
						<li class="header_line3_li">
							<a href="#">
								<div class="style_icon" id="developer_icon"><img alt="개발자용" src="img/developer_icon.png"></div>
								<div class="style_name">개발자용</div>								
							</a>
						</li>
						<li class="header_line3_li">
							<a href="#">
								<div class="style_icon" id="tello_icon"><img alt="tello" src="img/tello_icon.png"></div>
								<div class="style_name">Tello</div>
							</a>
						</li>
						<li class="header_line3_li">
							<a href="#">
								<div class="style_icon" id="service_icon"><img alt="서비스" src="img/service_icon.png"></div>
								<div class="style_name">서비스</div>
							</a>
						</li>
					</ul>
				</nav>		
			</div>
	
	<div id="carousel_wrap">
		<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
				<!-- Indicators -->
				<ol class="carousel-indicators">
					<li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
					<li data-target="#carousel-example-generic" data-slide-to="1"></li>
					<li data-target="#carousel-example-generic" data-slide-to="2"></li>
				</ol>
		
				<!-- Wrapper for slides -->
				<div class="carousel-inner" role="listbox">
					<div class="item active">
						<img src="img/매빅.png" alt="">
						<div class="carousel-caption"></div>
					</div>
					<div class="item">
						<img src="img/오즈모배경.png" alt="">
						<div class="carousel-caption"></div>
					</div>
					<div class="item">
						<img src="img/배경이미지.png" id="backimg" alt="">
						<div class="carousel-caption"><span id="event">EVENT</span>
							<br>Drone Photograph Contest</div>
					</div>
				</div>
		
				<!-- Controls -->
				<a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev"> 
					<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span> 
					<span class="sr-only">Previous</span></a> 
				<a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next"> 
					<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
					<span class="sr-only">Next</span>
				</a>		
		</div>
	</div>
	<section class="section_style">
		<div class="section_style_container">
			<c:forEach items ="${bestlist}" var="bestDto">
			<div class="bestitem">
			
				<article class="bestitem_scene">
					<a class="bestitem_url" href="#">
						<figure class="bestitem_img">
							<img src="img/${bestDto.p_img}">
						</figure>
						
						<section class="bestitem_entry"> 
							<div class="bstinfo">
								<h2>${bestDto.p_name}</h2>
								<div class="bstsummary">${bestDto.p_sum}</div>
								<div class="bstcontent">${bestDto.p_ex}</div>
								<div class="bstprice">
									<%-- <span>￦ ${bestDto.p_price}</span> --%>
									<%-- <span>￦<fmt:formatNumber value="${bestDto.p_price}"/></span> --%> 
									<%-- <span>￦<fmt:formatNumber value="0.25" type="percent"/></span> --%>
									<%-- <span>￦<fmt:formatNumber value="3.141589" pattern="#.##"/></span> --%>
									<fmt:setLocale value="ko_kr"/><!--ja_jp(엔화), en_us(달러)  -->
									<span><fmt:formatNumber value="${bestDto.p_price}" type="currency"/></span>
								</div>
							</div>
						</section>
					</a>
				</article>
			</div>
			</c:forEach>
		</div>
	</section>
	
	<section class="section_style_event">
		<div class="section_wrap">
			<div class="section_con">
				<a href="#" class="program">
					<figure id="edusal">
						<img alt="" src="img/edusal.PNG">
					</figure>
				</a>
				<a href="#" class="program">
					<figure id="point">
						<img alt="" src="img/event.png">
					</figure>
				</a>
			</div>
		</div>
	</section>
	<button id="mybtn">Top</button>	
</body>
</html>
<%@ include file = "include/footer.jsp" %>    