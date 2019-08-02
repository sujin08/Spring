<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Class Name : link.jsp
  Description :  UX link component
  Modification Information

      수정일         수정자           수정내용
    -------------    --------    ---------------------
     2011.07.14    권자영          최초 생성
 
    author   : 모바일 실행환경 개발팀 권자영
    since    : 2011.07.06
--%>
<!DOCTYPE html> 
<html lang="kr"> 
    <head>
        <title>UX Component - Link</title> 
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />    
        
        <!-- eGovFrame Common import -->        
        <link rel="stylesheet" href="<c:url value="/css/egovframework/mbl/cmm/jquery.mobile-1.4.5.css" />" />
        <link rel="stylesheet" href="<c:url value="/css/egovframework/mbl/cmm/EgovMobile-1.4.5.css" />" />
        <script type="text/javascript" src="<c:url value="/js/egovframework/mbl/cmm/jquery-1.11.2.min.js"/>"></script>
		 
        <script type="text/javascript" src="<c:url value="/js/egovframework/mbl/cmm/jquery.mobile-1.4.5.min.js" />"></script>
        <script type="text/javascript" src="<c:url value="/js/egovframework/mbl/cmm/EgovMobile-1.4.5.js" />"></script>
		<script type="text/javascript">
			function error() {
				//show error message
				$( "<div class='ui-loader ui-overlay-shadow ui-body-e ui-corner-all'><h1>"+ "Error Loading Page" +"</h1></div>" )
					.css({ "display": "block", "opacity": 0.96, "top":  $(window).scrollTop() +100 })
					.appendTo( "body" )
					.delay( 800 )
					.fadeOut( 400, function() {
						$( this ).remove();
					});
				}
		</script>		    
        
        <!-- guide import -->
        <link rel="stylesheet" href="<c:url value="/css/egovframework/mbl/rte/guide/guide.css" />">
        <script type="text/javascript"  src="<c:url value="/js/egovframework/mbl/rte/guide/guide.js"/>"></script>
		
		<script type="text/javascript"> 
			$(function(){
				$('#example').hide();
				$('#exampleView').bind('vclick',function(e)
				{
					$('#example').toggle();
				})	
			});
		</script>         
        
	</head>
	
    <body>
    
        <!-- page one start -->
		<div data-role="page" id="One" class="type-index">
		
            <!-- header start -->
            <div data-role="header" data-position="inline" data-theme="z"  class="egovBarHeader">
                <a href="<c:url value="/guide/guide.do"/>" data-icon="home" class="ui-btn-left" data-ajax="false">Home</a>
                <a href="<c:url value="/guide/guide.do"/>" data-icon="back" class="ui-btn-right" data-ajax="false">Back</a>
                <h1 class="main"><img src="<c:url value="/images/egovframework/mbl/rte/guide/h1_logo.png" />" alt="egovframework" /></h1>
            </div>  
            <!-- header end -->
			
			<!-- content start -->		
			<div data-role="content" data-theme="d">
			
                <!-- content-primary start -->
				<div class="content-primary">
					<div class="egov-tit">
			    		<h1>Internal / External Link</h1>
				    	<p>전자정부 모바일 표준프레임워크는 HTML의 모든 표준 링크를 지원하며 기본적으로 Ajax 방식을 이용하여 페이지를 전환한다. </p> 	
			    	</div>
					
					<div class="egov-Dsclaimer">
						<h2>유의사항</h2>
						<p>Ajax로 도메인 내부링크를 연결 후 페이지 내부링크를 호출하면 정상페이지가 아닌 이전 페이지가 출력된다.<br>
						이를 방지 하기 위해 첫 도메인 내부링크는  data-ajax="false" 또는 rel="external"를 선언하여 페이지를 호출한다.</p>
						<div class="btnDsc"><a href="#" data-role="none"><span class="btnViewSample" id="exampleView">예시보기</span></a></div>
						<div id = "example">
							<div class="egov-Example">
								<p>A.jsp</p>
								<ul class="link">
									<li>&lt;a href="B.jsp" data-role="button" <strong>data-ajax="false"</strong>&gt;Go To 2nd Page&lt;/a&gt;</li>
									<li>&lt;a href="B.jsp" data-role="button" <strong>rel="external"</strong>&gt;Go To 2nd Page&lt;/a&gt;</li>
								</ul>
							</div>
							<div class="egov-Example">
								<p>B.jsp</p>
								<ul class="link">
									<li>&lt;--main page start--&gt;</li>
									<li>&lt;div data-role="page" id=main&gt;</li>
									<li class="egov-txtIn1">&lt;div data-role="header" data-theme="b"&gt;</li>
									<li class="egov-txtIn1">...</li>
									<li class="egov-txtIn1">&lt;/div&gt;</li>
									<li class="egov-txtIn1">&lt;div data-role="content"&gt;</li>
									<li class="egov-txtIn2">&lt;h1&gt;This is #One&lt;/h1&gt;</li>
									<li class="egov-txtIn2">&lt;a href="#sub" data-role="button"&gt;Go to the #two&lt;/a&gt;</li>
									<li class="egov-txtIn1">&lt;/div&gt;</li>
									<li class="egov-txtIn1">...</li>
									<li>&lt;/div&gt;</li>
									<li>&lt;--sub page start--&gt;</li>
									<li>&lt;div data-role="page" id="sub"&gt;</li>
									<li class="egov-txtIn1">...</li>
									<li>&lt;/div&gt;</li>
								</ul>
							</div>
						</div>								
					</div>
					
					<div class="egov-deth1">
						<h2>기본코드</h2> 
						<p>HTML의 Anchor 태그를 이용하여 링크 기능을 사용할 수 있다.</p>
						
						<div class="egov-deth2">
							<a href="#Two">페이지 내부 링크</a>
							<ul class="link">
								<li>&lt;a href="#Two"&gt;페이지 내부 링크&lt;/a&gt;</li>
							</ul>
						</div>
						<div class="egov-deth2">
					    	<a href="<c:url value="/guide/guide.do"/>">도메인 내부 링크</a>
							<ul class="link">
					    		<li>&lt;a href="<c:url value="/guide/guide.do"/>"&gt;도메인 내부 링크&lt;/a&gt;</li>
					    	</ul>
					    </div>	
					    <div class="egov-deth2">	
					    	<a href="http://www.egovframe.go.kr">외부 링크</a>
							<ul class="link">
					    		<li>&lt;a href="http://www.egovframe.go.kr"&gt;외부 링크&lt;/a&gt;</li>
					    	</ul>
				    	</div>
						<dl class="egov-deth3">
							<dt>Ajax를 사용하는 링크</dt>
							<dd>Ajax 방식의 링크를 이용하면 다양한 화면전환 효과가 자동으로 적용된다. 
							Ajax 방식의 링크를 사용하면 이동한 페이지 헤더 부분의 Javascript, CSS 효과가 적용되지 않을 수 있기 때문에 Javascript, CSS를 페이지를 불러들이는 Page에 정의해야한다.</dd>
							<dd class="egovBul">페이지 내부링크</dd>
							<dd>data-role 속성 값이 page 인 &lt;div data-role="page"&gt; Tag에 id 속성을 부여하여 페이지를 구분한다.
							href 속성에 '#[페이지 id]' 값을 부여하여 해당 id를 갖는 페이지로의 링크가 가능하다.
							또한 내부링크를 Page를 호출 하는 링크는 <strong>rel="external" </strong>or <strong>data-ajax="false"</strong>를 이용하여 페이지 내부링크 페이지를 호출해야한다.</dd>
						</dl>
						<div class="egov-deth2">
							<a href="#Two" data-role="button">페이지 내부링크</a>
							<ul class="link">
								<li>&lt;a href="#Two" data-role="button"&gt;페이지 내부링크&lt;/a&gt;</li>
							</ul>
						</div>

						<dl class="egov-deth3">
							<dd class="egovBul">도메인 내부링크</dd>
							<dd>동일한 도메인 내의 페이지로 링크를 걸어 이동한다.</dd>
						</dl>
						<div class="egov-deth2">
							<a href="<c:url value="/guide/guide.do"/>" data-role="button">도메인 내부링크</a>
							<ul class="link">
								<li>&lt;a href="<c:url value="/guide/guide.do"/>" data-role="button"&gt;도메인 내부링크&lt;/a&gt;</li>
							</ul>
						</div>
						
						<dl class="egov-deth3">
							<dd class="egovBul">다이얼로그 링크</dd>
							<dd><strong>data-rel="dialog"</strong> 속성을 추가하여 다이얼로그 형태로 링크를 실행한다.</dd>
						</dl>
						<div class="egov-deth2">
							<a href="<c:url value="/guide/guide.do"/>" data-role="button" data-rel="dialog">다이얼로그 링크</a>
							<ul class="link">
								<li>&lt;a href="<c:url value="/guide/guide.do"/>" data-role="button"  data-rel="dialog"&gt;다이얼로그 링크&lt;/a&gt;</li>
							</ul>
						</div>

						<dl class="egov-deth3">
							<dt>Ajax를 사용하지 않는 링크 </dt>
							<dd>Ajax 방식을 사용하지 않는 링크는 페이지 전체를 Refresh 한다. Ajax 방식을 사용하지 않으면 화면효과가 적용되지 않지만
							헤더 부분의 Javascript, CSS 를 적용할 수 있다.</dd>
							
							<dd class="egovBul">외부 링크</dd>
							<dd>외부 도메인의 사이트로 링크를 걸어 이동한다.</dd>
						</dl>
						<div class="egov-deth2">
							<a href="http://www.egovframe.go.kr" data-role="button">외부 링크</a>
							<ul class="link">
								<li>&lt;a href="http://www.egovframe.go.kr" data-role="button"&gt;외부 링크&lt;/a&gt;</li>
							</ul>
						</div>
						
						<dl class="egov-deth3">
							<dd class="egovBul">data-ajax="false" 속성추가</dd>
							<dd><strong>data-ajax="false"</strong> 속성을 추가하여 Ajax 효과 없이 페이지를 이동한다.</dd>
						</dl>
						<div class="egov-deth2">
							<a href="<c:url value="/guide/guide.do"/>" data-ajax="false" data-role="button">data-ajax="false"</a>
							<ul class="link">
								<li>&lt;a href="<c:url value="/guide/guide.do"/>" data-ajax="false" data-role="button"&gt;data-ajax="false"&lt;/a&gt;</li>
							</ul>
						</div>
							
						<dl class="egov-deth3">
							<dd class="egovBul">rel="external" 속성추가</dd>
							<dd><strong>rel="external"</strong> 속성을 추가하면 Ajax 효과 없이 페이지를 이동한다.</dd>
						</dl>
						<div class="egov-deth2">
							<a href="<c:url value="/guide/guide.do"/>" rel="external" data-role="button">rel="external"</a>
							<ul class="link">
								<li>&lt;a href="<c:url value="/guide/guide.do"/>" rel="external" data-role="button"&gt;rel="external"&lt;/a&gt;</li>
							</ul>
						</div>
						
						<dl class="egov-deth3">
							<dd class="egovBul">target 속성추가</dd>
							<dd><strong>target</strong> 속성을 추가하면 Ajax 효과 없이 새로운 브라우저 창으로 이동한다.</dd>
						</dl>
						<div class="egov-deth2">
							<a href="<c:url value="/guide/guide.do"/>" target="home" data-role="button">target</a>
							<ul class="link">
								<li>&lt;a href="<c:url value="/guide/guide.do"/>" target="home" data-role="button"&gt;target"&lt;/a&gt;</li>
							</ul>
						</div>
			    	</div>
					<div class="egov-deth1">
				    	<h2>링크버튼</h2>
				    	<p><strong>data-role="button"</strong> 속성을 추가하여 링크를 버튼 형태로 표시한다.</p>
				    	
				    	<div class="egov-deth2">
					    	<a href="<c:url value="/guide/guide.do"/>" data-role="button">링크 버튼</a>
					    	<ul class="link">
					    		<li>&lt;a href="<c:url value="/guide/guide.do"/>" data-role="button"&gt;링크 버튼&lt;/a&gt;</li>
					    	</ul>
				    	</div>
			    	</div>
			    	
			    	<div class="egov-deth1">
				    	<h2>에러 메시지 표시 </h2>
				    	<p>해당 페이지로 이동이 불가한 경우 자동으로 에러 메시지를 표시한다.</p>
				    	<div class="egov-deth2">
					    	<a href="javascript:error();" data-role="button">에러 메시지</a>
					    	<ul class="link">
					    		<li>&lt;a href="nopage.jsp" data-role="button"&gt;에러 메시지&lt;/a&gt;</li>
					    	</ul>
				    	</div>
			    	</div>
			    	
			    	<div class="egov-deth1">
				    	<h2>메일 연동 링크 </h2>
				    	<p>href 속성 값으로  <strong>mailto:[메일주소]</strong>를 추가하면 링크를 통해 자동으로 메일기능을 실행한다.</p>
				    	<div class="egov-deth2">
				    		<a href="mailto:person@domain.com" data-role="button">메일링크</a>
				    		<ul class="link">
				    			<li>&lt;a href="person@domain.com" data-role="button"&gt;메일링크&lt;/a&gt;</li>
				    		</ul>
				    	</div>
				    	<p>href 속성 값으로  <strong>mailto:[메일주소]</strong>를 추가한후 <strong>cc="[메일주소]"를 통해 참조, bcc="[숨은 참조]", subject="[제목]", body="[내용]"</strong> 을 추가 하면 다양한 형식으로
							메일 연동을 할 수 있다.</p>
				    	<div class="egov-deth2">
				    		<a href="mailto:person@domain.com?cc=person2@domain.com&bcc=person3@domain.com&subject=Hello&body=Happy%20Birthday!" data-role="button">다중메일링크</a>
				    		<ul class="link">
				    			<li>&lt;a href="mailto:person@domain.com?cc=person2@domain.com&amp;bcc=person3@domain.com&amp;subject=Hello&amp;body=Happy%20Birthday!"&gt;다중메일링크&lt;/a&gt;</li>
				    		</ul>
				    	</div>				    	
			    	</div>
			    	
			    	<div class="egov-deth1">
				    	<h2>통화 연동 링크 </h2>
				    	<p>href 속성 값으로 <strong>tel:[전화번호]</strong>를 추가하면 링크를 통해 자동으로 휴대폰의 통화기능을 실행한다.</p>
				    	<div class="egov-deth2">
				    		<a href="tel:00000000000" data-role="button">통화링크</a>
				    		<ul class="link">
				    			<li>&lt;a href="tel:00000000000" data-role="button"&gt;Phone Links&lt;/a&gt;</li>
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
		<!-- page one end -->
         
		<!-- page two start -->
		<div data-role="page" id="Two" class="type-index" data-prefetch>
		
            <!-- header start -->
            <div data-role="header" data-position="inline" data-theme="z"  class="egovBar">
                <a href="<c:url value="/guide/guide.do"/>" data-icon="home" class="ui-btn-left" data-ajax="false">Home</a>
                <a href="<c:url value="/guide/components/link/link.do"/>" data-icon="back" class="ui-btn-right" data-ajax="false">Back</a>
                <h1><img src="<c:url value="/images/egovframework/mbl/rte/guide/h1_logo.png"/>" alt="egovframework" /></h1>
            </div>  
            <!-- header end -->
			
			<!-- content start -->		
			<div data-role="content" data-theme="d">
			
				<!-- content-primary start -->
				<div class="content-primary">		
					<h2>Back to Page One</h2> 
					<a href="#One" data-role="button">Back</a>
					<br><br><br><br> 
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