<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Class Name : page.jsp
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
                        <h1>모바일 Page</h1>
                        <p>모바일 Page는 브라우저의 한 화면을 뜻하는 것으로 Header/Footer bar, Content의 UX 컴포넌트 등 이 조합되어 만들어지며 
                       	    링크를 통한 페이지 전환이 가능하다.</p>
                    </div>
                   
                    <div class="egov-deth1">
                        <h2>기본코드</h2>
                        <p>모바일 Page는 HTML5, 및 CSS3를 기반으로 하고 있으며 문서의 시작은 HTML5의 <strong>&lt;!DOCTYPE html&gt;</strong> 로 
                        	시작하고 &lt;head&gt; 부분에 아래와 같이 선언 한다.</p>
                        <div class="egov-deth2">
                            <ul class="link">
                                <li>&lt;!DOCTYPE html&gt;</li>
                                <li>&lt;html&gt;</li>
                                <li class="egov-txtIn1">&lt;head&gt;</li>
                                <li class="egov-txtIn2">&lt;title&gt;eGovFrame&lt;/title&gt;</li>
                                <li class="egov-txtIn2"><strong>&lt;meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" /&gt;</strong></li>
                                <li class="egov-txtIn2"><strong>&lt;link rel="stylesheet" href="/css/egovframework/mbl/cmm/jquery.mobile-1.4.5.css"/&gt;</strong></li>
                                <li class="egov-txtIn2"><strong>&lt;link rel="stylesheet" href="/css/egovframework/mbl/cmm/EgovMobile-1.4.5.css" /&gt;</strong></li>
                                <li class="egov-txtIn2"><strong>&lt;script src="/js/egovframework/mbl/cmm/jquery-1.11.2.min.js"&gt;&lt;/script&gt;</strong></li>
                                <li class="egov-txtIn2"><strong>&lt;script src="/js/egovframework/mbl/cmm/jquery.mobile-1.4.5.js"&gt;&lt;/script&gt;</strong></li>
                                <li class="egov-txtIn2"><strong>&lt;script src="/js/egovframework/mbl/cmm/EgovMobile-1.4.5.js"&gt;&lt;/script&gt;</strong></li>
                                <li class="egov-txtIn1">&lt;/head&gt;</li>
                                <li class="egov-txtIn1">&lt;body&gt;</li>
                                <li class="egov-txtIn2">...</li>
                                <li class="egov-txtIn1">&lt;/body&gt;</li>
                                <li>&lt;/html&gt;</li>
                            </ul>
                        </div>
                    </div>
                    
                    <div class="egov-deth1">
                        <h2>구성 요소</h2>
                        <p>모바일 Page 의 구성요소는 HTML5의 <strong>data-*</strong> 속성을 사용하여 &lt;body&gt;안에 <a href="<c:url value="/guide/components/pageStructure/header.do"/>" data-ajax="false">header</a>, 
                            content, <a href="<c:url value="/guide/components/pageStructure/footer.do"/>" data-ajax="false">footer</a>를 사용하여 구성한다.
                        </p>
                        <div class="egov-deth2">
                            <ul class="link">
                                <li>&lt;body&gt;</li> 
                                <li class="egov-txtIn1">&lt;!-- 모바일 페이지 start --&gt;</li>
                                <li class="egov-txtIn1">&lt;div <strong>data-role="page"</strong>&gt;</li>
                                <li><br></li>
                                <li class="egov-txtIn2">&lt;!-- header start --&gt;</li>
                                <li class="egov-txtIn2">&lt;div <strong>data-role="header"</strong>&gt;</li>
                                <li class="egov-txtIn3">&lt;h1&gt;header Title&lt;/h1&gt;</li>
                                <li class="egov-txtIn2">&lt;/div&gt;</li>
                                <li class="egov-txtIn2">&lt;!-- header end --&gt;</li>
                                <li><br></li>
                                <li class="egov-txtIn2">&lt;!-- content start --&gt;</li>
                                <li class="egov-txtIn2">&lt;div <strong>data-role="content"</strong>&gt;</li>   
                                <li class="egov-txtIn3">&lt;p&gt;전자정부 모바일 표준프레임워크 default Page 화면 입니다.&lt;/p&gt;</li> 
                                <li class="egov-txtIn2">&lt;/div&gt;</li>
                                <li class="egov-txtIn2">&lt;!-- content end --&gt;</li>
                                <li><br></li>
                                <li class="egov-txtIn2">&lt;!-- footer start --&gt;</li>
                                <li class="egov-txtIn2">&lt;div <strong>data-role="footer"</strong>&gt;</li>
                                <li class="egov-txtIn3">&lt;h4&gt;footer title&lt;/h4&gt;</li>
                                <li class="egov-txtIn2">&lt;/div&gt;</li>
                                <li class="egov-txtIn2">&lt;!-- footer end --&gt;</li>
                                <li><br></li>
                                <li class="egov-txtIn1">&lt;/div&gt;</li>
                                <li class="egov-txtIn1">&lt;!-- 모바일 페이지 end --&gt;</li>
                                <li>&lt;/body&gt;</li>
                            </ul>
                        </div>
                    </div>
                    
                    <div class="egov-deth1">
                        <h2>페이지 Title</h2>
                        <p>페이지 전환 시 Ajax를 기반으로 통신하게 되면 data-role="page" 내의 content만  불러온다.그래서 기본 웹에서 제공하는 
                        &lt;title&gt;을 변경 할수 없는데 &lt;data-role="page"&gt; Tag 내에<strong>data-title="[title]"</strong>속성을 지정하면 활성화된 page의 title을  지정할 수 있다.
                        </p>
                        <div class="egov-deth2">
                            <ul class="link">
                                <li>&lt;div data-role="page" id="foo" data-title="Page Foo"&gt;</li> 
                                <li>&lt;div</li>
                            </ul>
                        </div>
                    </div>                    

                    <div class="egov-deth1">
                        <h2>페이지 로딩</h2>
                       	<p>모바일 전자정부 표준 프레임워크는 페이지 내부 링크 보다는 <strong>도메인 내부 링크</strong>를 권장한다. </p>
                       
                        <dl class="egov-deth3">
                            <dt>Prefetch 페이지</dt>
                            <dd>도메인 내부링크를 사용하게 되면 내부 링크 보다는 빠른 화면 전환 및 데이터 로딩을  할수 없기때문에 <strong>data-prefetch</strong>
                            을 선언한다. 연결하는 도메인 내부 링크에 <strong>data-prefetch</strong>를 선언하면 기본 페이지를 로딩, data-prefetch가 선언된 페이지를 읽기 위해 
                             pagecreate 이벤트가 발생 한다.그 후 백그라운드로 대상 페이지를 로드한다. 연결 전 페이지를 미리 로드해 놓기 때문에 빠른 화면 전환이 가능하다.
                            </dd>
                        </dl>
                                                
                        <div class="egov-deth2">
                            <ul class="link">
                                <li>&lt;a href="/guide/components/pageStructure/page.do" data-prefetch&gt; ... &lt;/a&gt;</li>
                            </ul>
                        </div> 

                        <dl class="egov-deth3">
                            <dt>Caching 페이지</dt>
                            <dd>모바일 전자정부 페이지는 기본적으로 페이지 전환이 되면 이전 페이지의 DOM은 삭제한다. 그러나 이전 페이지의 DOM을 
                             		삭제하고 싶지 않다면 domCache에 저장되도록 한다. 하지만 저장되는 DOM의 크기가 클 경우 화면 전환 문제 및 메모리 이슈가 있을 수 있기 때문에
                             		필요한 경우에만 사용하도록 권장한다. 
                            </dd>
                        </dl>

                        <div class="egov-deth2">
                            <ul class="link">
                                <li><strong>&lt; pageinit에 선언 할 경우&gt;</strong></li>
                                <li>$.mobile.page.prototype.options.domCache = true;</li>
                            </ul>
                         </div>
                         <div class="egov-deth2">
                            <ul class="link">
                                <li><strong>&lt;페이지 에 선언 할 경우 &gt;</strong></li>
                                <li >&lt;div data-role="page" id="cacheMe" data-dom-cache="true" &gt;</li>                   
                            </ul>                            
                        </div>     
   
                    </div>

                    <div class="egov-deth1">
                        <h2>Ajax를 통한 Hash URL 제어</h2>
                       	<p>Ajax 통신 방식을 할 경우 hash url이 나타나는 것을 설정을 통하여 제어 할 수 있다. hash url이 필요할 때는
                       		<strong>$.mobile.pushStateEnabled=true</strong> hash url이 필요 없다면 <strong>$.mobile.pushStateEnabled=false</strong>을 선언한다.<br>
                       		 
                       		 &nbsp; *- default는 $.mobile.pushStateEnabled=true
                        </p>
                                                
                        <div class="egov-deth2">
                            <ul class="link">
                                <li><strong>&lt; pageinit에 선언&gt;</strong></li>
                                <li>$.mobile.pushStateEnabled=true;</li>
                            </ul>
                        </div> 
   
                    </div>
                    
                    <div class="egov-deth1">
                        <h2>페이지 이동</h2>
                       	<p> 모바일 페이지 이동은 기본적으로 Ajax 를 이용하여 처리 된다. 
                        이는 모바일에 최적화된 화면 전환 효과를 주기 위함으로 옵션 설정을 통해 변경 가능하다.</p>
                       
                        
                        <dl class="egov-deth3">
                            <dt>페이지 내부 이동</dt>
                            <dd>한 HTML 안에 여러 page 가 선언 되어 있을 경우 사용 할 수 있는 방법으로 모바일 page 구성의 기본 방식이다.
                            페이지 내부 이동은 Ajax 통신을 사용하며 page 로 선언된 div 태그의 id 값을 링크(#pageId)에 적용하여 사용 가능하다.<br>   
                            * 한 HTML 내에 여러 page가 선언 되어 있을 경우 제일 상단의 page를 첫 화면으로 인식 한다.
                            </dd>
                        </dl>
                                                
                        <div class="egov-deth2">
                            <ul class="link">
                                <li>&lt;!-- main page --&gt;</li>
                                <li>&lt;div <strong>id="main" data-role="page"</strong>&gt;</li>
                                <li class="egov-txtIn1">&lt;a href="<strong>#view"</strong> data-role="button"&gt;글쓰기&lt;/a&gt;</li>
                                <li>&lt;p&gt;Main Page 입니다.&lt;/p&gt;&lt;/div&gt;</li>                               
                                <li>&lt;!-- view page --&gt;</li>
                                <li>&lt;div <strong>id="view" data-role="page"</strong>&gt;</li>
                                <li class="egov-txtIn1">&lt;p&gt;상세보기 페이지&lt;/p&gt;</li>
                                <li>&lt;/div&gt;</li>
                            </ul>
                        </div> 

                        
                        <dl class="egov-deth3">
                            <dt>페이지 외부 이동</dt>
                            <dd>페이지 외부 이동은 Ajax 통신을 이용하며 Ajax 로 호출한 html 의 data-role="page" 영역만 읽어 들여서 호출한 html 페이지의 DOM 요소에 추가 해 준다.(페이지 내부 이동과 유사 한 구조로 DOM 관리)<br>
                                * Ajax 로 호출된 HTML의 page 영역만 가져 오기 때문에 호출된 페이지에서 사용하는 Javascript, CSS 등은 호출을 한 HTML내에 존재 해야 한다.<br>
                                * Ajax 통신을 사용하고 싶지 않은 경우 <a href="<c:url value="/guide/components/link/link.do"/>"  data-ajax="false">Link</a>를 참조하여 변경 가능하다.
                            </dd>
                        </dl>

                        <div class="egov-deth2">
                            <ul class="link">                            
                                <li><strong>main.html</strong></li>
                                <li>&lt;div id="main" data-role="page"&gt;</li>
                                <li class="egov-txtIn1">&lt;a href="create.html" data-role="button"&gt;글쓰기&lt;/a&gt;</li>
                                <li>&lt;p&gt;Main Page 입니다.&lt;/p&gt;&lt;/div&gt;</li>
                                <li>...</li>                            
                            </ul>
                            
                            <ul class="link">                            
                                <li><strong>create.html</strong></li>
                                <li>&lt;div id="create" data-role="page"&gt;</li>
                                <li class="egov-txtIn1">&lt;p&gt;글쓰기 페이지&lt;/p&gt;</li>
                                <li>&lt;/div&gt;</li>
                                <li>...</li>                            
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