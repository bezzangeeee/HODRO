<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../include/header.jsp" %>  
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
	@import url('https://fonts.googleapis.com/css?family=Nanum+Gothic');
	*{
		font-family: 'Nanum Gothic', sans-serif;
		box-sizing:inherit; 
	}
	#board body,ul{
		margin:0px;
		padding:0px;
	}
	#board ul{
		list-style-type:none;
	}
	#board a{
		text-decoration:none;
	}
	#board_wrap{
    	margin: 180px auto 30px;
    	width:60%;
	}
	#notice_header{
		box-sizing: border-box;
		border-bottom: 1px solid gray;
	}
	.notice_title{
		display: inline-flex;
	}
	.notice_title>h2{
		color: gray;
	}
	.notice_title>p{
		font-size: 17px;
		color: gray;
		line-height: 35px;
		padding-left: 5px;
	}
	.notice_classify{
		height: 42px;
   		padding-top: 12px;
		line-height: 38px;
		padding-bottom: 10px;
	}
/* 	#board input[type="checkbox"]+label span{
		height: 15px;
		width: 15px;
		display: inline-block;
		border: 2px solid #bcbcbc;
		vertical-align: middle;
		cursor: pointer;
		
	}#board input[type="checkbox"]:checked +label span{
		background-color: #666666;
	}
	#board input[type="checkbox"] {
		display: none;
	} */
	#classify_category{
		padding-left: 5px;
	}
	#search_category{
		height: 30px;
	    text-align: center;
	    vertical-align: bottom;
	    margin-top: 10px;
	    display: inline-block;
		border-radius:10px;
		outline: none;
	}
	.classify_search{
		display: inline-block;
		border: none;
		border-bottom: 2px solid gray;
		
	}
	#btn_search{
		width: 160px;
		outline: none;
		border: none;
	}
	#btn_search_submit{
		background-color:white;
	    height: 40px;
	    width: 40px;
	    border: none;
	    cursor: pointer;
	    font-size: 20px;
	}#btn_search_submit:hover{
		cursor: pointer;
		color: black;
	}
	#board table {
   	 width:100%;
	}
	#board table, th, td {
	    border: 1px solid black;
	    border-collapse: collapse;
	}
	#board th, td {
	    padding: 13px;
   		text-align: center;
	}
	#board table tr:nth-child(even) {
    	background-color: #eee;
	}
	#board table tr:nth-child(odd) {
	   background-color: #fff;
	}
	#board table th {
	    background-color: gray;
    	color: white;
    	text-align: center;
	}
	#pagination  {
		text-align: center;	
		padding: 20px;
	}
	#pagination a {
	    color: black;
	    padding: 8px 16px;
	    text-decoration: none;
	    transition: background-color .3s;
	}
	
	#pagination a.active {
	    background-color: darkgray;
	    color: white;
	    border-radius: 32px;
	}
	
	#pagination a:hover:not(.active) {background-color: #ddd;}
	#btn_write{
		width: 70px;
	    height: 32px;
	    border: none;
	    float: right;
	    background-color: black;
	    text-align: center;
  		line-height: 30px;
  		margin: 5px 10px;
  		border-radius: 10px;
	}
	#btn_write a{
		color: white;
	}#btn_write> a:hover{
		color: black;
	}
	#btn_write:hover{background-color: gray;}
	.new_time{
		background-color: #FFA7A7;
	    color: white;
	    font-size: 10px;
	    font-weight: 600;
  	 	border: 1px solid #FF5E00;
  	 	border-radius: 5px;
	}
	.clr{clear:both;}
	#search_line{
		display:block;
	    height: 50px;
	    float: right;		
	}
	#search_ment{
		
		font-size: 17px;
		font-weight: 400;
		color: gray;
		float: right;
		line-height: 81px;
	}
	.searchpoint{
		display:inline-block;
		font-size: 20px;
		font-weight: 600px;
		color: red;
	}
	
</style>
<script type="text/javascript">
	$(document).ready(function(){
		var code = $("#code").val();
		if(code=="new"){
			$("#orderNew").css("color","#E71D36").css("font-weight", "bold").css("text-decoration","none");
		}else if(code =="good"){
			$("#orderGood").css("color","#E71D36").css("font-weight", "bold").css("text-decoration","none");
		}else if(code =="reply"){
			$("#orderReply").css("color","#E71D36").css("font-weight", "bold").css("text-decoration","none");
		}else if(code =="cnt"){
			$("#ordercnt").css("color","#E71D36").css("font-weight", "bold").css("text-decoration","none");
		}
			
		$("#btn_search_submit").click(function(){
			var flag = $("#search_category").val();
			var keyword = $("#btn_search").val();
			location.href ="boardList.bizpoll?flag="+flag+"&keyword="+keyword;	
			alert(flag + keyword);
			$("#search_ment").css("display","block");
		});
	});
		
</script>
</head>
<body id="board">
	<div id="board_wrap">
		<form id="board_frm">
			<div id="notice_header">
				<div class="notice_title">
					<h2>고객센터</h2>
					<p> | Q&A</p>
				</div>
				<c:if test="${!empty keyword}">
				<div id="search_ment">"<span class="searchpoint">${keyword}</span>
				키워드로 총<span class="searchpoint">${pageMaker.totalCount}</span>건 검색되었습니다."</div>
				</c:if>
			</div>
			<div class="notice_classify">
			 <a href="boardList.bizpoll?flag=${flag}&keyword=${keyword}&key=new" id="orderNew" style="text-decoration: none; color:gray; font-weight: 400px;">최신순</a> |
			 <a href="boardList.bizpoll?flag=${flag}&keyword=${keyword}&key=cnt" id="ordercnt" style="text-decoration: none; color:gray; font-weight: 400px;">조회순</a> |
			 <a href="boardList.bizpoll?flag=${flag}&keyword=${keyword}&key=good" id="orderGood" style="text-decoration: none; color:gray; font-weight: 400px;">좋아요순</a> |
			 <a href="boardList.bizpoll?flag=${flag}&keyword=${keyword}&key=reply" id="orderReply" style="text-decoration: none; color:gray; font-weight: 400px;">댓글순</a> |
				<select id="classify_category"  style="border-radius: 10px; outline: none;">
					<option selected="selected">카테고리</option>
					<option>배송</option>
					<option>교환/환불</option>
					<option>기술</option>	
					<option>상품문의</option>	
				</select>
				<c:choose>
					<c:when test="${empty sessionScope.loginUser}">
						<div id="btn_write">
							<a href="login.bizpoll" id="write_btn">글쓰기</a>		
						</div>
					</c:when>
					<c:otherwise>
						<div id="btn_write">
							<a href="boardinsert.bizpoll" id="write_btn">글쓰기</a>		
						</div>
					</c:otherwise>
				</c:choose>
			</div>
			<div id="notice_container">
				<table>
				  <thead>
					  <tr>
					    <th>번호</th>
					    <th>카테고리</th> 
					    <th>제목</th>
					    <th>작성자</th>
					    <th>조회</th>
					    <th>좋아요</th>
					    <th>날짜(yy/mm/dd)</th>
					  </tr>
				  </thead>
				  <tbody>
				  <c:forEach items ="${boardList}" var ="bDto">
				  	<fmt:formatDate value="${today}" pattern="yy-MM-dd" var="today2"/>
					<fmt:formatDate value="${bDto.regdate}" pattern="yy-MM-dd" var="regdate2"/>
					  <tr>
					    <td>${bDto.bno}</td>
					    <td>상품문의</td>
					    <td><a href="boardViewcnt.bizpoll?bno=${bDto.bno}">${bDto.title}</a>
					    	<c:if test="${today2 == regdate2}">
					    		<span class="new_time">New</span>
					    	</c:if>					    	
					    	<c:if test="${bDto.filesize >0}"><i class="fa fa-paperclip"></i></c:if>
					    	<c:if test="${bDto.replycnt >0}">
					    		[${bDto.replycnt}]
					    	</c:if>
					    		
					    </td>					    	
					    <td>${bDto.writer}</td>
					    <td>${bDto.viewcnt}</td>
					    <td>${bDto.goodcnt}</td>
					    <td>
					    <c:choose>
					    	<c:when test="${today2 == regdate2}">
					    		<fmt:formatDate pattern="HH:mm:ss" value="${bDto.regdate}"/>
					    	</c:when>
					    	<c:otherwise>
					    		<fmt:formatDate pattern="yy-MM-dd" value="${bDto.regdate}"/>
					    	</c:otherwise>
					    </c:choose>
					    </td>
					  </tr>
					</c:forEach>  
				  </tbody>
				</table>
			</div>
			<div id="pagination"> <!--pageMakerㅇDTO-->
				<c:if test="${pageMaker.prev}">
					<a href="boardList.bizpoll?page=${pageMaker.startPage-1}">&laquo;</a>
				</c:if>
				<c:if test="${pageMaker.prev}">
					<a href="boardList.bizpoll?page=${pageMaker.firstPage}">${pageMaker.firstPage}</a>
					<a>...</a>
				</c:if>
				
				<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
					<a href="boardList.bizpoll?page=${idx}&flag=${flag}&keyword=${keyword}&key=${code}" <c:out value="${pageMaker.criDto.page == idx? 'class=active':''}"/>>${idx}</a>
				</c:forEach>
				
				<c:if test="${pageMaker.next}">
					<a>...</a>
					<a href="boardList.bizpoll?page=${pageMaker.finalPage}">${pageMaker.finalPage}</a>
				</c:if>
				
				<c:if test="${pageMaker.next}">
					<a href="boardList.bizpoll?page=${pageMaker.endPage +1}">&raquo;</a>
			    </c:if>
			</div>
			<div id="search_line">
				<select id="search_category">
					<option selected="selected" value="3">조건선택</option>
					<option value="1">제목</option>
					<option value="2">내용</option>
					<option value="3">제목+내용</option>	
					<option value="4">작성자</option>
				</select>
				<div class="classify_search">
					<input type="text" id="btn_search">
					<a href="#" id="btn_search_submit"><i class="fa fa-search"></i></a>
				</div>
			</div>
			
			<div class="clr"></div>
		</form>
	</div>
	<input type="hidden" id="code" value="${code}">
</body>
</html>
<%@ include file = "../include/footer.jsp" %> 