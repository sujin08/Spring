<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Class Name : specification.jsp
  Description :  지원 플랫폼
  Modification Information

      수정일         수정자           수정내용
    -------------    --------    ---------------------
     2011.07.19    윤병욱          최초 생성
 
    author   : 모바일 실행환경 개발팀 윤병욱
    since    : 2011.07.19
--%>
<!DOCTYPE html> 
<html lang="kr"> 
    <head>
        <title>eGovFrame</title> 
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
                        <h1>지원 사양</h1>
                    </div>

                    <table class="egov-table-spceial">
                    <colgroup><col class="egov-colwidth20"><col class="egov-colwidth12"><col class="egov-colwidth68"></colgroup>
                    <thead>
                    <tr>
                        <th>컴포넌트</th>
                        <th colspan="2">제공기능</th>
                    </tr>
                    </thead>
                    <tbody>
                    
                    <!-- Button -->
                    <tr>
                        <td rowspan="7" class="type1"><strong>Button</strong></td>
                        <td class="type1">설명</td>
                        <td>명령 수행, 옵션 선택, 다른 대화 상자 열기 등에 사용하는 컴포넌트 제공 </td>
                    </tr>
                    <tr>
                        <td class="type1">형태</td>
                        <td>둥근 형(radius: 1em), 사각형(radius: 0em)</td>
                    </tr>
                    <tr>
                        <td class="type1">배치</td>
                        <td>vertical group, horizontal group</td>
                    </tr>
           		    <tr>
                        <td class="type1">색상</td>
                        <td>검정, 파랑, 회색, 흰색, 노랑, 빨강, 초록</td>
                    </tr>                    
                    <tr>
                        <td class="type1">높이</td>
                        <td>normal(39px), small (28px)</td>
                    </tr>
                    <tr>
                        <td class="type1">넓이</td>
                        <td>화면에 맞게 , 텍스트에 맞게</td>
                    </tr>
                    <tr>
                        <td class="type1">효과</td>
                        <td>Icon 유무, Icon 위치, Shadow 유무 </td>
                    </tr>                    
                    
                    <!-- Panel -->        
                    <tr>
                        <td rowspan="3" class="type1"><strong>Panel</strong></td>
                        <td class="type1">설명</td>
                        <td>Header/footer 와 함께 페이지를 구성하는 요소 </td>
                    </tr>
                    <tr>
                        <td class="type1">무늬</td>
                        <td>격자 형태 무늬 제공 </td>
                    </tr>
                    <tr>
                        <td class="type1">색상</td>
                        <td>검정, 회색, 연한회색, 흰색, 노랑, 빨강, 초록 </td>
                    </tr>
                    
                     
                    <!-- Link -->   
                    <tr>
                        <td rowspan="2" class="type1"><strong>Internal / External Link</strong></td>
                        <td class="type1">설명</td>
                        <td>표준 링크 기능을 제공 하며 기본적으로 Ajax 를 사용한 링크 방식 제공 </td>
                    </tr>
                    <tr>
                        <td class="type1">링크</td>
                        <td>페이지 내부링크,도메인 내부 링크,외부 링크,이메일 링크,폰 링크,에러 페이지 링크 </td>
                    </tr>
                    
                    <!-- Label/Text -->   
                    <tr>
                        <td rowspan="5" class="type1"><strong>Label / Text</strong></td>
                        <td class="type1">설명</td>
                        <td>색상, 배치, 크기,폰트 를 지정 할 수 있는 가이드 제공 </td>
                    </tr>
                    <tr>
                        <td class="type1">색상</td>
                        <td>초록, 빨강, 파랑</td>
                    </tr>
                    <tr>
                        <td class="type1">배치</td>
                        <td>왼쪽, 중간, 오른쪽 </td>
                    </tr>
                    <tr>
                        <td class="type1">크기</td>
                        <td>15px, 25px, 30px </td>
                    </tr>
                    <tr>
                        <td class="type1">폰트</td>
                        <td>helvetica, verdana, tahoma</td>
                    </tr>                    
                                                                                
                    <!-- Tabs --> 
       				<tr>
                        <td rowspan="5" class="type1"><strong>Tabs</strong></td>
                        <td class="type1">설명</td>
                        <td>Header와 footer 에 사용되며 탭 버튼으로 문서간 이동 기능 제공 </td>
                    </tr>
                    <tr>
                        <td class="type1">형태</td>
                        <td>round tab(radius: 0.250em), normal tab(radius: 0em)</td>
                    </tr>
                    <tr>
                        <td class="type1">배치</td>
                        <td>1, 1/2, 1/3, 1/4, 1/5, 1/2 다중행 tab</td>
                    </tr>
                    <tr>
                        <td class="type1">색상</td>
                        <td>검정, 파랑, 회색, 흰색, 노랑, 빨강, 초록  </td>
                    </tr>
                    <tr>
                        <td class="type1">효과</td>
                        <td>Icon 위치 </td>
                    </tr>
                    
                    <!-- Form -->  
                    <tr>
                        <td rowspan="3" class="type1"><strong>Form</strong></td>
                        <td class="type1">설명</td>
                        <td>HTML Form 요소를 모바일 환경에 최적화하여 제공 </td>
                    </tr>
                    <tr>
                        <td class="type1">요소</td>
                        <td>Text inputs, Search inputs, Sliders, Switches, Radio buttons, Check boxes, Selectors </td>
                    </tr>
                    <tr>
                        <td class="type1">색상</td>
                        <td>검정, 파랑, 회색, 흰색, 노랑, 빨강, 초록  </td>
                    </tr>
                    
                    <!-- Menu -->  
                    <tr>
                        <td rowspan="4" class="type1"><strong>Menu</strong></td>
                        <td class="type1">설명</td>
                        <td>Dialog, Grid, List, Collapsible 컴포넌트를 사용하여 메뉴 구성 기능 제공 </td>
                    </tr>
                    <tr>
                        <td class="type1">효과</td>
                        <td>slide, slideup, slidedown, pop, fade, flip, turn, flow, slidefade </td>
                    </tr>
                    <tr>
                        <td class="type1">형태</td>
                        <td>Dialog, Grid, List, Collapsible</td>
                    </tr>
                    <tr>
                        <td class="type1">색상</td>
                        <td>검정, 파랑, 회색, 흰색, 노랑, 빨강, 초록  </td>
                    </tr>
                    
                    <!-- Processing Dialog / Bar -->  
                    <tr>
                        <td rowspan="3" class="type1"><strong>Loader Widget</strong></td>
                        <td class="type1">설명</td>
                        <td>Ajax를 통한 페이지 전환시 loading dialof를 출력하는  Loader Widget 제공</td>
                    </tr>
                    <tr>
                    </tr>
                    <tr>
                        <td class="type1">색상</td>
                        <td>검정, 파랑, 회색, 흰색, 노랑 </td>
                    </tr>
                    
                    <!-- Dialog -->  
                    <tr>
                        <td rowspan="3" class="type1"><strong>Dialog</strong></td>
                        <td class="type1">설명</td>
                        <td>사용자와 상호 작용 할 수 있는 Dialog 기능을 제공 </td>
                    </tr>
                    <tr>
                        <td class="type1">형태</td>
                        <td>Dialog, Action Sheet, Overlay, Alert, Prompt, Confirm </td>
                    </tr>
                    <tr>
                        <td class="type1">색상</td>
                        <td>검정, 파랑, 회색, 흰색, 노랑, 빨강, 초록  </td>
                    </tr>
                    
                     <!-- Grid View -->  
                    <tr>
                        <td rowspan="2" class="type1"><strong>Grid View</strong></td>
                        <td class="type1">설명</td>
                        <td>Grid 형태로 컨텐츠를 배치 할 수 있는 컴포넌트 제공 </td>
                    </tr>
                    <tr>
                        <td class="type1">배치</td>
                        <td>1/2, 1/3, 1/4, 1/5, 가변  Grid View</td>
                    </tr>
                    
                    <!-- Table / List View -->  
                    <tr>
                        <td rowspan="4" class="type1"><strong>Table / List View</strong></td>
                        <td class="type1">설명</td>
                        <td>Table/List 형태로 컨텐츠를 배치 할 수 있는 컴포넌트 제공 </td>
                    </tr>
                    <tr>
                        <td class="type1">형태</td>
                        <td>Read-only list, Link list </td>
                    </tr>
                    <tr>
                        <td class="type1">기능</td>
                        <td>Nested List, Numbered List, Split Button, List Divider, Count Bubble, 
                        	Thumbnail, List icon, Content Formatting, Search Filter Bar, Change Mode List, Checked List </td>
                    </tr>
                    <tr>
                        <td class="type1">색상</td>
                        <td>검정, 파랑, 회색, 흰색, 노랑, 빨강, 초록  </td>
                    </tr>
                    
                    <!-- Date / Time Picker -->  
                    <tr>
                        <td rowspan="2" class="type1"><strong>Date / Time Picker</strong></td>
                        <td class="type1">설명</td>
                        <td>날짜와 시간을 선택 할 수 있는 Picker 제공 </td>
                    </tr>
                    <tr>
                        <td class="type1">형태</td>
                        <td>Android Date Picker, Popup Calendar, Android Time Picker, Flip Picker(Date, Time) </td>
                    </tr>
                    
                    <!-- Check/ Radio -->  
                    <tr>
                        <td rowspan="3" class="type1"><strong>Check/ Radio</strong></td>
                        <td class="type1">설명</td>
                        <td>Check/Radio 형태로 항목을 선택할 수 있는 기능을 제공</td>
                    </tr>
                    <tr>
                        <td class="type1">배치</td>
                        <td>vertical group, horizontal group</td>
                    </tr>
                     <tr>
                        <td class="type1">색상</td>
                        <td>검정, 파랑, 회색, 흰색, 노랑, 빨강, 초록  </td>
                    </tr>
                    
                    <!-- Icon -->  
                    <tr>
                        <td rowspan="3" class="type1"><strong>Icon</strong></td>
                        <td class="type1">설명</td>
                        <td>모바일 어플리케이션에 가장 많이 사용되는 아이콘을 제공</td>
                    </tr>
                    <tr>
                        <td class="type1">형태</td>
                        <td>arrow-l, arrow-r, arrow-u, arrow-d, delete, plus, minus, check, gear, refresh, forward, back, grid, star, alert, info, search, home, phone, mail, gps, audio, camera, file, mic, explorer</td>
                    </tr>
                     <tr>
                        <td class="type1">색상</td>
                        <td>검정, 파랑, 회색, 흰색, 노랑, 빨강, 초록  </td>
                    </tr>
                    
                    <!-- Selector / Switch -->  
                    <tr>
                        <td rowspan="8" class="type1"><strong>Selector / Switch</strong></td>
                        <td class="type1">설명</td>
                        <td>Selector/Switch 형태로 항목을 선택 할 수 있는 기능을 제공</td>
                    </tr>
                    <tr>
                        <td class="type1">효과</td>
                        <td>pop-up, list </td>
                    </tr>
                    <tr>
                        <td class="type1">기능</td>
                        <td>다중선택, 단일 선택 </td>
                    </tr>
                    <tr>
                        <td class="type1">모양</td>
                        <td>둥근 형(radius: 1em) 사각형(radius: 0em)</td>
                    </tr>
                    <tr>
                        <td class="type1">넓이</td>
                        <td>화면에 맞게 , 텍스트에 맞게</td>
                    </tr>
                    <tr>
                        <td class="type1">효과</td>
                        <td>Shadow 적용, Shadow 제거</td>
                    </tr>
                    <tr>
                        <td class="type1">형태</td>
                        <td>비그룹, 그룹</td>
                    </tr>                                                          
                    <tr>
                        <td class="type1">색상</td>
                        <td>검정, 파랑, 회색, 흰색, 노랑, 빨강, 초록  </td>
                    </tr>
                    
                    <!-- Collapsible Block -->  
                    <tr>
                        <td rowspan="3" class="type1"><strong>Collapsible Block</strong></td>
                        <td class="type1">설명</td>
                        <td>콘텐츠 영역을 접었다 펼 수 있는 컨트롤 기능 제공</td>
                    </tr>
                    <tr>
                        <td class="type1">형태</td>
                        <td>normal, Group, Nested</td>
                    </tr>
                     <tr>
                        <td class="type1">색상</td>
                        <td>검정, 파랑, 회색, 흰색, 노랑, 빨강, 초록  </td>
                    </tr>                    
                    </tbody>
                    </table>

                    <ul class="egov-txt">
                        <li>사용자 제공 UX의 기능은 위 표에 정의된 기능을 제공하며, 이외의 확장은 제한 없음</li>
                    </ul>
                    
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