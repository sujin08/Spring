<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Class Name : events.jsp
  Description :  API event
  Modification Information

      수정일         수정자           수정내용
    -------------    --------    ---------------------
     2011.07.14    윤병욱          최초 생성
 
    author   : 모바일 실행환경 개발팀 윤병욱
    since    : 2011.07.06
--%>
<!DOCTYPE html> 
<html lang="kr"> 
    <head>
        <title>API - Events</title> 
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
            <div data-role="header" data-position="inline" data-theme="z" class="egovBar">
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
                        <h1>Events</h1>
                        <p>전자정부 모바일 표준프레임워크는 스마트기반 모바일 환경에 적합한  
						 이벤트를 제공한다. Touch, Mouse, Window 영역의 다양한 이벤트를 
						지원가능 여부에 따라 선택적으로 이용하기 때문에 모바일 환경과 데스크톱(Desktop) 환경 모두에서 사용 가능하다. 
						live() 또는 bind() 메소드를 이용하여 여러 이벤트를 함께 사용 할 수 있다.<br>
						<strong>아래 이벤트는 pageCreate()에 .on() 또는 .bind() 해야 사용 할 수 있다.</strong></p>
                    </div>
                    
                    <div class="egov-deth1">
                        <h2>Touch Events</h2>
                        <dl class="egov-deth3">
                            <dt>tap</dt>
                            <dd>Touch 이벤트가 끝나는 즉시 발생하는 이벤트이다.</dd>
                            
                            <dt>taphold</dt>
                            <dd>tap을 일정 시간 이상 지속했을 때 발생하는 이벤트이다.</dd>
                            
                            <dt>swipe</dt>
                            <dd>1초 이내에 30px이상의 수평 방향이나 20px 이상의 수직 방향으로 드래그(drag)되면 발생하는 이벤트이다.</dd>
		                        <dd class="egov-deth2">
		                            <ul class="link">
		                               <li>scrollSupressionThreshold (default: 10px) – default 값 이상 으로 수평방향으로 이벤트가 발생하면 스크롤이 발생되지 않도록 한다.</li>
		                               <li>durationThreshold (default: 1000ms) – default 값 이상 swipe이 지속되면 기능이 작동하지 않는다.</li>
		                               <li>horizontalDistanceThreshold (default: 30px) – default 값 이상 수평방향으로 이벤트가 발생해야한다.</li>
		                               <li>verticalDistanceThreshold (default: 75px) – default 값 이하로 수직방향으로 이벤트가 발생해야한다</li> 
		                            </ul>
		                        </dd>                            
                            
                            <dt>swipeleft</dt>
                            <dd>swipe 이벤트가 왼쪽으로 일어났을 때 발생하는 이벤트이다.</dd>
                            
                            <dt>swiperight</dt>
                            <dd>swipe 이벤트가 오른쪽으로 일어났을 때 발생하는 이벤트이다.</dd>
                        </dl>
                    </div>
                    
                    <div class="egov-deth1">
                        <h2>Orientation change event</h2>
                        <dl class="egov-deth3">
                            <dt>orientationchange</dt>
                            <dd>기기의 방향이 수평 또는 수직으로 바뀌었을 때 발생하는 이벤트이다. 
							orientationChange 이벤트가 지원되지 않을 경우에는 resize 이벤트가 자동으로 bind 된다.</dd>
                        </dl>
                    </div>
                    
                    <div class="egov-deth1">
                        <h2>Scroll events</h2>
                        <dl class="egov-deth3">
                            <dt>scrollstart</dt>
                            <dd>스크롤(scroll)이 시작되면 발생하는 이벤트이다. 
                            (iOS 기기는 스크롤 중에는 DOM 을 변경하지 않고 queue 에 저장해두었다가 스크롤이 끝난 후에 변경한다.) 
							</dd>
                            
                            <dt>scrollstop</dt>
                            <dd>스크롤이 끝나면 발생하는 이벤트이다.</dd>
                        </dl>
                    </div>
                    
                    <div class="egov-deth1">
                        <h2>Page load events</h2>
                        <p>페이지 로딩에 관련된 이벤트들로서, 페이지를 로딩하기 전(pagebeforeload)과 정상적으로 로딩이 완료된 후(pageload), 로딩 작업이 실패한 경우(pageloadfailed) 이벤트가 발생한다.</p>
                        
                        <dl class="egov-deth3">
                            <dt>pagebeforeload</dt>
                            <dd>페이지 로딩이 일어나기 전에 발생하는 이벤트이다.</dd>
                            
                            <dt>pageload</dt>
                            <dd>페이지 로딩이 성공한 경우(DOM에 정상적으로 통합된 경우)에 발생하는 이벤트이다.</dd>
                            
                            <dt>pageloadfailed</dt>
                            <dd>페이지 로딩이 실패한 경우(DOM에 정상적으로 통합되지 못한 경우)에 발생하는 이벤트이다.</dd>
                        </dl>
                        
                        <br>
                        <dl class="egov-deth3">
					 		<dd>		
							최초 페이지가 로드될 때 페이지 이벤트에 관련된 핸들러를 사용하기 위해서는 참조된 Javascript 가 실행되기 전에
							bind 시켜야 한다. Global Configuration 에서 설명한 것처럼
							pageinit 핸들러를 이용하면 이와 같은 설정을 할 수 있다.
                        	</dd>
                        </dl>
                        
                        <h2>Page change events</h2>
                        <p>페이지 이동에 관련된 이벤트들로서, 이동 대상 페이지가 보여지기 전(pagebeforechange)과 정상적으로 로딩된 후 애니메이션을 포함한 페이지 이동까지 정상적으로 완료되었을 때(pagechange), 대상 페이지를 로딩하지 못했거나 페이지 이동이 정상적으로 완료되지 않은 경우(pagechangefailed) 이벤트가 발생한다.</p>
                        
                        <dl class="egov-deth3">
                            <dt>pagebeforechange</dt>
                            <dd>대상 페이지로 이동하는 애니메이션이 보여지기 전에 발생하는 이벤트이다.</dd>
                            
                            <dt>pagechange</dt>
                            <dd>대상 페이지가 정상적으로 로딩된 후에 애니메이션을 포함한 페이지 이동까지 정상적으로 완료된 경우 발생하는 이벤트이다.</dd>
                            
                            <dt>pagechangefailed</dt>
                            <dd>대상 페이지를 로딩하지 못했거나 페이지 이동이 정상적으로 완료되지 않았을 때 발생하는 이벤트이다.</dd>
                        </dl>
                        
                        <br>
                        <dl class="egov-deth3">
					 		<dd>		
							최초 페이지가 로드될 때 페이지 이벤트에 관련된 핸들러를 사용하기 위해서는 참조된 Javascript 가 실행되기 전에
							bind 시켜야 한다. Global Configuration 에서 설명한 것처럼
							pageinit 핸들러를 이용하면 이와 같은 설정을 할 수 있다.
                        	</dd>
                        </dl>
                        
                        
                        <h2>Page transition events</h2>
                        <p>페이지가 나타나기 이전(pagebeforeshow)과 나타난 순간(pageshow), 
                              가려지기 이전(pagebeforehide)과 가려진 순간(pagehide) 페이지 이벤트가 발생한다.</p>
                        
                        <dl class="egov-deth3">
                            <dt>pagebeforeshow</dt>
                            <dd>화면전환이 일어나기 전, 또는 페이지가 보여지기 전에 매번  발생하는 이벤트이다.</dd>
                            
                            <dt>pagebeforehide</dt>
                            <dd>화면전환이 일어나기 전, 또는 페이지가 숨겨지기 전에 매번 발생하는 이벤트이다.</dd>
                            
                            <dt>pageshow</dt>
                            <dd>화면전환이 완료되었거나 페이지가 보여진 후에 매번 발생하는 이벤트이다.</dd>
                            
                            <dt>pagehide</dt>
                            <dd>화면전환이 완료되었거나 페이지가 가려진 후에 매번 발생하는 이벤트이다.</dd>
                                                        
                            <dd>페이지 이벤트는 이전 페이지와 다음 페이지의 존재 유무와 이벤트 종류에 따라 이전 페이지(prevPage)와 
							다음페이지(nextPage)에 대한 정보를 갖는다.
							(첫 번째 페이지는 이전 페이지에 대한 정보가 없기 때문에 null 객체를 참조한다.) 
							</dd>
							<dd class="egov-deth2">
	                        	<ul class="link">
		                            <li>$('div').on('pageshow', function(event, ui) {</li>
		                            <li class="egov-txtIn1">alert('This page was just hidden: '+ ui.prevPage);</li>
		                            <li>});</li>
		                            <li><br></li>
		                            <li>$('div').on('pagehide', function(event, ui) {</li>
		                            <li class="egov-txtIn1">alert('This page was just shown: '+ ui.nextPage);</li>
		                            <li>});</li>
	                            </ul>
                       		</dd>
                        </dl>
                        
                        <br>
					 	<dl class="egov-deth3">
					 		<dd>		
							최초 페이지가 로드될 때 페이지 이벤트에 관련된 핸들러를 사용하기 위해서는 참조된 Javascript 가 실행되기 전에
							bind 시켜야 한다. Global Configuration 에서 설명한 것처럼
							pageinit 핸들러를 이용하면 이와 같은 설정을 할 수 있다.
                        	</dd>
                        </dl>
                        
                        <h2>Page initialization events</h2>
                        <p>페이지 초기화에 관련된 이벤트들로서, 페이지 초기화가 발생하기 전(pagebeforecreate)과 DOM 객체가 생성되고 data-role="page"가 초기화 되기 이전(pagecreate), 페이지 초기화가 완료된 이후(pageinit) 이벤트가 발생한다.</p>
                        
                        <dl class="egov-deth3">
                            <dt>pagebeforecreate</dt>
                            <dd>페이지 초기화가 동작하기 이전에 발생하는 이벤트이다.</dd>
                            
                            <dt>pagecreate</dt>
                            <dd>페이지 초기화의 중간(DOM객체가 생성되고 data-role="page"가 초기화되기 이전)에 발생하는 이벤트이다.</dd>
                            
                            <dt>pageinit</dt>
                            <dd>페이지 초기화가 완료된 이후(DOM객체가 생성된 후 모든 요소들의 스타일이 적용된 이후)에 발생하는 이벤트이다.</dd>
                        </dl>
                        
                        <br>
                        <dl class="egov-deth3">
					 		<dd>		
							최초 페이지가 로드될 때 페이지 이벤트에 관련된 핸들러를 사용하기 위해서는 참조된 Javascript 가 실행되기 전에
							bind 시켜야 한다. Global Configuration 에서 설명한 것처럼
							pageinit 핸들러를 이용하면 이와 같은 설정을 할 수 있다.
                        	</dd>
                        </dl>
                        
                        <h2>Page remove events</h2>
                        <p>페이지 제거에 관련된 이벤트들로서, 로딩했던 외부 페이지 중 활성화되지 않는 페이지를 DOM에서 삭제하기 위한(pageremove) 이벤트가 발생한다.</p>
                        
                        <dl class="egov-deth3">
                            <dt>pageremove</dt>
                            <dd>페이지의 링크 태그에 external-page="true" 속성을 추가함으로서, 외부페이지로 이동 후 다시 돌아올 때 외부페이지가 제거되면서 이벤트가 발생한다.</dd>
                        </dl>
                        
                        <br>
                        <dl class="egov-deth3">
					 		<dd>		
							최초 페이지가 로드될 때 페이지 이벤트에 관련된 핸들러를 사용하기 위해서는 참조된 Javascript 가 실행되기 전에
							bind 시켜야 한다. Global Configuration 에서 설명한 것처럼
							pageinit 핸들러를 이용하면 이와 같은 설정을 할 수 있다.
                        	</dd>
                        </dl>
                    </div>
                    
                    <div class="egov-deth1">
                        <h2>Virtual mouse events</h2>
                        <p>마우스와 터치 이벤트을 둘다 인식 할 수 있는 virtual click을 제공한다.이는 기존 웹브라우저 환경에서 발생하는 기본 마우스 이벤트(
                        mousedown, mousemove, mouseup, click)가 모바일 환경에서도 지원이 되며 동일 자원에 다중 이벤트가 발생할 시 각각 다른 이벤트로 인식한다. 
						</p>
                        <dl class="egov-deth3">
                            <dt>vmouseover</dt>
                            <dd>터치 이벤트 또는 mouseover가 발생할 때 나타나는 이벤트이다.</dd>
                            
                            <dt>vmouseout</dt>
                            <dd>터치 이벤트 또는 mouseout이 발생할 때 나타나는 이벤트이다.</dd>
                            
                            <dt>vmousedown</dt>
                            <dd>터치 이벤트 또는 mousedown이 발생할 때 나타나는 이벤트이다.</dd>
                            
                            <dt>vmousemove</dt>
                            <dd>터치 이벤트 또는 mousemove가  발생할 때 나타나는 이벤트이다.</dd>
                            
                            <dt>vmouseup</dt>
                            <dd>터치 이벤트 또는 mouseup이  발생할 때 나타나는 이벤트이다.</dd>                            
   
                            <dt>vclick</dt>
                            <dd>터치 이벤트 또는 click이  발생할 때 나타나는 이벤트이다.</dd>
                            
                            <dt>vmousecancel</dt>
                            <dd>터치 이벤트 또는 mousecancel가  발생할 때 나타나는 이벤트이다.</dd>
                        </dl>
                    </div>
                    
                    <div class="egov-deth1">
                        <h2>Layout Events</h2>
                        <p>컴포넌트들이 프레임워크 안에서 동적으로 추가 혹은 보여지거나 숨겨지는 경우에 주위의 컴포넌트들이 다시 그들의 size나 position이 변경되어야 할 경우에 발생시킬 수 있는 이벤트이다.</p>
                        
                        <dl class="egov-deth3">
	                        <dt>updatelayout</dt>
	                        <dd>컴포넌트의 위치 혹은 크기 속성을 동적으로 변경한 경우에 layout을 새롭게 구성하기 위한 이벤트이다.</dd>
	                    </dl>
	                    
	                    <div class="egov-deth2">
                        	<ul class="link">
	                            <li>$('div').hide().trigger("updatelayout");</li>
                            </ul>
                      	</div>
                    </div>
                    
                    <div class="egov-deth1">
                        <h2>Animation Events</h2>
                        <p> CSS 전환에 적용되는 class를 추가하거나 삭제하는 animationComplete 플러그인을 지원한다.</p>
                    </div>                    
                    

                </div>
					
	            <div class="content-secondary"> 
					<jsp:include page="../introMenu.jsp"></jsp:include>
				</div>
				
			</div>
			
            <!-- footer start -->
            <div data-role="footer" data-theme="z" class="egovBar">
                <h4 class="main">Copyright(c)2012 Ministry of Government Administration and Home Affairs.</h4>
            </div>
            <!-- footer end --> 
            
        </div>                				             
            
     </body>
 </html>