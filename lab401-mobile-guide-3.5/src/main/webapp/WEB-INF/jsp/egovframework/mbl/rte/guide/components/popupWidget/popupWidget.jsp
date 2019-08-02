<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
  Class Name : ppoupWidget.jsp
  Description :  UX Popup widget component
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
        <title>UX Component - Popup Widget</title> 
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
						<h1>Popup Widget</h1>
						<p>Popup Widget은 툴팁이나 사진 등을 팝업화면으로 출력할 수 있는 컴포넌트이다.</p>
					</div>
					
					<div class="egov-deth1">
						<h2>기본코드</h2>
						<p>Popup Widget의 기본코드는 <strong>&lt;div data-role="popup" id="[popupwidget ID]"&gt;</strong>를 사용한다.</p>
						<p>Panel Widget으로 사용할 &lt;div data-role="popup"&gt; ~ &lt;/div&gt; 영역은 해당 페이지 안에 존재해야한다..</p>
						<div class="egov-deth2">
				     		<ul class="link">
				     			<a href="#popupExample" data-role="button" data-rel="popup">Popup Widget</a>
				     			<!-- popup widget start -->
								<div data-role="popup" id="popupExample">
									<h4>Popup Widget</h4>
								</div>
								<!-- popup widget end --> 
					 			
					 			<li>
					 				&lt;div data-role="popup" id="[popupwidget ID]"&gt;
    									<div class="egov-txtIn1">&lt;Popup Widget&gt;</div>
    								&lt;/div&gt;
    								<br/><br/>
									&lt;a href="#[popupwidget ID]" data-role="button" data-rel="popup"&gt; Popup Widget &lt;/a&gt;
									
								</li>
					 		</ul>
						</div>
					</div>
					
					<div class="egov-deth1">
						<h2>Popup Widget Padding 추가</h2>
						<p>class="ui-content" 추가하면 Popup Widget 영역에 가장자리 영역으로 15px정도의 Padding이 추가된다.</p>
						<div class="egov-deth2">
							<ul class="link">
								<div class="ui-grid-a">
									<div class="ui-block-a"><a href="#popupNoPaddingExample" data-role="button" data-rel="popup">No padding Popup Widget</a></div>
									<div class="ui-block-b"><a href="#popupAddPaddingExample" data-role="button" data-rel="popup">Add Padding Popup Widget</a></div>
								</div>
								<div data-role="popup" id="popupNoPaddingExample">
									<h4>No padding Popup Widget</h4>
								</div>
								<div data-role="popup" id="popupAddPaddingExample" class="ui-content">
									<h4>Add Padding Popup Widget</h4>
								</div>
								<li>
									&lt;a href="#popupNoPaddingExample" data-role="button" data-rel="popup"&gt;
										No padding Popup Widget
									&lt;/a&gt;
									<br/>
									&lt;a href="#popupAddPaddingExample" data-role="button" data-rel="popup"&gt;
										Add Padding Popup Widget
									&lt;/a&gt;
									<br/><br/>
									&lt;div data-role="popup" class="ui-content" id="[popupwidget ID]"&gt;
    									<div class="egov-txtIn1">&lt;Popup Widget&gt;</div>
    								&lt;/div&gt;<br/>
    								&lt;div data-role="popup" class="ui-content" id="[popupwidget ID]"&gt;
    									<div class="egov-txtIn1">&lt;Popup Widget&gt;</div>
    								&lt;/div&gt;
								</li>
							</ul>
						</div>
					</div>
					
					<div class="egov-deth1">
						<h2>Popup Widget 열기</h2>
						<p>Popup Widget은 data-rel="popup" 속성을 추가한 페이지 내부 링크를 통해 화면에 출력된다.</p>
						<div class="egov-deth2">
							<ul class="link">
								<li>
									&lt;a href="#[popupwidget ID]" data-role="button" data-rel="popup"&gt; Panel Widget &lt;/a&gt;
								</li>
							</ul>
						</div>
					</div>
					
					<div class="egov-deth1">
						<h2>Popup Widget 닫기</h2>
						<p>Popup Widget은 Popup Widget을 열었을 때, Pupup 된 영역의 외부를 선택(클릭)하거나 ESC키를 눌러서 Pupup Widget을 닫을 수 있다.</p>
						<p>
							또 Popup Widget 영역 내에 data-rel="back" 속성의 Link를 추가하여 Popup Widget에 닫기버튼을 추가하여 사용할 수 있으며<br/>
							닫기버튼의 위치는 class="[ui-btn--left, ui-btn-right]로 지정할 수 있다.<br/>
							링크로 추가된 닫기 버튼 이외의 닫기 방식을 사용하지 않으려면 Popup Widget 영역헤  data-dismissible="false" 속성을 추가한다.
						</p>
						<div class="egov-deth2">
							<ul class="link">
								<a href="#popupWidgetCloseRight" data-rel="popup" data-role="button">Right close button</a>
								<a href="#popupWidgetCloseLeft" data-rel="popup" data-role="button">Left close button</a>
								<a href="#popupWidgetUndismissible" data-rel="popup" data-role="button">Undismissible Popup</a>
								<div data-role="popup" id="popupWidgetCloseRight">
								    <a href="#" data-rel="back" data-role="button" data-theme="a" data-icon="delete" data-iconpos="notext" class="ui-btn-right">Close</a>
								    <p>Popup Widget 오른쪽 닫기 버튼이 적용된다.</p>
								</div>
								<div data-role="popup" id="popupWidgetCloseLeft">
								    <a href="#" data-rel="back" data-role="button" data-theme="a" data-icon="delete" data-iconpos="notext" class="ui-btn-left">Close</a>
								    <p>Popup Widget 왼쪽에 닫기 버튼이 적용된다.</p>
								</div>
								<div data-role="popup" id="popupWidgetUndismissible" style="max-width:280px" data-dismissible="false">
								    <a href="#" data-rel="back" data-role="button" data-theme="a" data-icon="delete" data-iconpos="notext" class="ui-btn-left">Close</a>
								    <p>Popupup Widget의 닫기 버튼 이외의 닫기입력을 방지한다.</p>
								</div>
								
								<li>
									&lt;a href="#popupWidgetCloseRight" data-rel="popup" data-role="button"&gt;
										Right close button
									&lt;/a&gt;
									<br/>
									&lt;a href="#popupWidgetCloseLeft" data-rel="popup" data-role="button"&gt;
										Left close button&
									lt;/a&gt;
									<br/>
									&lt;a href="#popupWidgetUndismissible" data-rel="popup" data-role="button"&gt;
										Undismissible Popup
									&lt;/a&gt;
									<br/><br/>
									&lt;div data-role="popup" id="popupWidgetCloseRight"&gt;
										<div class="egov-txtIn1">
								    		&lt;a href="#" data-rel="back" data-role="button" data-theme="a" data-icon="delete" data-iconpos="notext" class="ui-btn-right"&gt;
								    		Close
								    		&lt;/a&gt;
								    	</div>
								    	<div class="egov-txtIn1">
								    		&lt;p&gt;Popup Widget 오른쪽에 닫기 버튼이 적용된다.&lt;/p&gt;
								    	</div>
									&lt;/div&gt;
									<br/>
									&lt;div data-role="popup" id="popupWidgetCloseLeft"&gt;
										<div class="egov-txtIn1">
								    		&lt;a href="#" data-rel="back" data-role="button" data-theme="a" data-icon="delete" data-iconpos="notext" class="ui-btn-left"&gt;
								    			Close
								    		&lt;/a&gt;
								    	</div>
								    	<div class="egov-txtIn1">
								    		&lt;p&gt;Popup Widget 왼쪽에 닫기 버튼이 적용된다.&lt;/p&gt;
								    	</div>
									&lt;/div&gt;
									<br/>
									&lt;div data-role="popup" id="popupWidgetUndismissible" data-dismissible="false"&gt;
										<div class="egov-txtIn1">
								    		&lt;a href="#" data-rel="back" data-role="button" data-theme="a" data-icon="delete" data-iconpos="notext" class="ui-btn-left"&gt;
								    			Close
								    		&lt;/a&gt;
								    	</div>
								    	<div class="egov-txtIn1">
								    		&lt;p&gt;Popupup Widget의 닫기 버튼 이외의 닫기입력을 방지한다.&lt;/p&gt;
								    	</div>
									&lt;/div&gt;
								</li>
							</ul>
						</div>
					</div>
					
	        		<div class="egov-deth1">
						<h2>위치 변경</h2>
						<p>
							Popup Widget을 화면에 나타나는 위치를 변경할 때는 팝업을 열기 위한 링크에<strong>data-position-to="[window, origin, #target]"</strong>를 추가한다.</br>
							#target의 경우 지정한 링크나 객체의 ID 값로 지정하여 그 값을 가지는 영역에 Popup Widget를 출력한다.
						</p>
						
						<div class="egov-deth2">
							<ul class="link">
								<h4 align="center" id="target">'#target' Popup이 표시되는 영역</h4>
								<a href="#positionWindowExample" data-role="button" data-rel="popup" data-position-to="window">Window</a>
								<a href="#positionOriginExample" data-role="button" data-rel="popup" data-position-to="origin">Origin</a>
								<a href="#targetExample" data-role="button" data-rel="popup" data-position-to="#target">#target</a>
								<div data-role="popup" id="positionWindowExample" class="ui-content">
								    <p>창의 가운데에 Popup Widget가 표시된다.</p>
								</div>
								<div data-role="popup" id="positionOriginExample" class="ui-content">
								    <p>Popup Widget을 여는 Link에 Popup Widget가 표시된다.</p>
								</div>
								<div data-role="popup" id="targetExample" class="ui-content">
								    <p>id가 "target"인 영역에 Popup Widget가 표시된다.</p>
								</div>
								<li>
									&lt;h4 id="target" align="center"&gt;
										#target popup이 표시되는 영역
									&lt;/h4&gt;
									<br/>
									&lt;a href="#positionWindowExample" data-role="button" data-rel="popup" data-position-to="window"&gt;
										Window
									&lt;/a&gt;
									<br/>
									&lt;a href="#positionOriginExample" data-role="button" data-rel="popup" data-position-to="origin"&gt;
										Origin
									&lt;/a&gt;
									<br/><br/>
									&lt;a href="#targetExample" data-role="button" data-rel="popup" data-position-to="#target"&gt;
										#target
									&lt;/a&gt;
									<br/>
									&lt;div data-role="popup" id="positionWindowExample" class="ui-content" data-theme="a"&gt;
										<div class="egov-txtIn1">
								    		&lt;p&gt;창의 가운데에 Popup Widget가 표시된다.&lt;/p&gt;
								    	</div>
									&lt;/div&gt;
									<br/>
									&lt;div data-role="popup" id="positionOriginExample" data-theme="a"&gt;
										<div class="egov-txtIn1">
								    		&lt;p&gt;Popup Widget을 여는 Link에 Popup Widget가 표시된다.&lt;/p&gt;
										</div>
									&lt;/div&gt;
									<br/>
									&lt;div data-role="popup" id="targetExample" data-theme="a"&gt;
										<div class="egov-txtIn1">
								    		&lt;p&gt;id가 "target"인 영역에 Popup Widget가 표시된다.&lt;/p&gt;
								    	</div>
									&lt;/div&gt;
								</li>
					 		</ul>
						</div>
					</div>
	               
	               	<div class="egov-deth1">
						<h2>화면 전환</h2>
						<p>Popup Widget이 화면에 출력될 때 <strong>data-transition</strong> 속성을 사용하여 화면 전환효과를 적용할 수 있다.</p>
						<div class="egov-deth2">							
							<a href="#transitionExample" data-transition="none" data-role="button" data-rel="popup" data-mini="true">No transition</a>
							<a href="#transitionExample" data-transition="pop" data-role="button" data-rel="popup" data-mini="true">Pop</a>
							<a href="#transitionExample" data-transition="fade" data-role="button" data-rel="popup" data-mini="true">Fade</a>
							<a href="#transitionExample" data-transition="flip" data-role="button" data-rel="popup" data-mini="true">Flip</a>
							<a href="#transitionExample" data-transition="turn" data-role="button" data-rel="popup" data-mini="true">Turn</a>
							<a href="#transitionExample" data-transition="flow" data-role="button" data-rel="popup" data-mini="true">Flow</a>
							<a href="#transitionExample" data-transition="slide" data-role="button" data-rel="popup" data-mini="true">Slide</a>
							<a href="#transitionExample" data-transition="slidefade" data-role="button" data-rel="popup" data-mini="true">Slidefade</a>
							<a href="#transitionExample" data-transition="slideup" data-role="button" data-rel="popup" data-mini="true">Slide up</a>
							<a href="#transitionExample" data-transition="slidedown" data-role="button" data-rel="popup" data-mini="true">Slide down</a>
							<div data-role="popup" id="transitionExample" class="ui-content" data-theme="d">
    							<p>data-tansition 속성을 이용하여 화면전환 효과를 적용한다.</p>
							</div>
							<ul class="link">
								<li>
									&lt;a href="#transitionExample" data-transition="none" data-role="button" data-rel="popup"&gt;No transition&lt;/a&gt;<br/>
									&lt;a href="#transitionExample" data-transition="pop" data-role="button" data-rel="popup"&gt;Pop&lt;/a&gt;<br/>
									&lt;a href="#transitionExample" data-transition="fade" data-role="button" data-rel="popup"&gt;Fade&lt;/a&gt;<br/>
									&lt;a href="#transitionExample" data-transition="flip" data-role="button" data-rel="popup"&gt;Flip&lt;/a&gt;<br/>
									&lt;a href="#transitionExample" data-transition="turn" data-role="button" data-rel="popup"&gt;Turn&lt;/a&gt;<br/>
									&lt;a href="#transitionExample" data-transition="flow" data-role="button" data-rel="popup"&gt;Flow&lt;/a&gt;<br/>
									&lt;a href="#transitionExample" data-transition="slide" data-role="button" data-rel="popup"&gt;Slide&lt;/a&gt;<br/>
									&lt;a href="#transitionExample" data-transition="slidefade" data-role="button" data-rel="popup"&gt;Slidefade&lt;/a&gt;<br/>
									&lt;a href="#transitionExample" data-transition="slideup" data-role="button" data-rel="popup"&gt;Slide up&lt;/a&gt;<br/>
									&lt;a href="#transitionExample" data-transition="slidedown" data-role="button" data-rel="popup"&gt;Slide down&lt;/a&gt;<br/>
									<br/>
									&lt;div data-role="popup" id="transitionExample" class="ui-content" data-theme="d"&gt;<br/>
		    							<div class="egov-txtIn1">
		    								&lt;p&gt;data-tansition 속성을 이용하여 화면전환 효과를 적용한다.&lt;/p&gt;
		    							</div>
									&lt;/div&gt;
								</li>
					 		</ul>
						</div>
					</div>
					
					<div class="egov-deth1">
						<h2>테마 적용</h2>
						<p>
							Popup Widget의 테마적용은 <strong>data-theme</strong>와 <strong>data-overlay-theme</strong> 속성을 추가하여 적용할 수 있다. 
							data-theme 속성은 Popup Widget에 테마를 적용하기 위한 속성이며,<br/>
							data-overlay-theme 속성은 Popup Widget 외부에 테마를 적용하기 위한 속성이다.
						</p>
						<div class="egov-deth2">							
							<div id="popupPosition" style="height:50px;">&nbsp;</div>
							<a href="#theme" data-rel="popup" data-role="button" data-position-to="#popupPosition" data-mini="true">Theme</a>
							<a href="#overlay" data-rel="popup" data-role="button" data-position-to="#popupPosition" data-mini="true">Overlay</a>
							<a href="#both" data-rel="popup" data-role="button" data-position-to="#popupPosition" data-mini="true">Theme + Overlay</a>
							<a href="#transparent" data-rel="popup" data-role="button" data-position-to="#popupPosition" data-mini="true">투명한 배경</a>
							<a href="#noShadow" data-rel="popup" data-role="button" data-position-to="#popupPosition" data-mini="true">그림자 없음</a>
							
							<div id="theme" data-role="popup" data-theme="e">
								<p>Popup Widget에 data-theme="e" 적용</p>
							</div>
							<div id="overlay" data-role="popup" data-overlay-theme="a">
								<p>Popup Widget에 data-overlay-theme="a" 적용</p>
							</div>
							<div id="both" data-role="popup" data-theme="e" data-overlay-theme="a">
								<p>Popup Widget에 data-theme="e", data-overlay-theme="a" 적용</p>
							</div>
							<div id="transparent" data-role="popup" data-theme="none" data-shadow="false">
								<p>Popup Widget에 data-theme="none" 적용</p>
							</div>
							<div id="noShadow" data-role="popup" data-theme="e" data-shadow="false">
								<p>Popup Widget에 data-shadow="false" 적용</p>
							</div>
							
							<ul class="link">
								<li>
									&lt;a href="#theme" data-rel="popup" data-role="button"&gt;Theme&lt;/a&gt;<br/>
									&lt;a href="#overlay" data-rel="popup" data-role="button"&gt;Overlay&lt;/a&gt;<br/>
									&lt;a href="#both" data-rel="popup" data-role="button"&gt;Theme + Overlay&lt;/a&gt;<br/>
									&lt;a href="#transparent" data-rel="popup" data-role="button"&gt;투명한 배경&lt;/a&gt;<br/>
									&lt;a href="#noShadow" data-rel="popup" data-role="button"&gt;그림자 없음&lt;/a&gt;<br/>
									<br/>
									&lt;div id="theme" data-role="popup" data-theme="e"&gt;
										<div class="egov-txtIn1">
											&lt;p&gt;Popup Widget에 data-theme="e" 적용&lt;/p&gt;
										</div>
									&lt;/div&gt;
									<br/>
									&lt;div id="overlay" data-role="popup" data-overlay-theme="a"&gt;
										<div class="egov-txtIn1">
											&lt;p&gt;Popup Widget에 data-overlay-theme="a" 적용&lt;/p&gt;
										</div>
									&lt;/div&gt;
									<br/>
									&lt;div id="both" data-role="popup" data-theme="e" data-overlay-theme="a"&gt;
										<div class="egov-txtIn1">
											&lt;p&gt;Popup Widget에 data-theme="e", data-overlay-theme="a" 적용&lt;/p&gt;
										</div>
									&lt;/div&gt;
									<br/>
									&lt;div id="transparent" data-role="popup" data-theme="none" data-shadow="false"&gt;
										<div class="egov-txtIn1">
											&lt;p&gt;Popup Widget에 data-theme="none" 적용&lt;/p&gt;
										</div>
									&lt;/div&gt;
									<br/>
									&lt;div id="noShadow" data-role="popup" data-theme="e" data-shadow="false"&gt;
										<div class="egov-txtIn1">
											&lt;p&gt;Popup Widget에 data-shadow="false" 적용&lt;/p&gt;
										</div>
									&lt;/div&gt;
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
			
	
			
		</div>
		<!-- page end -->
	
    </body>
</html>