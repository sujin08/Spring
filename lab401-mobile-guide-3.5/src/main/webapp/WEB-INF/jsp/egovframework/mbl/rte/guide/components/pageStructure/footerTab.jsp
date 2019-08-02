<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Class Name : footerTab.jsp
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
			
            <!-- content-primary start -->
            <div data-role="content" data-theme="d">
            
                <div class="content-primary">
                    <div class="egov-tit">
                        <h1>Footer bar</h1>
                        <p>Footer bar는 브라우저 하단에 위치하며 버튼, 텝,  링크 등 컴포넌트 요소 등을 넣을 수 있다.</p>
                    </div>
                    
                    <div class="egov-deth1">
                        <h2>기본코드</h2>
                        <p>Footer bar는 기본적으로 검정색으로 나타나며 Footer bar의 높이는 Title 크기에 따라 달라진다.</p>
                        <div class="egov-deth2">
                            <div  data-role="footer" > 
                                    <h1>Footer title</h1> 
                                </div>
                            <ul class="link">
                                <li>&lt;div data-role="footer"&gt; </li>
                                <li class="egov-txtIn1">&lt;h1&gt;Footer title&lt;/h1&gt;</li> 
                                <li>&lt;/div&gt;</li>   
                            </ul>
                        </div>
                    </div>
                    
                    <div class="egov-deth1">
                        <h2>색상 변경</h2>
                        <p>기본 코드 &lt;data-role="footer"&gt; Tag에 <strong>data-theme='[적용테마: a~g]"</strong>을 추가한다.
                               색상 유형은 <a href="<c:url value="/guide/components/pageStructure/header.do"/>" data-ajax="false">Header bar의 색상변경</a>을 참고한다.</p>
                        <div class="egov-deth2">
                                <div data-role="footer" data-theme="b">
                                <h1>data-theme="b"</h1>
                                </div>
                            <ul class="link">
                                <li>&lt;div data-role="footer" data-theme="b"&gt;</li> 
                                <li class="egov-txtIn1">&lt;h1&gt;data-theme="b"&lt;/h1&gt;</li> 
                                <li>&lt;/div&gt;</li>
                            </ul>
                        </div>
                    </div>
                                                    
                                                    
                    <div class="egov-deth1">
                        <h2>버튼 추가</h2>
                                <p>Footer bar에 Anchor 링크를 추가하면 자동으로 버튼이 생성된다.
                                버튼은 여러개 생성 할수 있으며 버튼은 자동으로 오른쪽 정렬 된다.
                                버튼에 모양은 <a href ="<c:url value="/guide/components/icon/icon.do"/>" data-ajax="false">UX Component ICon </a>부분을 참조 한다.</p>
                        <div class="egov-deth2">
                                <div data-role="footer">
                                    <a href="index.html" data-role="button" data-icon="delete">Remove</a>
                                    <a href="index.html" data-role="button" data-icon="plus">Add</a>
                                    <a href="index.html" data-role="button" data-icon="arrow-u">Up</a>
                                    <a href="index.html" data-role="button" data-icon="arrow-d">Down</a>
                                </div>
                            <ul class="link">
                                    <li>&lt;div data-role="footer"&gt;</li>
                                    <li class="egov-txtIn1">&lt;a href="index.html" data-role="button" data-icon="delete"&gt;Remove&lt;/a&gt;</li>
                                    <li class="egov-txtIn1">&lt;a href="index.html" data-role="button" data-icon="plus"&gt;Add&lt;/a&gt;</li>
                                    <li class="egov-txtIn1">&lt;a href="index.html" data-role="button" data-icon="arrow-u"&gt;Up&lt;/a&gt;</li>
                                    <li class="egov-txtIn1">&lt;a href="index.html" data-role="button" data-icon="arrow-d"&gt;Down&lt;/a&gt;</li>
                                    <li>&lt;/div&gt;</li>
                            </ul>
                        </div>
                        <dl class="egov-deth3">
                            <dt>버튼 정렬</dt>
                            <dd>Footer bar에서 버튼을 그룹화 할때는 Footer에 &lt;div data-role="controlgroup" data-type="horizontal"&gt;
                                  로 버튼을 감싸준다</dd>
                        </dl>
                        
                        <div class="egov-deth2">
                            <div data-role="footer">
                              <div data-role="controlgroup" data-type="horizontal">
                                <a href="index.html" data-role="button" data-icon="delete">Remove</a>
                                <a href="index.html" data-role="button" data-icon="plus">Add</a>
                                <a href="index.html" data-role="button" data-icon="arrow-u">Up</a>
                                <a href="index.html" data-role="button" data-icon="arrow-d">Down</a>
                                </div>
                            </div>
                            <ul class="link">
                                 <li>&lt;div data-role="footer"&gt;</li>
                                 <li class="egov-txtIn1">&lt;div data-role="controlgroup" data-type="horizontal"&gt;</li>
                                 <li class="egov-txtIn2">&lt;a href="index.html" data-role="button" data-icon="delete"&gt;Remove&lt;/a&gt;</li>
                                 <li class="egov-txtIn2">&lt;a href="index.html" data-role="button" data-icon="plus"&gt;Add&lt;/a&gt;</li>
                                 <li class="egov-txtIn2">&lt;a href="index.html" data-role="button" data-icon="arrow-u"&gt;Up&lt;/a&gt;</li>
                                 <li class="egov-txtIn2">&lt;a href="index.html" data-role="button" data-icon="arrow-d"&gt;Down&lt;/a&gt;</li>
                                 <li class="egov-txtIn1">&lt;/div&gt;</li>
                                 <li>&lt;/div&gt;</li>
                            </ul>
                        </div>
                    </div>

                    <div class="egov-deth1">
                        <h2>컴포넌트 추가</h2>
                        <p>Footer bar에는 UX 컴포넌트를 추가 하여 화면 전환 및 조정을 용이하게 할 수 있다.</p>
                        <dl class="egov-deth3">
                            <dt>Tab 컴포넌트</dt>
                            <dd> Footer bar의 위치에<a href="<c:url value="/guide/components/tabs/tabs.do"/>" data-ajax="false">Tab 컴포넌트</a>를 넣어 화면간 이동을 용이하게 할 수 있다.
                                    <a href="<c:url value="/guide/components/pageStructure/footerTab.do"/>" data-ajax="false">Footer Tab 예시 보기</a></dd>
                        </dl>
                        <div class="egov-deth2">    
                            <ul class="link">
                                 <li>&lt;div data-role="footer" data-theme="z" data-position="fixed"&gt;</li>
                                 <li class="egov-txtIn1">&lt;div data-role="navbar"&gt;</li>
                                 <li class="egov-txtIn2">&lt;ul&gt;</li>
                                 <li class="egov-txtIn3">&lt;li&gt;&lt;a href="exHome.jsp"&gt;Home&lt;/a&gt;&lt;/li&gt;</li>
                                 <li class="egov-txtIn3">&lt;li&gt;&lt;a href="header.jsp"&gt;Header bar &lt;/a&gt;&lt;/li&gt;</li>
                                 <li class="egov-txtIn3">&lt;li&gt;&lt;a href="footer.jsp"&gt;Footer bar&lt;/a&gt;&lt;/li&gt;</li>
                                 <li class="egov-txtIn2">&lt;/ul&gt;</li>
                                 <li class="egov-txtIn1">&lt;/div&gt;<!-- /navbar --></li>
                                 <li>&lt;/div&gt;</li>
                            </ul>
                        </div>
                        <dl class="egov-deth3" >
                            <dt>기타 컴포넌트</dt>
                            <dd>Footer bar에 다른 컴포넌트를 넣을 수 있다.</dd>
                        </dl>
                        <div class="egov-deth2">        
                            <div data-role="footer" data-position="inline">
                                <label for="select-choice-1">선택하시오:</label>
                                <select name="select-choice-1" id="select-choice-1" data-theme="a">
                                    <option value="apple">사과</option>
                                    <option value="banana">바나나</option>
                                    <option value="grapes">포도</option>
                                    <option value="onion">양파</option>
                                </select>
                            </div>                      
                            <ul class="link">
                                     <li>&lt;div data-role="footer" class="ui-bar" data-position="inline"&gt;</li>
                                     <li class="egov-txtIn1">&lt;label for="select-choice-1"&gt;Shipping:&lt;/label&gt;</li>
                                     <li class="egov-txtIn1">&lt;select name="select-choice-1" id="select-choice-1" data-theme="a"&gt;</li>
                                     <li class="egov-txtIn2">&lt;option value="apple"&gt;사과&lt;/option&gt;</li>
                                     <li class="egov-txtIn2">&lt;option value="banana"&gt;바나나&lt;/option&gt;</li>
                                     <li class="egov-txtIn2">&lt;option value="grapes"&gt;포도&lt;/option&gt;</li>
                                     <li class="egov-txtIn2">&lt;option value="onion"&gt;양파&lt;/option&gt;</li>
                                     <li class="egov-txtIn1">&lt;/select&gt;</li>
                                     <li>&lt;/div&gt;</li>
                            </ul>
                        </div>
                    </div>

                    <div class="egov-deth1">
                        <h2>위치 선정</h2>
                        <dl class="egov-deth3">
                            <dt>고정 위치</dt>
                            <dd> footer bar의 위치를 브라우저 맨 위/ 끝으로 고정된다.
                                    스크롤 이벤트가 일어날 경우 Footer bar는 항상 브라우저의 맨 위와/끝에 나타난다.
                                    Header bar의  &lt;div data-role="footer"&gt;에 <strong> data-position="fixed"</strong>를 추가 한다
                                    <a href="<c:url value="/guide/components/pageStructure/fixedposition.do"/>"  data-ajax="false">fixed position 예시 보기</a></dd>
                        </dl>
                        <div class="egov-deth2">
                            <ul class="link">
                                <li>&lt;div data-role="footer" data-position="fixed"&gt;</li> 
                                <li class="egov-txtIn1">&lt;h1&gt;header title&lt;/h1&gt;</li> 
                                <li>&lt;/div&gt;</li>
                            </ul>
                        </div>
                        <dl class="egov-deth3" >
                            <dt>전체 화면 모드</dt>
                            <dd>Header/footer bar의 위치를 브라우저 맨 위/ 끝으로 고정하거나 없앨 수 있다.
                            이벤트가 일어날 경우 Header/footer bar가 나타나거나 없어진다.
                            자세한 내용은 <a href="<c:url value="/guide/components/pageStructure/header.do" />"  data-ajax="false">header bar</a>의 전체 화면 모드를 참고 한다.</dd>
                        </dl>
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
				<div data-role="navbar">
				<ul>
					<li><a href="<c:url value="/guide/guide.do"/>" data-ajax="false">Home</a></li>
					<li><a href="<c:url value="/guide/components/pageStructure/header.do"/>" data-ajax="false">Header bar </a></li>
					<li><a href="<c:url value="/guide/components/pageStructure/footer.do"/>" data-ajax="false">Footer bar</a></li>
				</ul>
			</div><!-- /navbar -->
			</div>
			<!-- footer end --> 
			
		</div>
		<!-- page end -->
	
    </body>

</html>