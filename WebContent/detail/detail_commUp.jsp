<%@page import="com.mytf.post.model.postVO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>펀딩고 :: FUNDINGO</title>
<link href="https://fonts.googleapis.com/css?family=Roboto:300,300i,400,400i,500,500i,700,700i" rel="stylesheet">
<script src="<%=request.getContextPath() %>/js/jquery-3.5.1.min.js"></script>
<!-- <script src="assets/js/jquery-2.2.4.min.js"></script> -->
<script src="<%=request.getContextPath() %>/js/vendor/popper.min.js"></script>
<script src="<%=request.getContextPath() %>/js/vendor/bootstrap.min.js"></script>
<script src="<%=request.getContextPath() %>/js/vendor/owl.carousel.min.js"></script>
<script src="<%=request.getContextPath() %>/js/vendor/isotope.pkgd.min.js"></script>
<script src="<%=request.getContextPath() %>/js/vendor/jquery.barfiller.js"></script>
<script src="<%=request.getContextPath() %>/js/vendor/loopcounter.js"></script>
<script src="<%=request.getContextPath() %>/js/vendor/slicknav.min.js"></script>
<script src="<%=request.getContextPath() %>/js/active.js"></script>

<link rel="stylesheet" href="<%=request.getContextPath() %>/css/owl.carousel.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/barfiller.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/animate.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/font-awesome.min.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/bootstrap.min.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/main.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/top.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/css_jayeon.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/main_footer.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/discover.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/myPageOption.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/memberRegister.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/login.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/feeAndFundingPolicy.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/detailPage_css.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/Detail.css">
<link rel="stylesheet" href="<%=request.getContextPath() %>/css/detail_chooseOp.css">

<!-- Spoca Han Sans 폰트 -->
<!--  <link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSans-kr.css' rel='stylesheet' type='text/css'>
<link href='//spoqa.github.io/spoqa-han-sans/css/SpoqaHanSans-jp.css' rel='stylesheet' type='text/css'> 
-->

<link rel="stylesheet" type="text/css" href="https://cdn.jsdelivr.net/gh/moonspam/NanumSquare@1.0/nanumsquare.css"> 

<script type="text/javascript">
	$(function(){
		$('.search-wrapper').hide();
		$('.search-icon').click(function(){
			if($('.search-wrapper').css("display")=="none"){
				$('.top_container').hide();
				$('.search-wrapper').show();
			}	
		});
		$('.close-button').click(function(){
			$('.search-wrapper').hide();
			$('.top_container').show();
		});
		
		//여기부터
        var jbOffset = $( '.jbMenu' ).offset();
        $( window ).scroll( function() {
          if ( $( document ).scrollTop() > jbOffset.top ) {
            $( '.jbMenu' ).addClass( 'jbFixed' );
          }
          else {
            $( '.jbMenu' ).removeClass( 'jbFixed' );
          }
        });
        
        $('ul.projectNave li').click(function() {
			var activeTab = $(this).attr('data-tab');
			$('ul.projectNave li').removeClass('current');
			$('.tabcontent').removeClass('current');
			$(this).addClass('current');
			$('#' + activeTab).addClass('current');
		})
		//
		
	});
	
	
	<!-- iframe부분 제이쿼리!!!! -->	
	function calcHeight(){

	 //find the height of the internal page



	 var the_height=

	 document.getElementById('#asideIframe').contentWindow.

	 document.body.scrollHeight;



	 //change the height of the iframe

	 document.getElementById('#asideIframe').height=

	 the_height;



	 //document.getElementById('the_iframe').scrolling = "no";

	 document.getElementById('#asideIframe').style.overflow = "hidden";

	}

	//

</script>
</head>
<body>
	<header class="header-wrap">
		<div class="search-wrapper">
			<div class="container search-header">
				<div class="search-icon">
					<img src="<c:url value='/img/search.png'/>">
				</div>
				<div class="search-input">
					<form action="<c:url value='/search.do'/>" name="keyword" class="search-input-detail" method="post">
						<input type="text" class="search-con" name="keyword"
							placeholder="검색어를 입력해주세요." value="${param.keyword}">
					    <input type="submit" class="search-ok" value="검색">
					</form>
				</div>
				<div class="close-button">
					<div class="close-button-wrapper">
						<div class="close-button">
							<a href="#"><img src="<c:url value='/img/close.png'/>" alt=""></a>
						</div>
					</div>
				</div>
			</div>
		</div>
	
		<div class="container top_container" style="position: unset;">
			<div class="row">
				<div class="nav-column left-nav">
					<nav id="menu" class="d-lg-block" style="float:left; padding-left:15px;">
						<ul>
							<li class="has-child"><a class="menu-style">프로젝트 둘러보기</a>
								<ul class="sub-menu">
									<li><a href="<c:url value='/discover.do?type=all'/>">모든 프로젝트</a></li>
									<li><a href="<c:url value='/discover.do?type=popular'/>">인기 프로젝트</a></li>
									<li><a href="<c:url value='/discover.do?type=success'/>">성공 임박 프로젝트</a></li>
									<li><a href="<c:url value='/discover.do?type=new'/>">신규추천 프로젝트</a></li>
									<li style="margin-bottom:10px;"><a href="<c:url value='/category.do'/>">카테고리별 프로젝트</a></li>
								</ul>
							</li>
							<li><a href='<c:url value='/projectManager/projectUpload_before.do'></c:url>' class="menu-style">프로젝트 올리기</a></li>
						</ul>
					</nav>
				</div>
				
				<div class="logo-column">
					<a href="<c:url value='/mainArticle.do'/>" class="f_logo"> 
						<img src="<c:url value='/img/topLogo.png'/>" alt="로고 이미지">
					</a>
				</div>
				
				<div class="nav-column right-nav">
					<nav id="menu" class="d-lg-block right-nav-detail">
						<span class="search-icon fa fa-search"></span>
				<!-- 자연	로그인처리 -->	
						
						<%-- <c:if test="${t_isLogin}"> --%>
						<c:if test="${empty email}">
							<a href="<c:url value='/login/login.do'/>" class="login">
								<span>로그인 / 회원가입</span>
								<img alt="유저 이미지" src="<c:url value='/img/user-account.png'/>">
							</a>
						</c:if>
						<%-- <c:if test="${!t_isLogin}"> --%>				
						<c:if test="${!empty email}">
							<a href="<c:url value='/GoMember/MypageOption.do'/>" class="login">
								<span>${name} 님</span>
								<c:if test="${empty fileName}">
									<img alt="유저 이미지" src="<c:url value='/img/user-account.png'/>">
								</c:if>
								<c:if test="${!empty fileName}">
	<!--된건지 확인해야함 -->			<img alt="유저 이미지" src="<c:url value='/GoMember_upload/${fileName}'/>">
								</c:if>								
							</a>							
						</c:if>
				<!-- 자연	 -->
					</nav>
				</div>
			</div>
		</div>
	</header>
	<!-- 윗부분 -->
<!-- top 여기서 끝!!!! -->


<!--지원 상세 부분 시작!!!  (프로젝트이미지있고) -->
<div class="header" style="margin:3% 0;">
	<div class="container">
		<div class="detailPageTop">
				<div><a href=""><img src="../img/categ_calender.PNG" alt="문구.캘린더" class="categ_cal"></a></div>
				<div><h2>당신에게 딱 맞는 MBTI 사고성향별 다이어리</h2></div>
				<span><a href=""><img src="../img/authorLogo.png" alt="창작자 로고" class="author_logo"></a></span>
				<span><a href=""><img src="../img/authorName.png" alt="창작자 " class="author_name"></a></span>	
		</div>
	
	
	  	<div class="projectMainDetail">
	  		<div><img src="../img/detailPageprojImage.jpeg" id="projImage" alt="프로젝트 이미지" class="projDetailImage">
	  			  <div class="projectMainDetail2">
	  				<div class="projectMainDetail2_1">
	  				
	  					<div>모인금액</div>
	  					<span><span id="word">37,548,498</span> 원 <b>485%</b></span><br>
	  					<div>남은시간</div>
	  					<span><span id="word">3</span> 일</span>
	  					<div>후원자</div>
	  					<span><span id="word">1098</span> 명</span>
	  			
	  				</div>
	  		
	  			<div id="div_box">
	  				<div><p><b>펀딩 진행중</b><br>
		  				목표 금액인 7,000,000원이 모여야만 결제됩니다.
							결제는 2020년 12월 24일에 다함께 진행됩니다.
							후원이 고민되신다면 눌러보세요.</p>
	  				</div>
	  			</div>
	  			<div>
					<span style= "float:left;">
								<button type="button" id="btn_projectPush" style="width:265px;"
							onclick="alert('이 프로젝트를 밀어주시겠습니까?')" class="btnPush"><b>프로젝트 밀어주기</b></button></span>
						<!-- <button type="button" id="images2"
							onclick="alert('이 프로젝트는 Like가 불가능합니다.')" class="btnPush"><img src="../img/likeImg.png" width="32px" height="32px" alt="좋아요" style="margin-left:10px; margin-top: 7.5px"></button>
						<button type="button" id="images3"
							onclick="alert('이 프로젝트는 공유를 지원하지 않습니다.')" class="btnPush"><img src="../img/shareImg.png" width="31px" height="31px" style="margin-left: 8px; margin-top: 7.5px;" alt="공유" class=""></button> -->
	  			</div>
	  		</div>
	  		</div>
	  		
	  	</div>
	  </div>
</div><!-- 상세 중간부분 (프로젝트이미지있고) -->

<!-- NAV!!!!!!!!! -->
<div class="navSection">
    <div class="jbMenu">
	    <hr>
			<ul class="projectNave">
				<li class="current" data-tab="tab1"><a href="#" style="color:gray;">스토리</a></li>
				<li data-tab="tab2"><a href="<%=request.getContextPath() %>/detail/detail_comm.do" style="color:gray;">커뮤니티</a></li>
				<li data-tab="tab3"><a href="<%=request.getContextPath() %>/detail/detail_fund.do" style="color:gray;">펀딩 안내</a></li>
			</ul>
	    <hr>
    </div>
</div>


<!-- 커뮤니티 부분 시작!!!!!!! -->


		<div id="tab2" class="tabcontent current" style="padding-bottom: 20px;">

			<div class="writerFlag" id="#move2">
				<div>
					<img class="storyWriterImage" src="../img/storydivWriterImg.png"
						alt="창작자/후원자 사진" style="width: 35px;">
				</div>
				<div class="storyDivFlag">
					<p>
						<b>후원자만 글을 쓸 수 있어요</b>
					</p>
				</div>
			</div>


<div class="subcontainer">


	<ul class="commTab">
		<li class="tab2-link current" data-tab="tab_All"><a href="<%=request.getContextPath() %>/detail/detail_comm.do" style="color:gray;">모든게시글</a></li>
		<li class="tab2-link" data-tab="tab_Update"><a href="#" style="color:gray;">창작자 업데이트</a></li>
	</ul>
	
	<div id="tab_Update" class="tab-content">
	<div class="communityContainer">

						<!-- 반복문 돌려서 -->
<%-- 						 <% for int i=0; i<스토리게시글size나 length만큼 돌렸을때; i++ %>  <!-- 창작자 로고/이름 끌어와서 보여주기 -->
 --%>					
 
 							<div style="padding-left: 15px; padding-top: -10px; margin-top:-10px;">
							<div>
								<img src="../img/writerUpdate.PNG" style="width: 80px;">
							</div>
							<div>
								<img src="../img/authorLogo.png"
									style="width: 37px; margin-left: 0px;"> <a href=""><img
									src="../img/authorName.png"
									style="width: 85px; margin-bottom: 2px;"></a> <img
									src="../img/writeMark.PNG"
									style="width: 41px; margin-bottom: 9px; margin-left: -16px;">
							</div>
						</div>


						<!--  게시글 "내용"끌어와서 보여주기 -->
<%-- 						<%=스토리게시글no%> 로 가져오기?
 --%>						<div class="community_contents">
<%-- 						<%=스토리게시글no%> 로 가져오기? #communityContents에 넣기?			
 --%>				<div class="comm_moreContents">
								
								<div>
									<p>창작자 업데이트 창작자 업데이트 창작자 업데이트 창작자 업데이트 창작자 업데이트 창작자 업데이트 창작자
									업데이트 창작자 업데이트 창작자 업데이트 창작자 업데이트 창작자 업데이트 창작자 업데이트 창작자 업데이트 창작자
									업데이트 창작자 업데이트 창작자 업데이트ㅍ창작자 업데이트 창작자 업데이트창작자 업데이트ㅍ 창작자 창작자 업데이트
									창작자 업데이트 창작자 업데이트 창작자 업데이트 창작자 업데이트 창작자 업데이트 창작자 업데이트 창작자 업데이트
									창작자 업데이트 창작자 업데이트 창작자 업데이트 창작자 업데이트 창작자 업데이트 창작자 업데이트 창작자 업데이트
									</p>
								</div>

							</div>

						</div>


						<!--  댓글 끌어와서 보여주기 -->
						<div id="community_comments">
							<hr>
							<div id="communityCommentImg">
								<img src="../img/communityComment.PNG"
									style="width: 35px; margin-left: -13px; margin-top: 8px; margin-bottom: -14px;">
							</div>

							<!-- 해당 게시글에 대한 코멘트 불러오기 -->
							<div class="moreComments"></div>

						</div>
					</div>
</div>
</div>

	