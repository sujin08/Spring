<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Class Name : menu.jsp
  Description :  UX menu component
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
        <title>UX Component - Menu</title> 
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0, user-scalable=no" />    
        
        <!-- eGovFrame Common import -->        
        <link rel="stylesheet" href="<c:url value="/css/egovframework/mbl/cmm/jquery.mobile-1.4.5.css" />" />
        <link rel="stylesheet" href="<c:url value="/css/egovframework/mbl/cmm/EgovMobile-1.4.5.css" />" />
        <script type="text/javascript" src="<c:url value="/js/egovframework/mbl/cmm/jquery-1.11.2.min.js"/>"></script>
		
        <script type="text/javascript" src="<c:url value="/js/egovframework/mbl/cmm/jquery.mobile-1.4.5.min.js" />"></script>

        <script type="text/javascript" >
        	function changemenu(){
	             var f = document.forms[0];
                  f.action ="<c:url value="/guide/components/menu/menu.do"/>";
                  f.target ="_self";
	              f.submit();
        	}    
        </script>        
        <script type="text/javascript" src="<c:url value="/js/egovframework/mbl/cmm/EgovMobile-1.4.5.js" />"></script>
    
        <!-- guide import -->
        <link rel="stylesheet" href="<c:url value="/css/egovframework/mbl/rte/guide/guide.css" />">
        <script type="text/javascript"  src="<c:url value="/js/egovframework/mbl/rte/guide/guide.js"/>"></script>

        <script type="text/javascript" src="<c:url value="/js/egovframework/mbl/cmm/jquery.mobile.nestedlists.js" />"></script>

    </head>
    
    <body>
          
        <!-- page start -->
        <div data-role="page" class="type-index">
        
            <!-- header start -->
            <div data-role="header" data-position="inline" data-theme="z"  class="egovBarHeader">
                <a href="<c:url value="/guide/guide.do"/>" data-icon="home" class="ui-btn-left" data-ajax="false">Home</a>
                <a href="<c:url value="/guide/guide.do"/>" data-icon="back" class="ui-btn-right" data-ajax="false">Back</a>
                <h1 class="main"><img src="<c:url value="/images/egovframework/mbl/rte/guide/h1_logo.png"/>" alt="egovframework" ></h1>
            </div>  
            <!-- header end -->
            
            <!-- content start -->      
            <div data-role="content" data-theme="d">
            
                <!-- content-primary start -->
                <div class="content-primary">
                    <div class="egov-tit">
                        <h1>Menu</h1>
                        <p>모바일 Page의 메뉴 기능은 Dialog, Grid, List, Collapsible 의 기능을 활용하여 구현할 수 있다.</p>
						<!-- form method="post">
							<div data-role="fieldcontain">
                               <label for="menuType" class="select">Menu Type</label>
                               <select name="menuType" id="menuType" onchange="javascript:changemenu();">
                                   <option value="" selected="selected">Dialog, Grid Menu</option>
                                   <option value="ListCollapsible" ${(param.menuType=="ListCollapsible") ? "selected='selected'": ""}>List, Collapsible Menu</option>
                               </select>
                            </div>
                      </form -->
                   </div>                    
                    
                    <c:if test="${param.menuType !='ListCollapsible'}">                            
                    <div class="egov-deth1">
                        <h2>Dialog 형식</h2>
                        <p>링크에 <strong>data-rel="dialog"</strong> 및 <strong>data-transition="slide, slideup, slidedown, pop, fade, flip, turn, flow, slidefade"</strong> 속성을 추가하여 다이얼 로그의 효과적인 표출 효과를 사용 할 수 있다.<br>
         				※dialog 형식의 메뉴는 <a href="<c:url value="/guide/components/dialog/dialog.do"/>"  data-ajax="false">UX Dialog Component 유의 사항</a>을 참고한다.                
                         
                        <div class="egov-deth2">
                            <ul data-role="listview" data-inset="true">
                                <li data-role="list-divider">Menu</li>
                                <li><a href="#menu1" data-rel="dialog" data-transition="slide">표준프레임워크 개요</a></li>
                                <li><a href="#menu2" data-rel="dialog" data-transition="slidedown">다운로드</a></li>
                                <li><a href="#menu3" data-rel="dialog" data-transition="slideup">가이드</a></li>
                                <li><a href="#menu4" data-rel="dialog" data-transition="pop">자료실</a></li>
                                <li><a href="#menu5" data-rel="dialog" data-transition="fade">개발자 지원</a></li>
                                <li><a href="#menu6" data-rel="dialog" data-transition="flip" >오픈 커뮤니티</a></li>
                            </ul>              
                                            
                            <ul class="link">
                                <li>&lt;ul data-role="listview" data-inset="true"&gt;</li>
                                <li class="egov-txtIn1">&lt;li data-role="list-divider"&gt;Menu&lt;/li&gt;</li>
                                <li class="egov-txtIn1">&lt;li&gt;&lt;a href="#menu1" data-rel="dialog" data-transition="slide"&gt;표준프레임워크 개요&lt;/a&gt;&lt;/li&gt;</li>
                                <li class="egov-txtIn1">&lt;li&gt;&lt;a href="#menu2" data-rel="dialog" data-transition="slidedown"&gt;다운로드&lt;/a&gt;&lt;/li&gt;</li>
                                <li class="egov-txtIn1">&lt;li&gt;&lt;a href="#menu3" data-rel="dialog" data-transition="slideup"&gt;가이드&lt;/a&gt;&lt;/li&gt;</li>
                                <li class="egov-txtIn1">&lt;li&gt;&lt;a href="#menu4" data-rel="dialog" data-transition="pop"&gt;자료실&lt;/a&gt;&lt;/li&gt;</li>
                                <li class="egov-txtIn1">&lt;li&gt;&lt;a href="#menu5" data-rel="dialog" data-transition="fade"&gt;개발자 지원&lt;/a&gt;&lt;/li&gt;</li>
                                <li class="egov-txtIn1">&lt;li&gt;&lt;a href="#menu6" data-rel="dialog" data-transition="flip"&gt;오픈 커뮤니티&lt;/a&gt;&lt;/li&gt;</li>
                                <li>&lt;/ul&gt;</li>                              
                            </ul>
                        </div>
                    </div>
               
                    <div class="egov-deth1">
                        <h2>Grid 형식</h2>
                        <p>비슷한 레벨의 콘텐츠를 아이콘화 하여 여러 개 배치하여 사용하며, 메뉴 정렬 순서는 좌측에서 우측, 위에서 아래 방향으로 배치한다.</p>
                        <div class="egov-deth2">                            
                            <div class="ui-grid-b">
                                <div class="ui-block-a"><a href="" data-role="button" data-theme="a">개요</a></div>
                                <div class="ui-block-b"><a href="" data-role="button" data-theme="b">다운로드</a></div>
                                <div class="ui-block-c"><a href="" data-role="button" data-theme="c">가이드</a></div>
                                <div class="ui-block-a"><a href="" data-role="button" data-theme="d">자료실</a></div>
                                <div class="ui-block-b"><a href="" data-role="button" data-theme="e">개발자</a></div>                                
                                <div class="ui-block-c"><a href="" data-role="button" data-theme="g">커뮤니티</a></div>
                            </div>         
                            
                            <ul class="link">
                                <li>&lt;div class="ui-grid-b"&gt;</li>
                                <li class="egov-txtIn1">&lt;div class="ui-block-a"&gt;&lt;a href="" data-role="button" data-theme="a"&gt;개요&lt;/a&gt;&lt;/div&gt;</li>
                                <li class="egov-txtIn1">&lt;div class="ui-block-b"&gt;&lt;a href="" data-role="button" data-theme="b"&gt;다운로드&lt;/a&gt;&lt;/div&gt;</li>
                                <li class="egov-txtIn1">&lt;div class="ui-block-c"&gt;&lt;a href="" data-role="button" data-theme="c"&gt;가이드&lt;/a&gt;&lt;/div&gt;</li>
                                <li class="egov-txtIn1">&lt;div class="ui-block-a"&gt;&lt;a href="" data-role="button" data-theme="d"&gt;자료실&lt;/a&gt;&lt;/div&gt;</li>
                                <li class="egov-txtIn1">&lt;div class="ui-block-b"&gt;&lt;a href="" data-role="button" data-theme="e"&gt;개발자&lt;/a&gt;&lt;/div&gt;</li>
                                <li class="egov-txtIn1">&lt;div class="ui-block-c"&gt;&lt;a href="" data-role="button" data-theme="g"&gt;커뮤니티&lt;/a&gt;&lt;/div&gt;</li>
                                <li>&lt;/div&gt; </li>                              
                            </ul>
                            
                        </div>
                    </div>
                    </c:if>
                     
                    <c:if test ="${param.menuType =='ListCollapsible'}">
                    </c:if>
                    
                    <div class="egov-deth1">
                        <h2>Accordion 형식</h2>
                        <p>텍스트 형식의 메뉴표현으로 메뉴 목록을 접고 펼치는 방식을 적용하며, 하나의 화면에서 레벨이 다른 메뉴간 바로 이동이 가능하다.<br>
                        * 화면에서 메뉴가 차지하는 영역이 크므로 보통 첫 화면에만 제공되는 편이다.
                        </p>
                        <div class="egov-deth2">                            

                            <div data-role="collapsible-set"> 
                                <div data-role="collapsible" data-collapsed="true"> 
                                    <h3>전자정부 표준프레임워크 개요</h3> 
                                    <ul data-role="listview" data-inset="true" data-theme="d"> 
                                        <li><a href="#">소개</a></li> 
                                        <li><a href="#">구성</a></li> 
                                        <li><a href="#">아키텍쳐</a></li> 
                                        <li><a href="#">라이선스</a></li> 
                                        <li><a href="#">추진성과 및 적용사례</a></li> 
                                        <li><a href="#">찾아오시는 길</a></li> 
                                    </ul>                  
                                </div> 
                            
                                <div data-role="collapsible" data-collapsed="true"> 
                                    <h3>다운로드</h3> 
                                    <ul data-role="listview" data-inset="true" data-theme="d"> 
                                        <li><a href="#">실행환경</a></li> 
                                        <li><a href="#">개발환경</a></li> 
                                        <li><a href="#">운영환경</a></li> 
                                        <li><a href="#">공통컴포넌트 목록</a></li> 
                                        <li><a href="#">공통컴포넌트 맵</a></li> 
                                        <li><a href="#">공유서비스 맵</a></li> 
                                    </ul>                 
                                </div> 
                            
                                <div data-role="collapsible" data-collapsed="true"> 
                                    <h3>가이드</h3> 
                                    <ul data-role="listview" data-inset="true" data-theme="d"> 
                                        <li><a href="#">초보자 가이드</a></li> 
                                        <li><a href="#">실행환경 가이드</a></li> 
                                        <li><a href="#">개발환경 가이드</a></li> 
                                        <li><a href="#">공통컴포넌트 가이드</a></li> 
                                        <li><a href="#">eGovFrame포털 사용자 가이드</a></li> 
                                    </ul>                 
                                </div> 
                            
                                <div data-role="collapsible" data-collapsed="true"> 
                                    <h3>자료실</h3> 
                                    <ul data-role="listview" data-inset="true" data-theme="d"> 
                                        <li><a href="#">관련자료</a></li> 
                                        <li><a href="#">교육 교재</a></li> 
                                        <li><a href="#">동영상  교재</a></li> 
                                    </ul>                 
                                </div> 
                            
                                <div data-role="collapsible" data-collapsed="true"> 
                                    <h3>개발자 지원</h3> 
                                    <ul data-role="listview" data-inset="true" data-theme="d"> 
                                        <li><a href="#">공지사항</a></li> 
                                        <li><a href="#">행사</a></li> 
                                        <li><a href="#">FAQ</a></li>
                                        <li><a href="#">Q&A</a></li>
                                        <li><a href="#">교육신청</a></li>
                                        <li><a href="#">SR요청</a></li> 
                                    </ul>                 
                                </div>             
                            
                            </div>   

                            <ul class="link">
                                <li>&lt;div data-role="collapsible-set"&gt;</li>
                                <li class="egov-txtIn1">&lt;div data-role="collapsible"&gt;</li> 
                                <li class="egov-txtIn2">&lt;h3&gt;전자정부 표준프레임워크 개요&lt;/h3&gt;</li> 
                                <li class="egov-txtIn2">&lt;ul data-role="listview" data-inset="true" data-theme="d"&gt;</li>
                                <li class="egov-txtIn3">&lt;li&gt;&lt;a href="#"&gt;소개&lt;/a&gt;&lt;/li&gt;</li>
                                <li class="egov-txtIn3">&lt;li&gt;&lt;a href="#"&gt;구성&lt;/a&gt;&lt;/li&gt;</li>
                                <li class="egov-txtIn3">&lt;li&gt;&lt;a href="#"&gt;아키텍쳐&lt;/a&gt;&lt;/li&gt;</li>
                                <li class="egov-txtIn3">&lt;li&gt;&lt;a href="#"&gt;라이선스&lt;/a&gt;&lt;/li&gt;</li>
                                <li class="egov-txtIn3">&lt;li&gt;&lt;a href="#"&gt;추진성과 및 적용사례&lt;/a&gt;&lt;/li&gt;</li>
                                <li class="egov-txtIn3">&lt;li&gt;&lt;a href="#"&gt;찾아오시는 길&lt;/a&gt;&lt;/li&gt;</li>
                                <li class="egov-txtIn2">&lt;/ul&gt;</li>                  
                                <li class="egov-txtIn1">&lt;/div&gt;</li>
                                <li class="egov-txtIn1">&lt;div data-role="collapsible" data-collapsed="true"&gt;</li>
                                <li class="egov-txtIn2">&lt;h3&gt;다운로드&lt;/h3&gt;</li>
                                <li class="egov-txtIn2">&lt;ul data-role="listview" data-inset="true" data-theme="d"&gt;</li>
                                <li class="egov-txtIn3">&lt;li&gt;&lt;a href="#"&gt;실행환경&lt;/a&gt;&lt;/li&gt;</li>
                                <li class="egov-txtIn3">&lt;li&gt;&lt;a href="#"&gt;개발환경&lt;/a&gt;&lt;/li&gt;</li>
                                <li class="egov-txtIn3">&lt;li&gt;&lt;a href="#"&gt;운영환경&lt;/a&gt;&lt;/li&gt;</li>
                                <li class="egov-txtIn3">&lt;li&gt;&lt;a href="#"&gt;공통컴포넌트 목록&lt;/a&gt;&lt;/li&gt;</li>
                                <li class="egov-txtIn3">&lt;li&gt;&lt;a href="#"&gt;공통컴포넌트 맵&lt;/a&gt;&lt;/li&gt;</li>
                                <li class="egov-txtIn3">&lt;li&gt;&lt;a href="#"&gt;공유서비스 맵&lt;/a&gt;&lt;/li&gt;</li>
                                <li class="egov-txtIn2">&lt;/ul&gt;</li>
                                <li class="egov-txtIn1">&lt;/div&gt;</li>
                                <li class="egov-txtIn1">....</li>
                                <li>&lt;/div&gt;</li>                            
                            </ul>
                           
                        </div>
                         
                    </div>                    
                  
                  
                  
                    <div class="egov-deth1">
                        <h2>List 형식</h2>
                        <p>각 메뉴마다 하위 콘텐츠를 대표하는 성격의 레이블이나 아이콘을 제공하며, 추가 메뉴에 대한 공간 제약이 덜하므로 확장성이 좋다.<br>
                        각각의 메뉴는 상세 화면으로의 이동을 의미하는 시작적인 단서를 제공하거나 터치를 유도할 수 있도록 버튼 스타일로 제공하는 것이 바람직하다.<br>
                          <strong>* Nested List형식의 경우 jQuery Mobile v1.3에서 deprecated되었고, v1.4에서 제거 되어서 현재는 사용할수 없는 기능이다.</strong>
                        </p>
                        <div class="egov-deth2">
                    
                            <ul data-role="listview"  data-inset="true"> 
                                <li> 
                                    <h3>프레임워크 개요</h3> 
                                    <p>전자정부 표준프레임워크의 전체적인 개요를 살펴보실 수 있습니다.</p> 
                                    <ul> 
                                        <li><a href="#">소개</a></li> 
                                        <li><a href="#">구성</a></li> 
                                        <li><a href="#">아키텍쳐</a></li> 
                                        <li><a href="#">라이선스</a></li> 
                                        <li><a href="#">추진성과 및 적용사례</a></li> 
                                        <li><a href="#">찾아오시는 길</a></li> 
                                    </ul>    
                                </li>
                                <li> 
                                    <h3>다운로드</h3> 
                                    <p>실행환경, 개발환경, 공통컴포넌트의 개발자료 다운로드 서비스를 제공합니다.</p> 
                                    <ul> 
                                        <li><a href="#">실행환경</a></li> 
                                        <li><a href="#">개발환경</a></li> 
                                        <li><a href="#">운영환경</a></li> 
                                        <li><a href="#">공통컴포넌트 목록</a></li> 
                                        <li><a href="#">공통컴포넌트 맵</a></li> 
                                        <li><a href="#">공유서비스 맵</a></li> 
                                    </ul>     
                                </li>                                     
                                <li> 
                                    <h3>가이드</h3> 
                                    <p>전자정부 표준프레임워크 기반의 시작하기</p> 
                                    <ul> 
                                        <li><a href="#">초보자 가이드</a></li> 
                                        <li><a href="#">실행환경 가이드</a></li> 
                                        <li><a href="#">개발환경 가이드</a></li> 
                                        <li><a href="#">공통컴포넌트 가이드</a></li> 
                                        <li><a href="#">eGovFrame포털 사용자 가이드</a></li> 
                                    </ul>  
                                </li> 
                                <li>  
                                    <h3>자료실</h3> 
                                    <p>전자정부 표준프레임워크의 관련 자료와 교육 자료를 다운로드 하실 수 있습니다.</p> 
                        
                                    <ul> 
                                        <li><a href="#">관련자료</a></li> 
                                        <li><a href="#">교육 교재</a></li> 
                                        <li><a href="#">동영상  교재</a></li>  
                                    </ul> 
                                </li> 
                                <li> 
                                    <h3>개발자 지원</h3> 
                                    <p>개발자 지원을 받으 실 수 있습니다.</p> 
                                    
                                    <ul> 
                                        <li>3단계 메뉴 테스트 1
                                            <ul> 
                                                <li><a href="#">공지사항1</a></li> 
                                                <li><a href="#">행사1</a></li> 
                                                <li><a href="#">FAQ1</a></li> 
                                                <li><a href="#">Q&A1</a></li> 
                                                <li><a href="#">교육신청1</a></li> 
                                                <li><a href="#">SR요청1</a></li>  
                                            </ul> 
                                        </li>            
                                        <li>3단계 메뉴 테스트 2
                                            <ul> 
                                                <li><a href="#">공지사항2</a></li> 
                                                <li><a href="#">행사2</a></li> 
                                                <li><a href="#">FAQ2</a></li> 
                                                <li><a href="#">Q&A2</a></li> 
                                                <li><a href="#">교육신청2</a></li> 
                                                <li><a href="#">SR요청2</a></li>  
                                            </ul> 
                                        </li>
                                        <li>3단계 메뉴 테스트 3
                                            <ul> 
                                                <li><a href="#">공지사항2</a></li> 
                                                <li><a href="#">행사2</a></li> 
                                                <li><a href="#">FAQ2</a></li> 
                                                <li><a href="#">Q&A2</a></li> 
                                                <li><a href="#">교육신청2</a></li> 
                                                <li><a href="#">SR요청2</a></li>  
                                            </ul> 
                                        </li>                                        
                                    </ul> 
                                </li> 
                            </ul>       
                            
                            <ul class="link">
                                <li>&lt;ul data-role="listview"&gt;</li> 
                                <li class="egov-txtIn1">&lt;li&gt;</li> 
                                <li class="egov-txtIn2">&lt;h3&gt;프레임워크 개요&lt;/h3&gt;</li> 
                                <li class="egov-txtIn2">&lt;p&gt;전자정부 표준프레임워크의 전체적인 개요를 살펴보실 수 있습니다.&lt;/p&gt;</li> 
                                <li class="egov-txtIn2">&lt;ul&gt;</li> 
                                <li class="egov-txtIn3">&lt;li&gt;&lt;a href="#"&gt;소개&lt;/a&gt;&lt;/li&gt;</li> 
                                <li class="egov-txtIn3">&lt;li&gt;&lt;a href="#"&gt;구성&lt;/a&gt;&lt;/li&gt;</li> 
                                <li class="egov-txtIn3">&lt;li&gt;&lt;a href="#"&gt;아키텍쳐&lt;/a&gt;&lt;/li&gt;</li> 
                                <li class="egov-txtIn3">&lt;li&gt;&lt;a href="#"&gt;라이선스&lt;/a&gt;&lt;/li&gt;</li> 
                                <li class="egov-txtIn3">&lt;li&gt;&lt;a href="#"&gt;추진성과 및 적용사례&lt;/a&gt;&lt;/li&gt;</li> 
                                <li class="egov-txtIn3">&lt;li&gt;&lt;a href="#"&gt;찾아오시는 길&lt;/a&gt;&lt;/li&gt;</li> 
                                <li class="egov-txtIn2">&lt;/ul&gt;</li>
                                <li class="egov-txtIn1">&lt;/li&gt;</li>
                                <li class="egov-txtIn1">&lt;li&gt;</li> 
                                <li class="egov-txtIn2">&lt;h3&gt;다운로드&lt;/h3&gt;</li> 
                                <li class="egov-txtIn2">&lt;p&gt;실행환경, 개발환경, 공통컴포넌트의 개발자료 다운로드 서비스를 제공합니다.&lt;/p&gt;</li> 
                                <li class="egov-txtIn2">&lt;ul&gt;</li>
                                <li class="egov-txtIn3">&lt;li&gt;&lt;a href="#"&gt;실행환경&lt;/a&gt;&lt;/li&gt;</li> 
                                <li class="egov-txtIn3">&lt;li&gt;&lt;a href="#"&gt;개발환경&lt;/a&gt;&lt;/li&gt;</li> 
                                <li class="egov-txtIn3">&lt;li&gt;&lt;a href="#"&gt;운영환경&lt;/a&gt;&lt;/li&gt;</li> 
                                <li class="egov-txtIn3">&lt;li&gt;&lt;a href="#"&gt;공통컴포넌트 목록&lt;/a&gt;&lt;/li&gt;</li>
                                <li class="egov-txtIn3">&lt;li&gt;&lt;a href="#"&gt;공통컴포넌트 맵&lt;/a&gt;&lt;/li&gt;</li>
                                <li class="egov-txtIn3">&lt;li&gt;&lt;a href="#"&gt;공유서비스 맵&lt;/a&gt;&lt;/li&gt;</li> 
                                <li class="egov-txtIn2">&lt;/ul&gt;</li>
                                <li class="egov-txtIn1">&lt;/li&gt;</li>
                                <li class="egov-txtIn1">....</li>                                
                                <li>&lt;/ul&gt;</li>  
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
            <div data-role="footer" data-theme="z"  class="egovBar">
                 <h4 class="main">Copyright(c)2012 Ministry of Government Administration and Home Affairs.</h4>
            </div>
            <!-- footer end --> 
            
        </div>
        <!-- page end -->
         <c:if test="${param.menuType !='ListCollapsible'}">        
        <!-- dialog menu1 start -->
        <div id="menu1" data-role="page" data-theme="a">          
            <div data-role="header">
                <h1>전자정부 표준프레임워크 개요</h1> 
            </div>         
            <div data-role="content">                
                <a href="#" data-role="button">소개</a>
                <a href="#" data-role="button">구성</a>
                <a href="#" data-role="button">아키텍쳐</a>
                <a href="#" data-role="button">라이선스</a>
                <a href="#" data-role="button">추진성과 및 적용사례</a>
                <a href="#" data-role="button">찾아오시는 길</a>                  
            </div>         
        </div> 
        <!-- dialog menu1 end -->
        
        <!-- dialog menu2 start -->                       
        <div id="menu2" data-role="page" data-theme="b">         
            <div data-role="header">
                <h1>다운로드</h1> 
            </div>         
            <div data-role="content">                
                <a href="#" data-role="button">실행환경</a>
                <a href="#" data-role="button">개발환경</a>
                <a href="#" data-role="button">운영환경</a>
                <a href="#" data-role="button">공통컴포넌트 목록</a>
                <a href="#" data-role="button">공통컴포넌트 맵</a>
                <a href="#" data-role="button">공유서비스 맵</a>                  
            </div>         
        </div> 
        <!-- dialog menu2 end -->
                    
        <!-- dialog menu3 start -->                    
        <div id="menu3" data-role="page" data-theme="c">         
            <div data-role="header">
                <h1>가이드</h1> 
            </div>         
            <div data-role="content">                
                <a href="#" data-role="button">초보자 가이드</a>
                <a href="#" data-role="button">실행환경 가이드</a>
                <a href="#" data-role="button">개발환경 가이드</a>
                <a href="#" data-role="button">라이선스</a>
                <a href="#" data-role="button">공통컴포넌트 가이드</a>
                <a href="#" data-role="button">eGovFrame포털 사용자 가이드</a>                  
            </div>         
        </div> 
        <!-- dialog menu3 end -->
        
        <!-- dialog menu4 start -->            
        <div id="menu4" data-role="page" data-theme="d">         
            <div data-role="header">
                <h1>자료실</h1> 
            </div>         
            <div data-role="content">                
                <a href="#" data-role="button">관련자료</a>
                <a href="#" data-role="button">교육 교재</a>
                <a href="#" data-role="button">동영상  교재</a>
            </div>         
        </div> 
        <!-- dialog menu4 end -->
        
        <!-- dialog menu5 start -->
        <div id="menu5" data-role="page" data-theme="e">         
            <div data-role="header">
                <h1>개발자 지원</h1> 
            </div>         
            <div data-role="content">                
                <a href="#" data-role="button">공지사항</a>
                <a href="#" data-role="button">행사</a>
                <a href="#" data-role="button">FAQ</a>
                <a href="#" data-role="button">Q&amp;A</a>
                <a href="#" data-role="button">교육신청</a>
                <a href="#" data-role="button">SR요청</a>                  
            </div>         
        </div>   
        <!-- dialog menu5 end -->
        
        <!-- dialog menu6 start -->
        <div id="menu6" data-role="page" data-theme="e">         
            <div data-role="header">
                <h1>오픈 커뮤니티</h1> 
            </div>         
            <div data-role="content">                
                <a href="#" data-role="button">오픈커뮤니티</a>
                <a href="#" data-role="button">프로젝트</a>
                <a href="#" data-role="button">다운로드</a>
                <a href="#" data-role="button">자유토론</a>
                <a href="#" data-role="button">표준프레임워크포털</a>              
            </div>         
        </div>   
        <!-- dialog menu6 end -->
        </c:if>
    </body>
	
</html>