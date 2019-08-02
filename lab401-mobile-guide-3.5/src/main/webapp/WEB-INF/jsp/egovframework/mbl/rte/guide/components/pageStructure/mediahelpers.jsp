<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Class Name : mediahelpers.jsp
  Description :  pageStructure
  Modification Information

      수정일         수정자           수정내용
    -------------    --------    ---------------------
     2011.07.14    황민희          최초 생성
 
    author   : 모바일 실행환경 개발팀 황민희
    since    : 2011.07.06
--%>
<!DOCTYPE html> 
<html lang="kr"> 
    <head>
        <title>UX Component - pageStructure</title> 
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />    
        
        <!-- eGovFrame Common import -->        
        <link rel="stylesheet" href="<c:url value="/css/egovframework/mbl/cmm/jquery.mobile-1.4.5.css" />" />
        <link rel="stylesheet" href="<c:url value="/css/egovframework/mbl/cmm/EgovMobile-1.4.5.css" />" />
        <script type="text/javascript" src="<c:url value="/js/egovframework/mbl/cmm/jquery-1.11.2.min.js"/>"></script>
		 
        <script type="text/javascript" src="<c:url value="/js/egovframework/mbl/cmm/jquery.mobile-1.4.5.min.js" />"></script>
        <script type="text/javascript" src="<c:url value="/js/egovframework/mbl/cmm/EgovMobile-1.4.5.js" />"></script>
    
        <!-- guide import -->
        <link rel="stylesheet" href="<c:url value="/css/egovframework/mbl/rte/guide/guide.css" />">
        <script type="text/javascript"  src="<c:url value="/js/egovframework/mbl/rte/guide/guide.js"/>"></script>
	</head>
	
    <body>
    
        <!-- page start -->
		<div data-role="page" class="type-index">

			<!-- header start -->
            <div data-role="header" data-position="inline" data-theme="z"  class="egovBarHeader">
                <a href="<c:url value="/guide/guide.do"/>" data-icon="home" class="ui-btn-left" data-ajax="false">Home</a>
                <a href="<c:url value="/guide/guide.do"/>" data-icon="back" class="ui-btn-right" data-ajax="false">Back</a>
                <h1><img src="<c:url value="/images/egovframework/mbl/rte/guide/h1_logo.png"/>" alt="egovframework" /></h1>
            </div>  
			<!-- header end -->
			
			
			<!-- content start -->		
			<div data-role="content" data-theme="d">
			
                <!-- content-primary start -->
				<div class="content-primary">
					<div class="egov-tit">
						<h1>Responsible Layout</h1>
						<p>모바일 기기의 다양한 스크린 크기에 맞춰서 출력하도록 설정 하는 것이며 다양한 크기의 웹사이트 지원을 위해
						        유동적인 CSS 적용 및 media query를 사용한다.</p>
					</div>
					
					<div class="egov-deth1">
						<h2>방향에 따른 클래스</h2>
						<p>디바이스의 가로/세로 방향에 따른 CSS를 활용 할 수 있다.</p>
						<div class="egov-deth2">
					 		<ul class="link">
								<li>portrait {</li>
								<li class="egov-txtIn1">/* 가로방향일 때 CSS */</li>
								<li>}</li>
								<li>.landscape {</li>
								<li class="egov-txtIn1">/* 세로방향일 때 CSS */</li>
								<li>}</li>
							</ul>	
						</div>
					</div>
					
	        		<div class="egov-deth1">
						<h2>크기에 따른 클래스</h2>
						<p>디바이스의 너비에 따라서 설정되는 클래스이다.너비는 320,480,768,1024px 점을 가진다.</p>
						<dl class="egov-deth3">
							<dt>일반 클래스</dt>
							<dd></dd>
						</dl>						
						<div class="egov-deth2">
							<ul class="link">
								<li>.myelement {</li> 
								<li class="egov-txtIn1">/* 일반 클래스 */</li>
								<li>}</li>
					 		</ul>
						</div>
						<dl class="egov-deth3">
							<dt>너비가 480px 이하 일 때 적용되는 클래스</dt>
							<dd></dd>
						</dl>						
						<div class="egov-deth2">
							<ul class="link">
								<li>.min-width-480px.myelement {</li> 
								<li class="egov-txtIn1">/* 너비가 480px이하일 때 적용되는 클래스 */</li>
								<li>}</li>
					 		</ul>
						</div>						
					</div>						
					
	        		<div class="egov-deth1">
						<h2>크기 제어 포인트</h2>
						<p>크기에 따른 클래스 설정시 기존 포인트 외에 새로운 포인트를 추가하고 싶을 경우 사용한다.</p>
						<dl class="egov-deth3">
							<dt>1200px에 Breakpoint 추가</dt>
							<dd></dd>
						</dl>						
						<div class="egov-deth2">
							<ul class="link">
								<li>$.mobile.addResolutionBreakpoints(1200);</li> 
					 		</ul>
						</div>
						<dl class="egov-deth3">
							<dt>2개 이상의 Breakpoint 추가</dt>
							<dd></dd>
						</dl>						
						<div class="egov-deth2">
							<ul class="link">
								<li>$.mobile.addResolutionBreakpoints([1200, 1440]);</li> 
					 		</ul>
						</div>						
					</div>

	        		<div class="egov-deth1">
						<h2>Media Queries</h2>
						<p>CSS의 특정 미디어 쿼리 적용 여부를 테스트하는 기능이다. 지원하면 true, 지원하지 않으면 false가
						   반환된다.</p>
						<dl class="egov-deth3">
							<dt>screen 미디어 형식 테스트</dt>
							<dd></dd>
						</dl>						
						<div class="egov-deth2">
							<ul class="link">
								<li>$.mobile.media("screen");</li> 
					 		</ul>
						</div>
						<dl class="egov-deth3">
							<dt>screen 미디어 형식과 min-width 테스트</dt>
							<dd></dd>
						</dl>						
						<div class="egov-deth2">
							<ul class="link">
								<li>$.mobile.media("screen and (min-width: 480px)");</li> 
					 		</ul>
						</div>
						<dl class="egov-deth3">
							<dt>screen 미디어 형식과 iOS 디스플레이 여부 테스트 </dt>
							<dd></dd>
						</dl>						
						<div class="egov-deth2">
							<ul class="link">
								<li>$.mobile.media("screen and (-webkit-min-device-pixel-ratio: 2)");</li> 
					 		</ul>
						</div>													
					</div>						
				</div>
				<!-- content-primary end -->
				
				<!-- content-secondary start -->
				<div class="content-secondary"> 
					<jsp:include page="../../componentMenu.jsp"></jsp:include>
				</div>			
				<!-- content-secondary end -->
				
			</div>
			<!-- content end -->
			
			<!-- footer start -->
			<div data-role="footer" data-theme="z"  class="egovBar">
				 <h4 class="main">Copyright(c)2012 Ministry of Government Administration and Home Affairs.</h4>
			</div>
			<!-- footer end --> 
			
		</div>
		<!-- page end -->
	
    </body>

</html>