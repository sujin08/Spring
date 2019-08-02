<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Class Name : tabs.jsp
  Description :  UX Tabs component
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
        <title>UX Component - Tab</title> 
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
                
        <style type="text/css">
			.ui-navbar {
			    max-width: 99.5%;
			}       
        </style>
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
                        <h1>Tabs</h1>
                        <p>
                          	탭은 버튼이 수평으로 나열된 형태로 모바일 환경에 최적화된 내비게이션 UI를 제공한다.  
                          	Navbar(Tab)는 Header와 Footer 영역에 사용 되며 
                            1~5개 까지 배치 할 수 있고 옵션을 통해 icon 표시가 가능 하다.                   
                        </p>
                    </div>
                    
                    <div class="egov-deth1">
                        <h2>기본코드</h2>
                        <p>
                            <strong>data-role="navbar"</strong> 를 이용하여 내비게이션 기능을 사용하며 
                            <strong>ui-btn-active</strong> 클래스 값으로 활성화된 탭을 나타낼 수 있다. 
                        </p>
                        <div class="egov-deth2">         
                        
                            <div data-role="header" data-theme="b">   
                                <h1>eGovFrame</h1>                
							    <div data-role="navbar">
	                                <ul>
	                                    <li><a href="#" class="ui-btn-active">One</a></li>
	                                    <li><a href="#">Two</a></li>
	                                    <li><a href="#">Three</a></li>
	                                </ul>
							    </div>      
						    </div>
                                            
                            <ul class="link">
                                <li>&lt;div data-role="header" data-theme="b"&gt;</li>
                                <li class="egov-txtIn1">&lt;h1&gt;eGovFrame&lt;/h1&gt;</li>
								<li class="egov-txtIn1">&lt;div data-role="navbar"&gt;</li>
								<li class="egov-txtIn2">&lt;ul&gt;</li>
								<li class="egov-txtIn3">&lt;li&gt;&lt;a href="#" class="ui-btn-active"&gt;One&lt;/a&gt;&lt;/li&gt;</li>
								<li class="egov-txtIn3">&lt;li&gt;&lt;a href="#"&gt;Two&lt;/a&gt;&lt;/li&gt;</li>
								<li class="egov-txtIn3">&lt;li&gt;&lt;a href="#"&gt;Three&lt;/a&gt;&lt;/li&gt;</li>
								<li class="egov-txtIn2">&lt;/ul&gt;</li>
								<li class="egov-txtIn1">&lt;/div&gt;</li>    
								<li>&lt;div&gt;</li>              
                            </ul>
                        </div>
                        
                        <h2>navbar 배치</h2>
                        
                        <p>
                            <strong>&lt;li&gt;</strong> Tag를 사용하여(1~5개) Navbar 의 배치를 설정 할 수 있다.
                            Navbar 항목에 <strong>&lt;li&gt;</strong> Tag를 1개 사용할 경우 브라우져 화면의 100% 너비를 사용한다.
                        </p>                        
                        <div class="egov-deth2">
                        
                            <div data-role="header" data-theme="b">   
                                <h1>eGovFrame</h1>                           
								<div data-role="navbar">
								    <ul>
								        <li><a href="#" class="ui-btn-active">One</a></li>
								    </ul>
								</div>
							</div>
							
							<ul class="link">
								<li>&lt;div data-role="navbar"&gt;</li>
								<li class="egov-txtIn1">&lt;ul&gt;</li>
								<li class="egov-txtIn2">&lt;li&gt;&lt;a href="#" class="ui-btn-active"&gt;One&lt;/a&gt;&lt;/li&gt;</li>
								<li class="egov-txtIn1">&lt;/ul&gt;</li>
								<li>&lt;/div&gt;</li>							
							</ul>
							                  
                        </div>     
                        
                        <p>
                            Navbar 항목에 <strong>&lt;li&gt;</strong> Tag를 2개 사용할 경우 브라우져 화면의 100%를 1/2 씩 나누어 배치 한다.
                        </p>                        
                        <div class="egov-deth2">
                        
                            <div data-role="header" data-theme="b">   
                                <h1>eGovFrame</h1>
                                                        
								<div data-role="navbar">
								    <ul>
								        <li><a href="#" class="ui-btn-active">One</a></li>
								        <li><a href="#">Two</a></li>
								    </ul>
								</div>
							</div>     
                            
                            <ul class="link">
								<li>&lt;div data-role="navbar"&gt;</li>
								<li class="egov-txtIn1">&lt;ul&gt;</li>
								<li class="egov-txtIn2">&lt;li&gt;&lt;a href="#" class="ui-btn-active"&gt;One&lt;/a&gt;&lt;/li&gt;</li>
								<li class="egov-txtIn2">&lt;li&gt;&lt;a href="#"&gt;Two&lt;/a&gt;&lt;/li&gt;</li>
								<li class="egov-txtIn1">&lt;/ul&gt;</li>
								<li>&lt;/div&gt;</li>                           
                            </ul>
                                              
                        </div>    
                                     
                        <p>
                            Navbar 항목에 <strong>&lt;li&gt;</strong> Tag를 3개 사용할 경우 브라우져 화면의 100%를 1/3 씩 나누어 배치 한다.
                        </p>                        
                        <div class="egov-deth2">
                        
	                        <div data-role="header" data-theme="b">   
                                <h1>eGovFrame</h1>                        
	                            <div data-role="navbar">
	                                <ul>
	                                    <li><a href="#" class="ui-btn-active">One</a></li>
	                                    <li><a href="#">Two</a></li>
	                                    <li><a href="#">Three</a></li>
	                                </ul>
	                            </div> 
	                        </div>                           
	                        
                            <ul class="link">
                                <li>&lt;div data-role="navbar"&gt;</li>
                                <li class="egov-txtIn1">&lt;ul&gt;</li>
                                <li class="egov-txtIn2">&lt;li&gt;&lt;a href="#" class="ui-btn-active"&gt;One&lt;/a&gt;&lt;/li&gt;</li>
                                <li class="egov-txtIn2">&lt;li&gt;&lt;a href="#"&gt;Two&lt;/a&gt;&lt;/li&gt;</li>
                                <li class="egov-txtIn2">&lt;li&gt;&lt;a href="#"&gt;Three&lt;/a&gt;&lt;/li&gt;</li>
                                <li class="egov-txtIn1">&lt;/ul&gt;</li>
                                <li>&lt;/div&gt;</li>                           
                            </ul>
                                              
                        </div>    
                        
                        <p>
                            Navbar 항목에 <strong>&lt;li&gt;</strong> Tag를 4개 사용할 경우 브라우져 화면의 100%를 1/4 씩 나누어 배치 한다.
                        </p>                        
                        <div class="egov-deth2">
                        
                            <div data-role="header" data-theme="b">   
                                <h1>eGovFrame</h1>                            
	                            <div data-role="navbar">
	                                <ul>
	                                    <li><a href="#" class="ui-btn-active">One</a></li>
	                                    <li><a href="#">Two</a></li>
	                                    <li><a href="#">Three</a></li>
	                                    <li><a href="#">Four</a></li>
	                                </ul>
	                            </div>
	                        </div>     
                            
                            <ul class="link">
                                <li>&lt;div data-role="navbar"&gt;</li>
                                <li class="egov-txtIn1">&lt;ul&gt;</li>
                                <li class="egov-txtIn2">&lt;li&gt;&lt;a href="#" class="ui-btn-active"&gt;One&lt;/a&gt;&lt;/li&gt;</li>
                                <li class="egov-txtIn2">&lt;li&gt;&lt;a href="#"&gt;Two&lt;/a&gt;&lt;/li&gt;</li>
                                <li class="egov-txtIn2">&lt;li&gt;&lt;a href="#"&gt;Three&lt;/a&gt;&lt;/li&gt;</li>
                                <li class="egov-txtIn2">&lt;li&gt;&lt;a href="#"&gt;Four&lt;/a&gt;&lt;/li&gt;</li>
                                <li class="egov-txtIn1">&lt;/ul&gt;</li>
                                <li>&lt;/div&gt;</li>                           
                            </ul>
                                              
                        </div>    
                        
                        <p>
                            Navbar 항목에 <strong>&lt;li&gt;</strong> Tag를 5개 사용할 경우 브라우져 화면의 100%를 1/5 씩 나누어 배치 한다.
                        </p>                        
                        <div class="egov-deth2">
                        
                            <div data-role="header" data-theme="b">   
                                <h1>eGovFrame</h1>                            
	                            <div data-role="navbar">
	                                <ul>
	                                    <li><a href="#" class="ui-btn-active">One</a></li>
	                                    <li><a href="#">Two</a></li>
	                                    <li><a href="#">Three</a></li>
	                                    <li><a href="#">Four</a></li>
	                                    <li><a href="#">Five</a></li>
	                                </ul>
	                            </div>
	                        </div>     
                            
                            <ul class="link">
                                <li>&lt;div data-role="navbar"&gt;</li>
                                <li class="egov-txtIn1">&lt;ul&gt;</li>
                                <li class="egov-txtIn2">&lt;li&gt;&lt;a href="#" class="ui-btn-active"&gt;One&lt;/a&gt;&lt;/li&gt;</li>
                                <li class="egov-txtIn2">&lt;li&gt;&lt;a href="#"&gt;Two&lt;/a&gt;&lt;/li&gt;</li>
                                <li class="egov-txtIn2">&lt;li&gt;&lt;a href="#"&gt;Three&lt;/a&gt;&lt;/li&gt;</li>
                                <li class="egov-txtIn2">&lt;li&gt;&lt;a href="#"&gt;Four&lt;/a&gt;&lt;/li&gt;</li>
                                <li class="egov-txtIn2">&lt;li&gt;&lt;a href="#"&gt;Five&lt;/a&gt;&lt;/li&gt;</li>                                
                                <li class="egov-txtIn1">&lt;/ul&gt;</li>
                                <li>&lt;/div&gt;</li>                           
                            </ul>
                                              
                        </div>    
                        
                        <p>
                            Navbar 항목에 <strong>&lt;li&gt;</strong> Tag를 5개 이상 사용할 경우 한 행에 2개열로 구성된 단순한 다중행 형태로 배치 된다.
                        </p>                        
                        <div class="egov-deth2">
                        
                            <div data-role="header" data-theme="b">   
                                <h1>eGovFrame</h1>                            
			                    <div data-role="navbar">
			                        <ul>
			                            <li><a href="#" class="ui-btn-active">One</a></li>
			                            <li><a href="#">Two</a></li>
			                            <li><a href="#">Three</a></li>
			                            <li><a href="#">Four</a></li>
			                            <li><a href="#">Five</a></li>
			                            <li><a href="#">Six</a></li>
			                            <li><a href="#">Seven</a></li>
			                            <li><a href="#">Eight</a></li>
			                            <li><a href="#">Nine</a></li>
			                            <li><a href="#">Ten</a></li>
			                        </ul>
			                    </div>
			                </div>  
                            
                            <ul class="link">
								<li>&lt;div data-role="navbar"&gt;</li>
								<li class="egov-txtIn1">&lt;ul&gt;</li>
								<li class="egov-txtIn2">&lt;li&gt;&lt;a href="#" class="ui-btn-active"&gt;One&lt;/a&gt;&lt;/li&gt;</li>
								<li class="egov-txtIn2">&lt;li&gt;&lt;a href="#"&gt;Two&lt;/a&gt;&lt;/li&gt;</li>
								<li class="egov-txtIn2">&lt;li&gt;&lt;a href="#"&gt;Three&lt;/a&gt;&lt;/li&gt;</li>
								<li class="egov-txtIn2">&lt;li&gt;&lt;a href="#"&gt;Four&lt;/a&gt;&lt;/li&gt;</li>
								<li class="egov-txtIn2">&lt;li&gt;&lt;a href="#"&gt;Five&lt;/a&gt;&lt;/li&gt;</li>
								<li class="egov-txtIn2">&lt;li&gt;&lt;a href="#"&gt;Six&lt;/a&gt;&lt;/li&gt;</li>
								<li class="egov-txtIn2">&lt;li&gt;&lt;a href="#"&gt;Seven&lt;/a&gt;&lt;/li&gt;</li>
								<li class="egov-txtIn2">&lt;li&gt;&lt;a href="#"&gt;Eight&lt;/a&gt;&lt;/li&gt;</li>
								<li class="egov-txtIn2">&lt;li&gt;&lt;a href="#"&gt;Nine&lt;/a&gt;&lt;/li&gt;</li>
								<li class="egov-txtIn2">&lt;li&gt;&lt;a href="#"&gt;Ten&lt;/a&gt;&lt;/li&gt;</li>
								<li class="egov-txtIn1">&lt;/ul&gt;</li>
								<li>&lt;/div&gt;</li>                  
                            </ul>
                                              
                        </div>                            
                                                                                                                                 
                    </div>
                    
                    <div class="egov-deth1">
                    	<h2>형태변경 (둥근 탭)</h2>
                    	<p>Navbar 내부의 Anchor Tag에 <strong>class="egov-btn-corner-tl"</strong> 속성을 추가하여
                    	왼쪽으로 둥근 탭을 생성할 수 있다. <strong>class="egov-btn-corner-tr"</strong> 속성을 추가하면 
                    	오른쪽으로 둥근 탭을 생성할 수 있다.
                    	</p>
                    	
                    	<div class="egov-deth2">
     	
                            <div data-role="header" data-theme="a">
                                <h1>eGovFrame</h1>
	                    		<div data-role="navbar">
	                                <ul>
	                                    <li><a href="#" class="egov-btn-corner-tl">Left</a></li>
	                                    <li><a href="#">Center</a></li>
	                                    <li><a href="#" class="egov-btn-corner-tr">Right</a></li>
	                                </ul>
	                            </div> 
                            </div>
                            
                            <ul class="link">
                            	<li>&lt;div data-role="header" data-theme="b"&gt;</li>
                            	<li class="egov-txtIn1">&lt;h1&gt;eGovFrame&lt;/h1&gt;</li>
                            	<li class="egov-txtIn1">&lt;div data-role="navbar"&gt;</li>
	                            <li class="egov-txtIn2">&lt;ul&gt;</li>
	                            <li class="egov-txtIn2">&lt;li&gt;&lt;a href="#" class="egov-btn-corner-tl"&gt;Left&lt;/a&gt;&lt;/li&gt;</li>
	                            <li class="egov-txtIn2">&lt;li&gt;&lt;a href="#"&gt;Center&lt;/a&gt;&lt;/li&gt;</li>
	                            <li class="egov-txtIn2">&lt;li&gt;&lt;a href="#" class="egov-btn-corner-tr"&gt;Right&lt;/a&gt;&lt;/li&gt;</li>
	                            <li class="egov-txtIn2">&lt;/ul&gt;</li>
	                            <li class="egov-txtIn1">&lt;/div&gt;</li>
	                            <li>&lt;/div&gt;</li>  
                            </ul> 
                    	</div>
                    </div>

                    <div class="egov-deth1">
                        <h2>문서 간 이동</h2>
                        <p>
                          	문서 간 이동은 활성화 tab의 <strong>class="ui-btn-active"</strong> 속성을 설정해 주어 사용 가능하다.<br>
                            <a href="<c:url value="/guide/components/tabs/activeTab1.do" />" data-ajax="false">문서 간 이동 샘플 보기</a>                            
                        </p>
                        
                        <div class="egov-deth2">
                            
                            <ul class="link">
                                <li>&lt;div data-role="header" data-position="inline" data-theme="b"&gt;</li>
                                <li class="egov-txtIn1">&lt;h1&gt;Mobile FrameWork UX Components&lt;/h1&gt;</li>
                                <li class="egov-txtIn1">&lt;div data-role="navbar"&gt;</li>
                                <li class="egov-txtIn2">&lt;ul&gt;</li>
                                <li class="egov-txtIn3">&lt;li&gt;&lt;a href="#" class="ui-btn-active"&gt;One&lt;/a&gt;&lt;/li&gt;</li>
                                <li class="egov-txtIn3">&lt;li&gt;&lt;a href="#"&gt;Two&lt;/a&gt;&lt;/li&gt;</li>
                                <li class="egov-txtIn3">&lt;li&gt;&lt;a href="#"&gt;Three&lt;/a&gt;&lt;/li&gt;</li>
                                <li class="egov-txtIn2">&lt;/ul&gt;</li>
                                <li class="egov-txtIn1">&lt;/div&gt;</li>
                                <li>&lt;/div&gt;</li>              
                            </ul>
                                                                          
                        </div>     
                                                
                    </div>  
                    
                    <div class="egov-deth1">
                        <h2>문서 내 이동</h2>
                        <p>
						문서 내 이동은 <strong>data-role="tabs"</strong> 설정을 통하여 사용 가능하다.<br>
                        <a href="<c:url value="/guide/components/tabs/activeTab.do"/>" data-ajax="false">문서 내 이동 샘플 보기</a>
                        </p>
                        
                        <div class="egov-deth2">
                            
                            <ul class="link">
                                <li>&lt;div data-role="header" data-position="inline" data-theme="a"&gt;</li>
                                <li class="egov-txtIn1">&lt;h1 class="main"&gt;eGovFrame&lt;/h1&gt;</li>
                                <li class="egov-txtIn1">&lt;div data-role="tabs"&gt;</li>
                                <li class="egov-txtIn2">&lt;ul&gt;</li>
                                <li class="egov-txtIn3">&lt;li&gt;&lt;a href="#tab-1" &gt;Tab 1&lt;/a&gt;&lt;/li&gt;</li>
                                <li class="egov-txtIn3">&lt;li&gt;&lt;a href="#tab-2" &gt;Tab 2&lt;/a&gt;&lt;/li&gt;</li>
                                <li class="egov-txtIn3">&lt;li&gt;&lt;a href="#tab-3" &gt;Tab 3&lt;/a&gt;&lt;/li&gt;</li>
                                <li class="egov-txtIn2">&lt;/ul&gt;</li>
                                <li class="egov-txtIn1">&lt;/div&gt;</li>                   
                                <li>&lt;/div&gt;</li>  
                                
                                <li>&lt;div data-role="content"&gt;</li>
                                <li class="egov-txtIn1">&lt;div id="tab-1"&gt;</li>
                                <li class="egov-txtIn2">&lt;h1&gt;&lt;font color="red"&gt;Here is the first tab&lt;/font&gt;&lt;/h1&gt;&lt;br/&gt;&lt;br/&gt;</li>
                                <li class="egov-txtIn1">&lt;/div&gt;</li>
                                <li class="egov-txtIn1">&lt;div id="tab-2"&gt;</li>
                                <li class="egov-txtIn2">&lt;h1&gt;&lt;font color="blue"&gt;Here is the second tab&lt;/font&gt;&lt;/h1&gt;&lt;br/&gt;&lt;br/&gt;</li>
                                <li class="egov-txtIn1">&lt;/div&gt;</li>
                                <li class="egov-txtIn1">&lt;div id="tab-3"&gt;</li>
                                <li class="egov-txtIn2">&lt;h1&gt;&lt;font color="green"&gt;Here is the third tab&lt;/font&gt;&lt;/h1&gt;&lt;br/&gt;&lt;br/&gt;</li>
                                <li class="egov-txtIn1">&lt;/div&gt;</li>
                                <li>&lt;/div&gt;</li>               
                            </ul>
                                                                          
                        </div>     
                                                
                    </div>                      
                    
                    <div class="egov-deth1">
                        <h2>Icon 추가</h2>
                        <p><strong>data-icon="icon"</strong> 속성을 사용하여 Tabs에 icon 을 추가 할 수 있다.</p>
                        
                        <div class="egov-deth2">
	                        <div data-role="footer" data-theme="b">
		                        <div data-role="navbar">
		                            <ul>
		                                <li><a href="#" data-icon="grid">Summary</a></li>
		                                <li><a href="#" data-icon="star" class="ui-btn-active">Favs</a></li>
		                                <li><a href="#" data-icon="gear">Setup</a></li>
		                            </ul>
		                        </div>
		                        <h1>footer</h1>
	                        </div>
                            
                            <ul class="link">
								<li>&lt;div data-role="navbar"&gt;</li>
								<li class="egov-txtIn1">&lt;ul&gt;</li>
								<li class="egov-txtIn2">&lt;li&gt;&lt;a href="#" data-icon="grid"&gt;Summary&lt;/a&gt;&lt;/li&gt;</li>
								<li class="egov-txtIn2">&lt;li&gt;&lt;a href="#" data-icon="star" class="ui-btn-active"&gt;Favs&lt;/a&gt;&lt;/li&gt;</li>
								<li class="egov-txtIn2">&lt;li&gt;&lt;a href="#" data-icon="gear"&gt;Setup&lt;/a&gt;&lt;/li&gt;</li>
								<li class="egov-txtIn1">&lt;/ul&gt;</li>
								<li>&lt;/div&gt;</li>              
                            </ul>
                                              
                        </div>     
                                                
                   </div>
                   
                   <div class="egov-deth1">
                        <h2>Icon 위치 변경 </h2>
                        <p>Navbar 항목에 <strong>data-iconpos="[top, bottom, right, left]"</strong> 속성을 사용하여 Tabs에 표현될 icon 위치를 지정할 수 있다.</p>                        
                        
                        <div class="egov-deth2">
	                        <div data-role="footer" data-theme="b">
		                        <div data-role="navbar" data-iconpos="left">
		                            <ul>
		                                <li><a href="#" data-icon="grid">Summary</a></li>
		                                <li><a href="#" data-icon="star" class="ui-btn-active">Favs</a></li>
		                                <li><a href="#" data-icon="gear">Setup</a></li>
		                            </ul>
		                        </div>
		                        <h1>footer</h1>
	                        </div>
                            
                            <ul class="link">
								<li>&lt;div data-role="navbar" data-iconpos="left"&gt;</li>
								<li class="egov-txtIn1">&lt;ul&gt;</li>
								<li class="egov-txtIn2">&lt;li&gt;&lt;a href="#" data-icon="grid"&gt;Summary&lt;/a&gt;&lt;/li&gt;</li>
								<li class="egov-txtIn2">&lt;li&gt;&lt;a href="#" data-icon="star" class="ui-btn-active"&gt;Favs&lt;/a&gt;&lt;/li&gt;</li>
								<li class="egov-txtIn2">&lt;li&gt;&lt;a href="#" data-icon="gear"&gt;Setup&lt;/a&gt;&lt;/li&gt;</li>
								<li class="egov-txtIn1">&lt;/ul&gt;</li>
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
                <!-- content-secondary start -->
                
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
