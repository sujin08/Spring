<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Class Name : fixedposition.jsp
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
            <div data-role="header"  data-theme="z" class="egovBarHeader" data-position="fixed">
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
                        <h1>Header bar</h1>
                        <p>Header bar는 일반적으로 페이지간 이동을 위하여 브라우저 상단에 위치하며 좌우에 버튼 및 헤더제목틀 넣을 수 있다.</p>
                    </div>
                    
                    <div class="egov-deth1">
                        <h2>기본코드</h2>
                        <p>Header bar는 기본적으로 검정색으로 나타나며 Header bar의 높이는 Title 크기에 따라 달라진다.</p>
                        <div class="egov-deth2">
                                <div  data-role="header"> 
                                    <h1>Header title</h1> 
                                </div>
                            <ul class="link">
                                <li> &lt;div data-role="header"&gt; </li>
                                <li class="egov-txtIn1">&lt;h1&gt;headertitle&lt;/h1&gt;</li> 
                                <li>&lt;/div&gt;</li>   
                            </ul>
                        </div>
                    </div>
                    
                    <div class="egov-deth1">
                        <h2>색상 변경</h2>
                        <p>기본 코드 &lt;data-role="header"&gt; Tag에 <strong>data-theme='[적용테마: a~g]"</strong>을 추가한다.</p>
                        <div class="egov-deth2">
                              <div  data-role="header" data-theme="a"> 
                                    <h1>data-theme="a"</h1> 
                                </div>
                              <div  data-role="header" data-theme="b"> 
                                    <h1>data-theme="b"</h1> 
                                </div>
                              <div  data-role="header" data-theme="c"> 
                                    <h1>data-theme="c"</h1> 
                              </div>
                              <div  data-role="header" data-theme="d"> 
                                    <h1>data-theme="d"</h1> 
                              </div>
                              <div  data-role="header" data-theme="e"> 
                                    <h1>data-theme="e"</h1> 
                              </div>
                              <div  data-role="header" data-theme="f"> 
                                    <h1>data-theme="f"</h1> 
                              </div>
                              <div  data-role="header" data-theme="g"> 
                                    <h1>data-theme="g"</h1> 
                              </div>
                            <ul class="link">
                                <li>&lt;div data-role="header" data-theme="e"&gt;</li> 
                                <li class="egov-txtIn1">&lt;h1&gt;data-theme="e"&lt;/h1&gt;</li> 
                                <li>&lt;/div&gt;</li>
                            </ul>
                        </div>
                    </div>                      
                    
                    <div class="egov-deth1">
                        <h2>버튼 추가</h2>
                        <p>Header bar 에 Anchor 링크를 추가하면 자동으로 버튼이 생성된다.
                             왼쪽부터 버튼이 나타나며 2개 이상의 버튼은 생성할수 없다.
                             기본형 &lt;data-role="header"&gt;  <strong>data-position="inline"</strong>을 넣어 버튼이 잘 정렬 되도록 한다.
                                버튼에 모양은 <a href="<c:url value="/guide/components/icon/icon.do"/>" data-ajax="false"> ICon </a>를 참조 한다.</p>
                        <div class="egov-deth2">
                                <div data-role="header" data-position="inline">
                                    <a href="#" data-icon="delete">Cancel</a>
                                    <h1>Add button in header bar</h1>
                                    <a href="#" data-icon="check" data-theme="b">Save</a>
                                </div>
                            <ul class="link">
                                     <li>&lt;div data-role="header" data-position="inline"&gt;</li>
                                     <li class="egov-txtIn1">&lt;a href="#" data-icon="delete"&gt;Cancel&lt;/a&gt;</li>
                                     <li class="egov-txtIn1">&lt;h1&gt;Add button in header bar&lt;/h1&gt;</li>
                                     <li class="egov-txtIn1">&lt;a href="#" data-icon="check" data-theme="b"&gt;Save&lt;/a&gt;</li>
                                     <li>&lt;/div&gt;</li>
                            </ul>
                        </div>
                        
                        <dl class="egov-deth3">
                            <dt>버튼 위치</dt>
                            <dd>Header bar에서 버튼의 위치를 지정 할 때는 버튼에 <strong>class="ui-btn-[right, left]"</strong>를 추가 한다.</dd>
                        </dl>
                        <div class="egov-deth2">
                            <div data-role="header" data-position="inline" >
                                <h1>class="ui-btn-right"</h1>
                                <a href="index.html" data-icon="gear" class="ui-btn-right">Options</a>
                            </div>
                            <ul class="link">
                                 <li>&lt;div data-role="header" data-position="inline" &gt;</li>
                                 <li class="egov-txtIn1">&lt;h1&gt;class="ui-btn-right"&lt;/h1&gt;</li>
                                 <li class="egov-txtIn1">&lt;a href="index.html" data-icon="gear" class="ui-btn-right"&gt;Options&lt;/a&gt;</li>
                                 <li>&lt;/div&gt;</li>
                            </ul>
                        </div>
                        <dl class="egov-deth3">
                            <dt>뒤로 가기</dt>
                            <dd>Header bar에 뒤로 가기 버튼을 생성하려면 <strong>data-rel="back"</strong>을 추가 한다.
                             </dd>
                        </dl>
                        <div class="egov-deth2">
                            <div  data-role="header"> 
                                <h1>Back</h1>
                                <a data-icon="arrow-l" data-rel="back">back </a>
                            </div>
                            <ul class="link">
                                <li>&lt;a href="#" data-icon="arrow-l" data-rel="back"&gt;back&lt;/a&gt;</li>
                            </ul>
                        </div>
                        
                        <dl class="egov-deth3">
                            <dd><strong>data-rel="back"</strong>은 브라우져 지원 요소에 따라 다르게 동작 할 수도 있어 
                                     이전 화면의 링크를 걸어 준 후 <strong>data-direction="reverse"</strong>를 선언 하면 뒤로 가는 화면 전환 효과와 함께
                                      링크가  정확하게 동작 된다.</dd>
                        </dl>

                        <div class="egov-deth2">
                            <div  data-role="header"> 
                                <h1>Back</h1>
                                <a href="<c:url value="/guide/guide.do"/>" data-icon="arrow-l" data-direction="reverse" >back</a>
                            </div>
                            <ul class="link">
                                <li>&lt;a href="/guide/guide.do" data-icon="arrow-l" data-direction="reverse" &gt;back&lt;/a&gt;</li>
                            </ul>
                        </div>                      
                    </div>

                    <div class="egov-deth1">
                        <h2>위치 선정</h2>
                        <dl class="egov-deth3">
                            <dt>고정 위치</dt>
                            <dd> Header bar의 위치를 브라우저 맨 위/ 끝으로 고정된다.
                                스크롤 이벤트가 일어날 경우 Header/footer bar는 항상 브라우저의 맨 위와/끝에 나타난다.
                                Header bar의  &lt;div data-role="Header"&gt;에 <strong> data-position="fixed"</strong>를 추가 한다
                                <a href="<c:url value="/guide/components/pageStructure/fixedposition.do"/>" data-ajax="false">fixed position 예시 보기</a></dd>
                        </dl>
                        <div class="egov-deth2">
                            <ul class="link">
                                <li> &lt;div data-role="Header" data-position="fixed"&gt;</li> 
                                <li class="egov-txtIn1"> &lt;h1&gt;header title&lt;/h1&gt;</li> 
                                <li> &lt;/div&gt;</li>
                            </ul>
                        </div>
                        
                        <dl class="egov-deth3" >
                            <dt>전체 화면 모드</dt>
                            <dd>Header/footer bar의 위치를 브라우저 맨 위/ 끝으로 고정하거나 없앨 수 있다.
                            이벤트가 일어날 경우 Header/footer bar가 나타나거나 없어진다.
                               Header/footer bar의 fixed position과 같은 형태에서 &lt;div data-role="page"&gt; Tag에 <strong>data-fullscreen="true"</strong>을 추가 한다.
                               <a href="<c:url value="/guide/components/pageStructure/fullscreenPosition.do" />" data-ajax="false">fullscreen position 예시 보기</a></dd>
                        </dl>
                        <div class="egov-deth2">
                            <ul class="link">
                                <li>&lt;div data-role="page" data-fullscreen="true"&gt;</li>
                                <li class="egov-txtIn1">&lt;div data-role="header" data-position="fixed"&gt;</li> 
                                <li class="egov-txtIn2">&lt;h1&gt;header title&lt;/h1&gt;</li> 
                                <li class="egov-txtIn1">&lt;/div&gt;</li>
                                <li class="egov-txtIn1">...</li>
                                <li class="egov-txtIn1">&lt;div data-role="footer" data-position="fixed"&gt;</li> 
                                <li class="egov-txtIn2">&lt;h1&gt;Footer title&lt;/h1&gt;</li> 
                                <li class="egov-txtIn1">&lt;/div&gt;</li>
                                <li>&lt;/div&gt;</li>
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
			<div data-role="footer" data-theme="z" data-position="fixed"  class="egovBar">
				 <h4 class="main">Copyright(c)2012 Ministry of Government Administration and Home Affairs.</h4>
			</div>
			<!-- footer end --> 
			
		</div>
		<!-- page end -->
	
    </body>

</html>