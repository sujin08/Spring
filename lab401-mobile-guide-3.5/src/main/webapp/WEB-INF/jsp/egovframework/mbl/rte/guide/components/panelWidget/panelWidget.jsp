<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
  Class Name : panelWidget.jsp
  Description :  UX panel widget component
  Modification Information

	수정일			수정자		수정내용
	----------		------		---------------------
	2014.02.06		옥찬우		최초 생성
 
    author   : 유지보수팀 옥찬우
    since    : 2014.02.06
--%>

<!DOCTYPE html> 
<html lang="kr"> 
    <head>
        <title>UX Component - Panel Widget</title> 
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
            <div data-role="header" data-position="inline" data-theme="z" class="egovBarHeader">
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
						<h1>Panel Widget</h1>
						<p>Panel Widget은 화면의 오른쪽 또는 왼쪽의 보이지 않는 공간을 활용하는 컴포넌트로 네비게이션, 폼 등으로 사용할 수 있다.</p>
					</div>
					
					<div class="egov-deth1">
						<h2>기본코드</h2>
						<p>Panel Widget의 기본코드는 <strong>&lt;div data-role="panel" id="[panelwidget ID]"&gt;</strong>를 사용한다.</p>
						<p>Panel Widget으로 사용할 &lt;div data-role="panel"&gt; ~ &lt;/div&gt; 영역은 해당 페이지의 Header, Content Footer과 같은 레벨에 추가해야한다.</p>
						<div class="egov-deth2">
				     		<ul class="link">
				     			<a href="#componentMenu" data-role="button">Panel Widget</a> 
					 			<li>
					 				&lt;div data-role="page"&gt;<br/>
					 					<br/>
					 					<div class="egov-txtIn1">&lt;!-- panel widget--&gt;</div>
					 					<div class="egov-txtIn1">&lt;div data-role="panel" id="[panelwidget ID]"&gt;</div>
    										<div class="egov-txtIn2">&lt;!-- panel content goes here --&gt;</div>
										<div class="egov-txtIn1">&lt;/div&gt;</div>
										<br/>
										<div class="egov-txtIn1">&lt;!-- header --&gt;</div>
										<div class="egov-txtIn1">&lt;!-- content --&gt;</div>
											<div class="egov-txtIn2">
												&lt;a href="#[panelwidget ID]" data-role="button"&gt; Panel Widget &lt;/a&gt;
											</div>
										<div class="egov-txtIn1">&lt;!-- footer --&gt;</div>
									&lt;/div&gt;
								</li>
					 		</ul>
						</div>
					</div>
					
					<div class="egov-deth1">
						<h2>Panel Widget 열기</h2>
						<p><a href="<c:url value="/guide/components/link/link.do"/>" data-ajax="false">페이지 내부 링크</a>를 통해 Panel Widget을 열 수 있다.</p>
						<div class="egov-deth2">
							<ul class="link">
								<li>
									&lt;a href="#[panelwidget ID]" data-role="button"&gt; Panel Widget &lt;/a&gt;
								</li>
							</ul>
						</div>
					</div>
					
					<div class="egov-deth1">
						<h2>Panel Widget 닫기</h2>
						<p>Panel Widget은 Panel Widget을 열었을 경우, 원래의 페이지 영역을 선택(클릭)하거나 ESC키를 눌러서 패널을 닫을 수 있다.</p>
						<p>
							또 영역 내에 data-rel="close"가 추가된 Link를 추가하여 Panel Widget를 닫을 수 있다.<br/>
							이 때 링크에는 패널을 열었던 영역의 ID를 href값으로 지정하는 것이 좋다.<br/>
							예를 들어, ID가 myheader인 Header에서 버튼을 클릭하여 Panel Widget을 열었다면<br/>
							Panel Widget을 닫기 위한 링크의 href값을 '#myheader'로 지정한다.
						</p>
						<div class="egov-deth2">
							<ul class="link">
								<li>
									&lt;a href="" data-role="button" data-rel="close"&gt; Close Panel Widget &lt;/a&gt;
								</li>
							</ul>
						</div>
					</div>
					
	        		<div class="egov-deth1">
						<h2>디스플레이 방식 변경</h2>
						<p>
							Panel Widget을 화면에 활성화 시키는 디스플레이 방식을 변경할 때는 <strong>data-display="[reveal, overlay, push]"</strong>를 추가한다.<br/>
							Attribute를 추가하지 않을 경우 기본 디스플레이 방식은 reveal이다.
						</p>
						
						<div class="egov-deth2">
								<a href="#revealExample" data-role="button">Reveal</a>
								<a href="#overlayExample" data-role="button">Overlay</a>
								<a href="#pushExample" data-role="button">Push</a>
								
							<ul class="link">
								<li>
									&lt;div data-role="panel" data-display="reveal" id="revealExample"&gt;
  										Overlay Example
									&lt;/div&gt;
									<br/>
									&lt;div data-role="panel" data-display="overlay" id="overlayExample"&gt;
  										Overlay Example
									&lt;/div&gt;
									<br/>
									&lt;div data-role="panel" data-display="push" "id="pushExample"&gt;
  										Push Example
									&lt;/div&gt;
								</li>
					 		</ul>
						</div>
					</div>
	               
	               	<div class="egov-deth1">
						<h2>디스플레이 방향 변경</h2>
						<p>Panel Widget은 왼쪽에서 디스플레이 되는 것이 Default이다. 디스플레이 방향을 변경하려면 기본코드에 <strong>data-position="right"</strong> 을 추가한다.</p>
						<div class="egov-deth2">							
							<a href="#displayRightExample" data-role="button">Right</a>
							<a href="#displayLeftExample" data-role="button">Left</a>
							<ul class="link">
								<li>
			 						&lt;div data-role="panel" data-position="right" id="displayRightExample"&gt;
										Display Right Example
									&lt;/div&gt;
									<br/>
									&lt;div data-role="panel" id="displayLeftExample"&gt;
										Display Left Example
									&lt;/div&gt;
								</li>
					 		</ul>
						</div>
					</div>
					
					<div class="egov-deth1">
						<h2>위치 고정</h2>
						<p>
							Panel Widget은 페이지의 스크롤 이벤트에 따라 같이 스크롤 된다.<br/>
							또 페이지의 세로길이가 화면영역보다 넓을 때, Panel Widget을 열면 페이지도 맨위로 화면이 같이 움직일 수 있다.<br/> 
							페이지 영역의 스크롤에 관계없이 위치를 고정시키려면
							기본코드에 <strong>data-position="right"</strong>을 추가한다.</br>
							Panel Widget 영역의 내용이 화면의 높이보다 길 경우 위치 고정을 사용할 수 없다. 
						</p>
						<div class="egov-deth2">							
							<a href="#fixedPositionExample" data-role="button">Fixed Postion</a>
							<ul class="link">
								<li>
				 					<div class="egov-txtIn1">
				 						&lt;div data-role="panel" data-position="right" id="displayRightExample" data-position-fixed="true"&gt;
										Display Right Example
										&lt;/div&gt;
									</div>
								</li>
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
			<div data-role="footer" data-theme="z" class="egovBar">
				 <h4>Copyright(c)2012 Ministry of Government Administration and Home Affairs.</h4>
			</div>
			<!-- footer end -->
			
			<!-- panel widget start -->
			<div data-role="panel" id="componentMenu" data-position="right" data-display="overlay">
			   	<jsp:include page="./panelWidgetComponentMenu.jsp"></jsp:include>
			</div>
			
			<div data-role="panel" id="revealExample" data-position="right" data-display="reveal">
			   	<a href="#" data-role="button" data-rel="close" data-icon="delete" data-iconpos="notext">Close menu</a>
			   	<p>Reveal Example</p>
			</div>
			
			<div data-role="panel" id="overlayExample" data-position="right" data-display="overlay">
			   	<a href="#" data-role="button" data-rel="close" data-icon="delete" data-iconpos="notext">Close menu</a>
			   	<p>Overlay Example</p>
			</div>
			
			<div data-role="panel" id="pushExample" data-position="right" data-display="push">
			   	<a href="#" data-role="button" data-rel="close" data-icon="delete" data-iconpos="notext">Close menu</a>
			   	<p>Push Example</p>
			</div>
			
			<div data-role="panel" id="displayRightExample" data-position="right">
			   	<a href="#" data-role="button" data-rel="close" data-icon="delete" data-iconpos="notext">Close menu</a>
			   	<p>Display Right Example</p>
			</div>
			
			<div data-role="panel" id="displayLeftExample">
			   	<a href="#" data-role="button" data-rel="close" data-icon="delete" data-iconpos="notext">Close menu</a>
			   	<p>Display Left Example</p>
			</div>
			
			<div data-role="panel" id="fixedPositionExample" data-position="right" data-position-fixed="true">
			   	<a href="#" data-role="button" data-rel="close" data-icon="delete" data-iconpos="notext">Close menu</a>
			   	<p>Fixed Position Example</p>
			</div>
			<!-- panel widget end -->
			
		</div>
		<!-- page end -->
	
    </body>
</html>