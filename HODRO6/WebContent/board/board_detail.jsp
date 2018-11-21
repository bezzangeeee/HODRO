<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file = "../include/header.jsp" %>  
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style type="text/css">
@import url('https://fonts.googleapis.com/css?family=Nanum+Gothic');
	 *{
		font-family: 'Nanum Gothic', sans-serif;
		box-sizing:inherit; 
	}
	#board_detail body,ul{
		margin:0px;
		padding:0px;
	}
	#board_detail ul{
		list-style-type:none;
	}
	#board_detail a{
		text-decoration:none;
	}
	#board_detail #con_wrap{
		background-color: white;
		padding-top: 103px;
	}
	#board_detail .index_section{
	    position: relative;
    	width: 100%;
    	min-width: 1200px;
    	padding: 20px 0;
    	box-sizing: border-box;
	}
	#board_detail .section_con{
	    margin-left: auto;
    	margin-right: auto;
    	position: relative;
	    max-width: 1200px;
	    min-width: 1200px;
	}
	#board_detail .index_sec_ul{
		display: flex;
		justify-content: flex-start;
	    text-transform: capitalize;
	    font-size: 15px;
	}
	#board_detail .index_li>a{
	   color: #707473;
	}
	#board_detail .index_li:before{
		content: "/\A0";
    	margin: 0 5px;
    	color: #ccc;
	}
	#board_detail .index_li:last-child{
		cursor: default;
    	pointer-events: none;
    	color: #979797;
	}
	#b_detail_fst{
		display: block;
		border-bottom: 2px solid gray;
		margin: 0px auto;
		width: 1160px;
		
	}
	#fst_num{
		font-size: 20px;
	    display: inline-block;
	    padding: 10px;
	    margin: 0 5px;
	}
	#fst_title{
		font-size: 20px;
   	 	display: inline-block;	
	}
	#b_detail_sec{
		display: block;
		border-bottom: 1px solid gray;
		border-top: 1px solid gray;
	    margin: 0px auto;
   		margin-top: 22px;
		width: 1160px;	
		height: 50px;
    	line-height: 32px;
    	font-size: 15px;
	}
	#sec_writer{
		display:inline-block;
	    padding: 10px;
    	margin-right: 5px;
	}
	#sec_date{
		display:inline-block;
		float: right;
		padding: 10px;
	}
	#sec_good{display:inline-block;}
	#sec_hits{display:inline-block;}
	#sec_like{display:inline-block;}
	#sec_attach{display:inline-block;}
	#b_detail_thr{
		display: block;
		width:1160px;
		margin: 0 auto;
		height: 300px;
   	 	border-bottom: 1px solid gray;;	
	}
	#thr_content{
		font-size: 13px;
		padding: 20px 0 0 10px;
	}
	#b_detail_four{
		display: block;
		height: 60px;
	}
	#b_detail_four{
		display: block;
		width:1160px;
		margin: 0 auto;
		height: 45px;
		margin-top: 15px;
	}
	.btn_left{
		float: left;
		display: inline-block;
		width: 200px;
    	height: 34px;
		
	}
	.btn_right{
		float: right;
		display: inline-block;
		width: 200px
    	height: 20px;
	}
	#btn_list{
		display: inline-block;
	    background-color: #514d5491;
	    border: none;
	    height: 30px;
	    width: 45px;
	    margin-right: 4px;
	    cursor: pointer;
	    border-radius: 10px;
	    outline: none;
	}
	#btn_list>a{color: black;}
	#btn_answer{
		display: inline-block;
	    background-color: #7ab9ef;
	    border: none;
	    height: 30px;
	    width: 45px;
	    margin-right: 10px;
	    cursor: pointer;
	    border-radius: 10px;
	    outline: none;
	}
	#btn_answer>a{color: black;}
	#btn_update{
		display: inline-block;
	    background-color: khaki;
	    border: none;
	    height: 30px;
	    width: 45px;
	    cursor: pointer;
	    border-radius: 10px;
	    outline: none;
	}
	#btn_update>a{color: black;}
	#btn_delete{
		display: inline-block;
	    background-color: #e86a4d;
	    border: none;
	    height: 30px;
	    width: 45px;
	    cursor: pointer;
	    border-radius: 10px;
	    margin-left: 4px;
	    outline: none;
	}#btn_delete>a{color: black;}
	.clr{clear:both;}
	#reply_wrap{
		display: block;
		width: 1160px;
		margin: 0 auto;
		height: 100%;
		margin-top: 15px;
		border: 1px solid gray;
		border-radius: 10px;
		box-shadow: 0 0 4px rgba(0,0,0,0.2);
	}
	#reply_list_header{
		padding: 14px;
	    font-size: 17px;
	    font-weight: 600;
	    color: white;
	    background-color: #312c2cd9;
		
	}
	.reply_list_container{
		display: block;
	    width: 1160px;
	    margin: 0 auto;
	    margin-top: 30px;
	    height: 100%;
	    border-radius: 5px;
	    border: 1px solid gray;
	    background-color: #b3acac0f;
	    box-shadow: 0 0 4px rgba(0,0,0,0.2);
	}
	.rp_container_header{
		display: block;
		height: 50px;
		margin: 2px 20px 0px 22px;
	}
	.rpcnt_writer{
		font-size: 18px;
	    display: inline-block;
	    padding: 10px;
	}
	.rpcnt_del{
		display: inline-block;
	    font-size: 17px;
	    float: right;
	    line-height: 42px;
   		padding-right: 11px;
	}
	.rpcnt_del>a>span{color:gray;}
	.rpcnt_del>a{color:red;}
	.rpcnt_insert{
		display: inline-block;
	    font-size: 17px;
	    float: right;
	    line-height: 42px;
   		padding-right: 11px;
	}
	.rpcnt_insert>a{color:#2699ea;}
	.rpcnt_date{
		display: inline-block;
		font-size: 13px;
		padding: 5px;
	}
	.reply_content{
		display: inline-block;
		font-size: 17px;
		padding: 5px 0 0 9px;
		border: 1px solid gray;
		border-radius: 5px;
		height: 30px;
     	margin: 25px 20px 10px 30px;
   		width: 80%;
    	outline: none;
	}
	.rp_ment{
		display: block;
		font-size: 15px;
		color: gray;
		text-align: center;
		line-height: 50px;
	}
	.rp_cnt_mnet{
		display:block;
	}
	#btn_insertrply{
		display: inline-block;
		background-color: #3995efd4;
	    border: none;
	    height:30px;
	    width: 110px;
	    border-radius: 10px;
	    float: right;
    	margin: 27px 38px 5px 5px;
	}
	#btn_insertrply>a{
		color: white;
    	font-size: 19px;
	}
	#reply_content_read{
		display: inline-block;
		width: 92%;
	    margin: 0 auto;
	    height: 60px;
	    margin-left: 40px;
	    font-size: 17px;
	    padding: 5px 0 0 10px;
	    border: none;
	    outline: none;
	    margin-bottom: 20px;
	    box-shadow: 0 0 4px rgba(0,0,0,0.2);
	}
	/* modal */
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
	#rwWriter{
    	padding: 20px 0 0 20px;
	    color: #0f54d2e3;
	    font-weight: bold;
	}
	#rpc_error{
		color:red;
		font-size:14px;
		font-weight:bold;
		display:none; 
		padding: 5px;
    	margin: 0 0 12px 20px;
	}
</style>
<script type="text/javascript">
	$(document).ready(function(){
		//문서가 준비되면 댓글 목록을 조회하는 ajax 실행 
		comment_list();
	});
	
	function comment_list(){
		$.ajax({
			type :"post",
			url : "commentlist.bizpoll",
			data: "bno=${boardview.bno}",
			success:function(result){
				$("#commentList").html(result);
			}
			
		});
		
	}
	$(document).on("click","#btn_insertrply",function(){
		var content=$(".reply_content").val();
		alert(content);
		
		if(content==""){
			$(".reply_content").focus();
			$("#rpc_error").css("display","block");
			return false;
		}else{
			var bno=${boardview.bno};
			$("#re_bno").val(bno);
		}
		$.ajax({			
			url : "replyInsert.bizpoll",
			data: $("#frm_reply").serialize(), 
			contentType:'application/x-www-form-urlencoded; charset=UTF-8',
			success:function(){
				comment_list();
				$(".reply_content").val("");
			},
			error : function(){
				alert("system error!");	
			}
		});
	});	
	
	

	$(document).on("click","#btnagr",function(){
		location.href="boardUpdateDeletePlayAction.bizpoll?bno=${boardview.bno}"
	});
	
	$(document).on("click",".btn_detail_delete",function(){
		var rno =$(this).attr("data_num");
		var bno =${boardview.bno};
		
			$.ajax({
				url : "replydelete.bizpoll",
				data: "rno="+ rno +"&bno="+bno,
				success:function(result){
					comment_list();
				},
				error : function(){
					alert("system error!");	
				}
			});
				
	});
		

	
	
</script>
</head>
<body id="board_detail">
	<div id="con_wrap">
		<section class="index_section">
			<div class="section_con">
				<ul class="index_sec_ul">
					<li class="index_li"><a href="#">고객센터</a></li>
					<li class="index_li"><a href="#">자유게시판</a></li>
				</ul>
			</div>
		</section>
	</div>
	<div id="b_detail_fst">
		<div id="fst_num">${boardview.bno}</div>
		<div id="fst_title">| ${boardview.title}</div>
	</div>
	<fmt:formatDate value="${today}" pattern="yy-MM-dd" var="today2"/>
	<fmt:formatDate value="${boardview.regdate}" pattern="yy-MM-dd" var="regdate2"/>
					 
	<div id="b_detail_sec">
		<div id="sec_writer">작성자 | ${boardview.writer}</div>
		<div id="sec_good"><i class="fa fa-heart"></i>  ${boardview.goodcnt} |</div>
		<div id="sec_hits"><i class="fa fa-eye"></i>  ${boardview.viewcnt} |</div>
		<div id="sec_attach"><i class="fa fa-paperclip"></i>
			<a href="download.bizpoll?file=${boardview.filename}">${boardview.filename}
			(<fmt:formatNumber type="number" pattern="0.0" value="${boardview.filesize/1024}"></fmt:formatNumber>kb)</a></div>
		<div id="sec_date">작성일 | 
			<c:choose>
		    	<c:when test="${today2 == regdate2}">
		    		<fmt:formatDate pattern="HH:mm:ss" value="${boardview.regdate}"/>
		    	</c:when>
		    	<c:otherwise>
		    		<fmt:formatDate pattern="yy-MM-dd" value="${boardview.regdate}"/>
		    	</c:otherwise>
		    </c:choose>
		</div>
	</div>
	<div id="b_detail_thr">
		<div id="thr_content">${boardview.content}</div>
	</div>
	<div id="b_detail_four">
		<div id="four_btn_wrap">
			<div class="btn_left">
				<button id="btn_list"><a href="#">목록</a></button>
				<button id="btn_answer"><a href="#">답글</a></button>
			</div>
			<c:if test="${sessionScope.loginUser.id == boardview.writer}">
			<div class="btn_right">
				<a href="boardUpadte.bizpoll?bno=${boardview.bno}"><button type="submit" id="btn_update">수정</button></a>
				<a href="#login_form"><button type="submit" id="btn_delete">삭제</button></a>
			</div>
			</c:if>
		</div>
			<div class="clr"></div>
	</div>
	
	<div id="commentList"></div>
	
	<!--modal  -->
	 <a href="#" class="overlay" id="login_form"></a>
        <div class="popup">
           <div id=modal_header>HODRO</div>
            <div id="modal_con1"><p>정말 <span>삭제</span>하시겠습니까?</div>            
				<div class="modal_btn" id="divbc">
					<span><a href="#" id="btnCs">아니오</a></span>
				</div>
			
            <div class="modal_btn" id="div_agr">
				<a href="#" id="btnagr"><span>네</span></a>				
			</div>			
        </div>

	
</body>
</html>
<%@ include file = "../include/footer.jsp" %> 