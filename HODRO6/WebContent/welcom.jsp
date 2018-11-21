<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- <meta http-equiv="refresh" content="3; url=index.bizpoll">3초뒤에 url페이지로 이동 -->
<title>Insert title here</title>
<style type="text/css">
	body{margin: 0px; padding: 0px;}
	#welcom_box{
		width: 600px;
		height: 200px;
		border: 2px solid #003399;
		margin: 0 auto;
		margin-top: 200px;
		border-radius: 30px;
	}
	#welcome_ment{
		font-size: 30px;
		text-align: center;	
		margin-top: 60px;
			
	}	
	#pagemov{
		font-size: 20px;
		text-align: center;
		margin-top: 10px;
	}
	#rCnt{color:red;}
</style>
<script type="text/javascript" src="js/jquery-3.3.1.min.js"></script>
<script type="text/javascript">
	var cnt=4;
	function countdown(){ /* 콜백함수가 아니라 countdown이라는 이름있는 함수임 호출하기 전까지 아무런 동작 안함  */
		if(cnt == 0){
			clearInterval(s); //setInterval 함수를 초기화
			location.href="index.bizpoll";
		}
		document.getElementById("rCnt").innerHTML = cnt; /* cnt(4)라는 값을 rCnt에 넣어라 */
		cnt--; /* --이니까 값은 3  */
		
	}
	var	s= setInterval(countdown,1000); //start!!! 1초단위로 카운트다운 함수를 실행 
</script>
</head>
<body>
	<div id="welcom_box">
		<div id="welcome_ment">HODRO에 가입해주셔서 감사합니다.</div>
		<div id="pagemov"><span id="rCnt">5</span>초 후에 메인 페이지로 이동합니다.</div>
		
		<!-- 카운트다운 방법 -->
		<!-- 1.meta 태그 활용 -->
		<!-- 2. JavaScript의 setInterval()활용 -->
		
	</div>
	
</body>
</html>