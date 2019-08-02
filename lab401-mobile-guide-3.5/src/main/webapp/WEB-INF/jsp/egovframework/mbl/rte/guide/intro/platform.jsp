<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Class Name : platform.jsp
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
						<h1>지원 플랫폼</h1>
					</div>
                    
                    <table class="egov-table-platform">
                    <colgroup><col class="egov-colwidth20"><col class="egov-colwidth16"><col class="egov-colwidth16"><col class="egov-colwidth16"><col class="egov-colwidth16"></colgroup>
                    <thead>
                    <tr >
                        <th>컴포넌트</th>
                        <th><img src="<c:url value="/images/egovframework/mbl/rte/guide/ic_safari.png"  />" alt="safaribrowser" ></th>
                        <th><img src="<c:url value="/images/egovframework/mbl/rte/guide/ic_android.png"  />" alt="androidbrowser" ></th>
                        <th><img src="<c:url value="/images/egovframework/mbl/rte/guide/ic_chrome.png"  />" alt="chromebrowser" ></th>
                        <th><img src="<c:url value="/images/egovframework/mbl/rte/guide/ic_fafox.png"  />" alt="firefoxbrowser" ></th>
                        <th><img src="<c:url value="/images/egovframework/mbl/rte/guide/ic_opera.png"  />" alt="operabrowser" ></th>
                    </tr>
                    <tr class="type2">
                        <td>지원버젼</td>
                        <td>5.1 ↑</td>
                        <td>4.0 ↑</td>
                        <td>18.0 ↑</td>
                        <td>16.0 ↑</td>
                        <td>12.0 ↑</td>
                    </tr>
                    </thead>
                        <tbody>                  	
                        <tr>
                            <td><strong>Button</strong></td>
                            <td>O</td>
                            <td>O</td>
                            <td>O</td>
                            <td>O</td>
                            <td>O</td>
                        </tr>
                        <tr>
                            <td><strong>Panel</strong></td>
                            <td>O</td>
                            <td>O</td>
                            <td>O</td>
                            <td>O</td>
                            <td>O</td>
                        </tr>
                        <tr>
                            <td><strong>Internal/External Link</strong></td>
                            <td>O</td>
                            <td>O</td>
                            <td>O</td>
                            <td>O</td>
                            <td>O</td>
                        </tr>
                        <tr>
                            <td><strong>Label/Text</strong></td>
                            <td>O</td>
                            <td>O</td>
                            <td>O</td>
                            <td>O</td>
                            <td>O</td>
                        </tr>
                        <tr>
                            <td><strong>Tabs</strong></td>
                            <td>O</td>
                            <td>O</td>
                            <td>O</td>
                            <td>O</td>
                            <td>O</td>
                        </tr>
                        <tr>
                            <td><strong>Form</strong></td>
                            <td>O</td>
                            <td>O</td>
                            <td>O</td>
                            <td>O</td>
                            <td>O</td>
                        </tr>
                        <tr>
                            <td><strong>Menu</strong></td>
                            <td>O</td>
                            <td>O</td>
                            <td>O</td>
                            <td>O</td>
                            <td>O</td>
                        </tr>
                        <tr>
                            <td><strong>Processing Dialog / Bar</strong></td>
                            <td>O</td>
                            <td>O</td>
                            <td>O</td>
                            <td>O</td>
                            <td>O</td>
                        </tr>
                        <tr>
                            <td><strong>Dialog</strong></td>
                            <td>O</td>
                            <td>O</td>
                            <td>O</td>
                            <td>O</td>
                            <td>O</td>
                        </tr>
                        <tr>
                            <td><strong>Grid View</strong></td>
                            <td>O</td>
                            <td>O</td>
                            <td>O</td>
                            <td>O</td>
                            <td>O</td>
                        </tr>
                        <tr>
                            <td><strong>Table / List View</strong></td>
                            <td>O</td>
                            <td>O</td>
                            <td>O</td>
                            <td>O</td>
                            <td>O</td>
                        </tr>
                        <tr>
                            <td><strong>Date / Time Picker</strong></td>
                            <td>O</td>
                            <td>O</td>
                            <td>O</td>
                            <td>O</td>
                            <td>O</td>
                        </tr>
                        <tr>
                            <td><strong>Check/ Radio</strong></td>
                            <td>O</td>
                            <td>O</td>
                            <td>O</td>
                            <td>O</td>
                            <td>O</td>
                        </tr>
                        <tr>
                            <td><strong>Icon</strong></td>
                            <td>O</td>
                            <td>O</td>
                            <td>O</td>
                            <td>O</td>
                            <td>O</td>
                        </tr>
                        <tr>
                            <td><strong>Selector / Switch</strong></td>
                            <td>O</td>
                            <td>O</td>
                            <td>O</td>
                            <td>O</td>
                            <td>O</td>
                        </tr>
                        <tr>
                            <td><strong>Collapsible Block</strong></td>
                            <td>O</td>
                            <td>O</td>
                            <td>O</td>
                            <td>O</td>
                            <td>O</td>
                        </tr>                        
                   	</tbody>                     
                    </table>

					<ul class="egov-txt">
						<li>기준일 :2011.11.15</li>
						<li>행정안전부 고시 "제 2010-40호" 「전자정부서비스 호환성 준수지침」의 모바일 웹 방식 서비스 개발을 위한 기술 표준 지침 에 따라 최소 3종 이상의 웹 브라우저에서 동등한 서비스 제공 기능을 지원 합니다.</li>
					</ul>
                   
					<div class="egov-Dsclaimer">
						<h2>제약사항</h2>
						<p> - Opera Mobile 11.50 이하 버젼의 브라우져의 경우  UX Component의 gradient 효과가 적용되지 않아 일부 컴포넌트의 모양이 다를 수 있습니다.<br>
						  - Internet Explorer 8 이하 버젼의 브라우져의 경우  정상지원되지 않습니다.<br>
						  - Generate Guide의 일부 컴포넌트는 Iframe 내에서 정상적으로 표현되지 않을 수 있습니다. 하지만 일반 HTML 코드에서는 정상적으로 표현됩니다.<br>
						  - 일부 Animation 효과는 오페라 브라우저 및 특정 환경에서 동작하지 않을 수 있습니다.						  
						</p>							
					</div>

	             </div> 
	            
	             <div class="content-secondary"> 
					<jsp:include page="../introMenu.jsp"></jsp:include>
				</div>
			</div>	             
            
			<!-- footer start -->
			<div data-role="footer" data-theme="z" class="egovBar">
				<h4>Copyright(c)2012 Ministry of Government Administration and Home Affairs.</h4>
			</div>
			<!-- footer end --> 
      
         </div> 
     </body>
 </html>