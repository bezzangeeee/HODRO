<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file ="include.jsp" %> 
<% String path = request.getContextPath();  %>  
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
@import url('https://fonts.googleapis.com/css?family=Nanum+Gothic');
	*{
		font-family: 'Nanum Gothic', sans-serif;
	}
	body,ul{
		margin:0px;
		padding:0px;
	}
	ul{
		list-style-type:none;
	}
	a{
		text-decoration:none;
	}
	#header_wrap{
		box-sizing: border-box;
		position: fixed;
		top:0px;
		left:0px;
		width:100%;
		background-color: white;
		z-index: 9;
		border-bottom: 1px solid #efefef; 
	}
	/*로그인, 회원가입, 고객센터, 마이페이지  */
	#header_line1{
		height:40px;
		width:100%;
		display:flex;
		align-items: center;
		background-color: #f7f9fa;
		border-bottom: 1px solid #EAEAEA;
		box-sizing:border-box;
		/* box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2),
					0 6px 20px 0 rgba(0,0,0,0.19); */
		
	}
	#header_line1_in{
		width:1200px;
		margin:0 auto;
		line-height: 40px;
	}
	#header_line1_ul{
		float:right;
	}
	#header_line1_ul>li>a{		
		color:#6c7073;
		font-size: 12px;
		height:30px;
		padding:0 10px;
		display:inline-block;
		line-height:30px;
	}
	#header_line1_ul>li{
		float:left;	/*태그들을 좌측, 우측 유동 배치*/
		height:30px;
		position:relative;
	}
	#header_line1_ul >li>a:hover{/*li 태그에 마우스를 올렸을 때 동작하는 내용*/
		color:black;
		
	}
	#header_line1_ul >li:hover #header_line1_dropdown{
		/*#header_line1_ul >li:hover 했을때  
		  #header_line1_dropdown을 어떻게 변경할지 적용*/
		  display:block;
	
	}
	#header_line1_dropdown{
		box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2),
					0 6px 20px 0 rgba(0,0,0,0.19);
		display:none; 
		position:absolute;
		z-index: 9;
		top: 38px;
		border-top: 3px solid black;
	}
	#header_line1_dropdown>a{
		display:block;
		font-size:12px;
		padding: 0px 10px 5px;
		background-color : #f7f9fa;
		color:#6c7073;
		width:95px;
		height: 30px;
	}
	#header_line1_dropdown>a:hover{
		color: black;
		
	}
	#header_line1_mypage{
		width:90px;
		text-align: center;
		position: relative;
	}
	.bar{
		color:#6c7073;
   		width: 24px;
    	height: 18px;
    	vertical-align: middle;
    	overflow: hidden;
	}
	/*로고*/
	/* #header_logo1{
		width:200px;
		height:20px;
		padding:5px 0 0 0; 
	}*/
	#header_logo2{
		width:200px;
		height:58px;
		float: left;
	}		
	 #header_line2{
		width:1200px;
		height:63px;
		margin:0px auto;
		box-sizing: border-box;		
	}
	#header_line2 img{
		display: flex;
    	align-items: center; 
		
	}
	#loginInfo{
		font-size: 12px;
	} 
	#loginInfo >span{
		color:#2BA5BA;
	}
	/*line2 검색창*/
	div#header_line2_wrap_search{
		/* border-bottom: 1px solid black; */
		display:inline-block;
		float:right;	
		padding-top: 12.5px;	
	}
	div#header_line2_search{
		
		height:40px;
		box-sizing: border-box; 
		position: relative;
	}
	#header_line2_ul>li{
		float:left;	
		box-sizing: border-box;
		height:63px;
		width:100px;
		position:relative;
	}
	#header_line2_ul>li:hover .header_line2_dropdown{
		display:block;
	}
	#header_line2_ul>li>a:hover {
		color:black;
		
	}
	#header_line2_ul>li>a{
		color:gray;
		line-height:62px;
		font-size:15px;
		padding: 0 13px;
		display: block;  
		text-align: center;
	}
	.header_line2_dropdown{
		/* box-shadow: 0 4px 8px 0 rgba(0,0,0,0.2),
					0 6px 20px 0 rgba(0,0,0,0.19); */
		display:none;  
		position:absolute;
		width:100%;
	}
	.header_line2_dropdown>a{
		display:block;
		font-size:13px;
		padding: 5px 10px;
		background-color : white;
		color:gray;
		width:90px;
	}
	.header_line2_dropdown>a:hover{
		color: black;
		
	}
	#header_line2_product{
		width:100px;
		text-align: center;
	}
	#header_line2_category{
		width:100px;
		text-align: center;
	}
	#header_line2_guide{
		width:100px;
		text-align: center;
	}
	#header_line2_edusal{
		width:142px;
		text-align: center;
	}
	input#search_keyword{
		width:300px;
		height:40px;
		font-size: 15px;
		box-sizing: border-box;
		border:0px;
		padding-left: 10px;
		outline: none;
	}
	#search_btn{
		width:40px;
		height:40px;
		background-color:white;
		color:black;
		font-size: 20px;
		border:0px;
		position: absolute;
		right:0px;
		top:0px;
	}
	#search_btn:hover{
		color : #44a8f2;
		cursor: pointer;
		
	}
	/* #big_drop{
		width:100%;
		height:300px;
		background-color:blue;
		position:absolute;
		top:49px;
		display:none;
	} */
	
	
	
</style>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	$(document).ready(function(){
		$("#search_keyword").focus(function(){
			$(this).css("border-bottom","1px solid #44a8f2");
		});
		$("#search_keyword").blur(function(){
			$(this).css("border-bottom","0");
		});
		$("#spark_icon").on({
	        mouseenter: function(){
	            $("spark_name").css("color", "#1897f2");
	        },  
	        mouseleave: function(){
	            $("spark_name").css("color", "#333");
	        }
		});
	
	});
	
</script>
</head>
<body>
	<header>
		<div id="header_wrap">
			<div id="header_line1">
				<div id="header_line1_in">
				<!-- <a href="#">
				<img  id="header_logo1" src="../img/5.png" alt="로고"></a> -->
					<ul id="header_line1_ul">
						<c:choose> 
							<c:when test="${empty sessionScope.loginUser}">
								<li><a href="<%=path%>/login.bizpoll">로그인</a>
									<span class="bar">|</span>
								</li>
								<li><a href="<%=path%>/constract.bizpoll">회원가입</a>
									<span class="bar">|</span>
								</li>
							</c:when>
							<c:otherwise>
								<li id="loginInfo">
									<span>${sessionScope.loginUser.name} </span>(${sessionScope.loginUser.id})
								</li>
							
								<li><a href="<%=path%>/logOut.bizpoll">로그아웃</a>
									<span class="bar">|</span>
								</li>
							</c:otherwise>
						</c:choose>
						
						<li>
							<a id="header_line1_mypage" href="<%=path%>/#">마이페이지▼</a>
							<div id="header_line1_dropdown">
								<a href="<%=path%>/#">주문/배송조회</a>
								<a href="<%=path%>/#">장바구니</a>
								<a href="<%=path%>/#">위시리스트</a>
								
							<c:choose>	
								<c:when test="${empty sessionScope.loginUser}">
								</c:when>
								<c:otherwise>
								<a href="<%=path%>/passwordUpdate.bizpoll">비밀번호수정</a>
								<a href="<%=path%>/memberUpdate.bizpoll">내정보수정</a>	
								<a href="<%=path%>/memberDelete.bizpoll">회원탈퇴</a>							
								</c:otherwise>
							</c:choose>
							</div>	
							<span class="bar">|</span>				
						</li>
						<li><a href="<%=path%>/boardList.bizpoll">고객센터</a><span class="bar">|</span></li>
					</ul>
				</div>
			</div>
			<div id="header_line2">
			<!-- 	<div id="big_drop"></div> -->
			 <a href="<%=path%>/index.bizpoll">
				<img  id="header_logo2" src="<%=path%>/img/로고.png" alt="로고"></a>
				<div id="header_line2_wrap_search">
					<div id="header_line2_search">
						<input id="search_keyword" type="text" placeholder="제품검색하기">
						<button id="search_btn" type="submit" disabled>
							<i class="fa fa-search"></i>
						</button>
					</div>
				</div>
				
				<div id ="header_line2_in">
					<ul id="header_line2_ul">
						<li>
							<a id="header_line2_product" href="#">제품 ∨</a>
							<div class="header_line2_dropdown">
								<a href="<%=path%>/#">스파크</a>
								<a href="<%=path%>/#">매빅</a>
								<a href="<%=path%>/#">팬텀</a>
								<a href="<%=path%>/#">오즈모</a>
								<a href="<%=path%>/#">인스파이어</a>								
								<a href="<%=path%>/#">산업용</a>
								<a href="<%=path%>/#">부품</a>
								<a href="<%=path%>/#">개발자용</a>
								<a href="<%=path%>/#">Tello</a>
								<a href="<%=path%>/#">서비스</a>		
							</div>
						</li>
						<li>
							<a id="header_line2_category" href="<%=path%>/#">카테고리∨</a>
							<div class="header_line2_dropdown">
								<a href="<%=path%>/#">여행 & 레저</a>
								<a href="<%=path%>/#">라이프 스타일</a>
								<a href="<%=path%>/#">라이브 스트리밍</a>
								<a href="<%=path%>/#">산업적 응용</a>
							</div>
						</li>
						<li><a id="header_line2_guide" href="<%=path%>/#">구매가이드</a></li>
						<li><a id="header_line2_edusal" href="<%=path%>/#">교육할인프로그램</a></li>
					</ul>
				</div>
			</div>
			
			
		</div>	
	</header>
</body>
</html>