<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "include/header.jsp" %>  
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
		height: 60px;
   		padding-top: 12px;
		line-height: 38px;
		padding-bottom: 10px;
	}
	#classify_category{
		padding-left: 5px;
	}
	.classify_search{
		float: right;
		border: none;
		border-bottom: 2px solid gray;
		
	}
	#btn_search{
		width: 230px;
		height:36px;
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
	table {
   	 width:100%;
	}
	table, th, td {
	    border: 1px solid black;
	    border-collapse: collapse;
	}
	th, td {
	    padding: 13px;
   		text-align: center;
	}
	table tr:nth-child(even) {
    	background-color: #eee;
	}
	table tr:nth-child(odd) {
	   background-color: #fff;
	}
	table th {
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
	    background-color: dodgerblue;
	    color: white;
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
	}
	#btn_write a{
		color: white;
	}
</style>
</head>
<body>
	<div id="board_wrap">
		<form id="board_frm">
			<div id="notice_header">
				<div class="notice_title">
					<h2>고객센터</h2>
					<p> | Q&A</p>
				</div>
			</div>
			<div class="notice_classify">
				<form id="classify_frm">
				  <input type="checkbox" name="newest" value="newest">최신순 |
				  <input type="checkbox" name="hits" value="hits">조회순 | 
				  <input type="checkbox" name="like" value="like">좋아요순 |
				</form>
				<select id="classify_category">
					<option selected="selected">카테고리</option>
					<option>배송</option>
					<option>교환/환불</option>
					<option>기술</option>		
				</select>
				<div class="classify_search">
					<input type="text" id="btn_search">
					<button type="submit" id="btn_search_submit"><i class="fa fa-search"></i></button>
				</div>
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
					  <tr>
					    <td>3</td>
					    <td>배송</td>
					    <td>배송문의[3]</td>
					    <td>보노보노</td>
					    <td>3</td>
					    <td>2</td>
					    <td>18/11/05</td>
					  </tr>
					  <tr>
					    <td>2</td>
					    <td>기술</td>
					    <td>매빅2조정거리[6]
					    	<i class="fa fa-paperclip"></i>
					    </td>					    	
					    <td>라이언</td>
					    <td>5</td>
					    <td>4</td>
					    <td>18/11/04</td>
					  </tr>
					  <tr>
					    <td>1</td>
					    <td>교환/환불</td>
					    <td>주문취소[4]</td>
					    <td>콘</td>
					    <td>2</td>
					    <td>0</td>
					    <td>18/11/03</td>
					  </tr>
				  </tbody>
				</table>
			</div>
			<div id="pagination">
				<a href="#">&laquo;</a>
			    <a href="#">1</a>
			    <a href="#">2</a>
			    <a href="#">3</a>
			    <a href="#">4</a>
			    <a href="#">5</a>
			    <a href="#">6</a>
			    <a href="#">&raquo;</a>
			</div>
			<div id="btn_write">
				<a href="#" id="write_btn">글쓰기</a>		
			</div>
		</form>
	</div>
</body>
</html>
<%@ include file = "include/footer.jsp" %> 