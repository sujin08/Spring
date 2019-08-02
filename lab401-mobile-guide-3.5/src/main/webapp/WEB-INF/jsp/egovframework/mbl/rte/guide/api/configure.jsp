<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Class Name : configure.jsp
  Description :  API configure
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
        <title>API - configure</title> 
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
                        <h1>Configuring Defaults</h1>
                        <p>전자정부 모바일 표준프레임워크는 모바일 어플리케이션이 시작 될때 각종 초기화 작업을 수행 할 수 있게 pageinit 이벤트를 통하여 
						기본 환경 설정을 정의 할수 있도록 한다.</p>
                    </div>
                    
                    <div class="egov-deth1">
                        <h2>The pageinit Event</h2>
                        <p>pageinit 이벤트는 Page가 시작되자마자 발생하는 이벤트로서 첫 초기화 작업 시 실행되며 함수 내부에 여러 이벤트를 적용하여 사용 할 수 있다.</p>
                        <div class="egov-deth2">
                            <ul class="link">
                                <li>$(document).bind("pageinit", function(){</li>
                                <li class="egov-txtIn1">//apply overrides here</li>
                                <li>});</li>
                            </ul>
                        </div>
                        <p> 이 이벤트는 실행 즉시 발생 하므로 jquerymoible.js가 로드 되기 전에 바이딩 되어야 한다.
						다시 말해 pageinit 이벤트의 위치는 jquery 라이브러리와 jquerymobile 라이브러리 사이에 위치 해야한다.</p>
                        <div class="egov-deth2">
                            <ul class="link">
                                <li>&lt;script src="jquery.js"&gt;&lt;/script&gt;</li>
                                <li><strong>&lt;script src="custom-scripting.js"&gt;&lt;/script&gt;</strong></li>
                                <li>&lt;script src="jquery-mobile.js"&gt;&lt;/script&gt;</li>
                            </ul>
                        </div>
                        
                        <p>기본 환경설정을 변경하는 방법에는
                         $.extend 메소드를 이용하여 여러 속성을 한 번에 변경하거나
                        </p>
                        <div class="egov-deth2">
                            <ul class="link">
                                <li>$(document).bind("pageinit", function(){   $.extend(</li>
                                <li class="egov-txtIn1">$.mobile , {</li>
                                <li class="egov-txtIn2"><strong>foo: bar</strong></li>
                                <li class="egov-txtIn1">});</li>
                                <li>});</li>
                            </ul>
                        </div>
                        
                        <p> .mobile 객체를 사용하여 개별적으로 변경할 수도 있다.  </p>
                        <div class="egov-deth2">
                            <ul class="link">
                                <li>$(document).bind("pageinit", function(){ </li>
                                <li class="egov-txtIn1"><strong>$.mobile.foo = bar;</strong></li>
                                <li>});</li>
                            </ul>
                        </div>
                        
                    </div>
                    
                    <div class="egov-deth1">
                        <h2>Configurable Options</h2>
                        <p>다음의 기본 환경설정들은 $.mobile 객체를 통해 재설정이 가능하다 : </p>
                        
                       	<dl class="egov-deth3">
                            <dt>ns (string, default: ""):</dt>
                            <dd>namespace는 data-role과 같은 ‘data-*‘ 형식의 속성에 사용된다. 
                            namespace는 default인 빈 문자열(blank string) 부터 사용자 지정의 어떤 값으로도 지정이 가능하다. 
                            namespace를 명확하게 사용하려면 중간에 ‘-‘(trailing dash)를 추가하는 것이 좋다.
                           	<br><br>
                          	<strong>NOTE:</strong> ‘data-*‘ 형식의 namespace를 사용할 때는 테마 CSS 파일의 선택자(selector)를 
                           	아래와 같이 개별적으로 Update/Override 해야 한다</dd>
                            <dd class="egov-deth2">
                                <ul class="link">
                                    <li>.ui-mobile [data-
                                        <strong>mynamespace-</strong>
                                        role=page], .ui-mobile [data-
                                        <strong>mynamespace-</strong>
                                        role=dialog], .ui-page { ... </li>
                                </ul>
                            </dd>
                           </dl>
     
                       	<dl class="egov-deth3">
                            <dt>autoInitializePage (boolean, default: true):</dt>
                            <dd>DOM이 실행될 때 $.mobile.initializePage를 호출하여 자동 초기화를 진행하는데 
                            	     autoInitializePage를 false로 선언 할 경우 는  자동 페이지 초기화를 하지 않는다.
                            </dd>
                           </dl>
                                                   
                        <dl class="egov-deth3">
                            <dt>subPageUrlKey (string, default: "ui-page"):</dt>
                            <dd>URL parameter는 Nested List 처럼 위젯에 의해서 생성되는 하위 페이지(subpage) 참조를 위해 사용되며 
                            ‘example.html&amp;ui-page=subpageIdentifier’ 형식으로 변경된다. 
                            ’&amp;ui-page=’ 앞의 hash segment 는 프레임워크에서 하위 페이지가 존재하는 URL에 대한 Ajax 요청을 만들기 위해 사용된다.</dd>
                            
                            
                            <dt>activePageClass (string, default: "ui-page-active"):</dt>
                            <dd>현재 보여지고 있거나 트랜지션(transition) 중인 페이지에 할당되는 클래스이다.</dd>
                            
                            <dt>activeBtnClass (string, default: "ui-page-active"):</dt>
                            <dd>현재 활성화 되어있는 버튼에 할당되는 클래스이다.</dd>
							
                            <dt>ajaxEnabled (boolean, default: true):</dt>
                            <dd>모든 링크 이동이나 폼 전송은 기본적으로 Ajax를 기반으로 하고 있다 Ajax가 아니라 일반 방식으로 페이지 이동을 처리하고 싶다면 이 값을 false로 지정한다.</dd>							
                            
                            <dt>allowCrossDomainPages (boolean, default: false):</dt>
                            <dd>외부 페이지를 불러올 때 다른 도메인에서 자바스크립트로 접근하려 했을 때에 이를 허용하는 것을 뜻하며, 이는 보안 정책상 문제가 될 수 있으므로 false로 지정되어 있다. </dd>
                            
                            <dt>gradeA (function that returns a boolean, default: a function returning the value of $.support.mediaquery):</dt>
                            <dd>브라우저의 버전을 검사하여 현재 브라우저에서 미디어 쿼리를 사용할 수 있는지의 여부를 리턴해준다.( $.support.mediaquery 값을 return )</dd>
                            
                            <dt>hashListeningEnabled (boolean, default: true):</dt>
                            <dd>history의 변경을 자동적으로 처리 한다. 
                            hashListeningEnabled 옵션을 ‘disabled’ 로 설정하면 history의 변경을 자동으로 처리하지 않게 된다.</dd>
                            
                            <dt>ignoreContentEnabled (boolean, default: false):</dt>
                            <dd>Framework에 의해 향상 가능한 사용자의 모든 요소들에 대해 각각 data-enhance=false 인 부모 노드를 확인하여 향상 여부를 결정한다. <br><strong>경고</strong> : 이 속성을 true로 설정할 경우에는 성능의 저하를 초래할 수 있다. </dd>
                            
                            <dt>linkBindingEnabled (boolean, default: true):</dt>
                            <dd>링크로 동작하는 a 태그가 있으면 jquerymobile에서 자동으로 click 이벤트를 생성해 줄 것인지에 대한 설정.
							이 값을 false로 설정하면 클릭 관리를 하지 못하므로 다른 라이브러리에서 클릭 관리를 하지 않거나, 사용자가 직접 제어하지 않는 한 이 설정의 값을 변경하지 않는 것이 좋다.</dd>
                            
                            <dt>defaultPageTransition (string, default: 'fade'):</dt>
                            <dd>Ajax 방식을 사용하는 페이지 전환에 관여하는 기본 환경설정을 변경한다. 
                            defaultPageTransition 옵션을 ‘none’으로 설정하면 화면전환 효과가 적용되지 않는다.</dd>

                            <dt>touchOverflowEnabled (boolean, default: false):</dt>
                            <dd>디바이스의 스크롤 및 fixed toolbar 기능을 사용하기 위하여  overflow-scrolling: touch 지원하는 여부를 설정한다.</dd> 
                            
                            <dt>buttonMarkup.hoverDelay (integer, default: 200):</dt>
                            <dd>프레임워크를 통해 버튼에 대한 터치 디바이스의 지연 속도를 설정한다. 지연을 줄이면 UI속도가 빨라진 것 같은 느낌을 주지만, 페이지 스크롤의 경우에는 좋지 않은 성능을 낸다. </dd>
                             
                            <dt>defaultDialogTransition (string, default: 'pop'):</dt>
                            <dd>다이얼로그에서 Ajax 방식을 통한 페이지 전환에 관여하는 기본 환경설정을 변경한다. 
                            defaultDialogTransition 옵션을 ‘none’으로 설정하면 화면전환 효과가 적용되지 않는다.</dd>
                            
                            <dt>minScrollBack (string, default: 250):</dt>
                            <dd>스크롤을 시작하는 최소거리를 설정한다.</dd>
                            
                            <dt>pushStateEnabled (boolean, default: true):</dt>
                            <dd>history.replaceState를 지원하는 브라우저에서의 강화된 기능으로서 hash-based Ajax URL 전체 경로를 변환한다. Ajax가 비활성화되거나, 많은 외부링크를 사용하는 경우에는 이 기능을 비활성화하는 것을 권장한다.</dd>
                            
                        </dl>

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