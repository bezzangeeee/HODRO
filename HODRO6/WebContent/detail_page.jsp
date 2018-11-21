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
	#con_wrap{
		background-color: white;
		padding-top: 103px;
	}
	.index_section{
	    position: relative;
    	width: 100%;
    	min-width: 1200px;
    	padding: 20px 0;
    	box-sizing: border-box;
    
	}
	.section_con{
	    margin-left: auto;
    	margin-right: auto;
    	position: relative;
	    max-width: 1200px;
	    min-width: 1200px;
	}
	.index_sec_ul{
		display: flex;
		justify-content: flex-start;
	    text-transform: capitalize;
	    font-size: 12px;
	}
	.index_li>a{
	   color: #707473;
	}
	.index_li:before{
		content: "/\A0";
    	margin: 0 5px;
    	color: #ccc;
	}
	.index_li:last-child{
		cursor: default;
    	pointer-events: none;
    	color: #979797;
	}
	#product_main{
		display: block;
	}
	#product_order{
		margin-bottom: 80px;
		margin-left: auto;
		margin-right: auto;
		padding-bottom: 40px;	
		width: 1200px;
	}
	#product_container{
		display: flex;
		justify-content: space-between;
	}
	/* 스펙, 주문  */
	#product_spec{
		width: 494px;
	}
	#product_name{
		line-height: 1.2;
	    color: #333;
	    font-size: 30px;
	    font-weight: 400;
	}
	#product_price{
		line-height: 1;
    	color: #333;
    	font-size: 26px;
    	margin-top: 20px;
    }
    #delivery_free{
    	display: flex;
    	margin-top: 20px;
    	margin-right: 10px;
   		font-size: 14px;
   		padding-bottom: 30px;
	    border-bottom: 1px solid #eee;
	    margin-bottom: 20px;
    }
    #deliveryf_span{
    	padding-right: 2px;
    	color: #979797;
    }
    #free{
    	margin-left: 5px;
    	color: #333;
    }
    #spec_img{
    	padding-bottom : 20px;
    	border-bottom: 1px solid #eee;
    }
    #product_quantity{
    	margin-top: 20px;
    	margin-bottom: 38px;
    	padding-bottom : 30px;
    	border-bottom: 1px solid #eee;
    }
    .quantity_area{
    	font-size: 30px;
    	font-weight:500px;
    	text-align: left;
    	padding-bottom: 20px;    
    }
    #quantity{
    	height: 27px;
    	width: 255px;
    	outline: none;
    	margin-left: 20px;
    }
    #btn_buy{
    	border: none;
	    height: 56px;
	    width: 146px;
	    background-color: #1897f2;
	    color: white;
	    outline: none;
	    border-radius: 3px;
	    font-size: 17px;
	    cursor: pointer;
    }
    #product_quantity button{
  		border: none;
	    height: 30px;
	    width: 30px;
	    background-color: #aaaaaa;
	    margin-left: 5px;
	    outline: none;
    }
</style>
</head>
<body>

	<div id="con_wrap">
		<section class="index_section">
			<div class="section_con">
				<ul class="index_sec_ul">
					<li class="index_li"><a href="#">HODRO</a></li>
					<li class="index_li">
						<a href="#">매빅 시리즈</a></li>
					<li class="index_li">
						<a href="#">매빅2시리즈</a></li>
					<li class="index_li"><a href="#">
						매빅 2</a></li>
				</ul>
			</div>
		</section>
	</div>
	
	<article id="product_main">
		<section id="product_order">
			<div id="product_container">
				<div id="product_photo">
					<div id="product_photodetail"></div>
				</div>
				<div id="product_spec">
					<div id="product_name">매빅2 pro</div>
					<div id="product_price">￦1,890,000</div>
					<div id="delivery_free"><span id="deliveryf_span">배송비:</span><span id="free">무료</span></div>
					<div id="spec_img"><img alt="" src="img/specimg.PNG"></div>
					<div id="product_quantity">
						<span class="quantity_area">수량</span>
						<input type="text" id="quantity" name="quantity" value="1">
						<button id="plus" value="+">+</button>
						<button id="minus" value="-">-</button>
					</div>
					<button type="button" id="btn_buy">지금구매하기</button>
				
				</div>
			</div>
		</section>			
	</article>
</body>
</html>
<%@ include file = "include/footer.jsp" %> 