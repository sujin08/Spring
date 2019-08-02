<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Class Name : dialog.jsp
  Description :  UX dialog component
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
    <title>UX Component - Dialog</title> 
        <meta name="viewport" content="width=device-width, initial-scale=1"> 
            
        <!-- eGovFrame Common import -->
        <link rel="stylesheet" href="<c:url value="/css/egovframework/mbl/cmm/jquery.mobile-1.4.5.css" />" />
        <link rel="stylesheet" href="<c:url value="/css/egovframework/mbl/cmm/EgovMobile-1.4.5.css" />" />
        <script type="text/javascript" src="<c:url value="/js/egovframework/mbl/cmm/jquery-1.11.2.min.js"/>"></script>
		 
        <script type="text/javascript" src="<c:url value="/js/egovframework/mbl/cmm/jquery.mobile-1.4.5.min.js" />"></script>
        <script type="text/javascript" src="<c:url value="/js/egovframework/mbl/cmm/EgovMobile-1.4.5.js" />"></script>
    
        <!-- guide import -->
        <link rel="stylesheet" href="<c:url value="/css/egovframework/mbl/rte/guide/guide.css" />">
        <script type="text/javascript"  src="<c:url value="/js/egovframework/mbl/rte/guide/guide.js"/>"></script>
        
	    <script type="text/javascript"> 
	            $(document).ready( function() {
	                //Action sheet
	                $("#actionsheet_dialog").click( function() {            
	                    var btmItem = [{id : 'button1', value: "커피"},
	                                            {id : 'button2', value: "사이다"},
	                                                {id : 'button3', value: "맥주"}];
	                    jActionSheet('Can you make a choice?', 'Action sheet Dialog', 'a', btmItem , function(r) {
	                        $('#actionsheetOut').text(r);
	                    });
	                });
	                //Overlay
	                $("#overlay_dialog").click( function() {
	                    jOverlay('This is a Overbox', 'OverLay', 'a');
	                });
	                
	                $("#alert_dialog").click( function() {
	                    jAlert('This is a alert box', 'Alert Dialog', 'a');
	                });
	                
	                $("#confirm_dialog").click( function() {
	                    jConfirm('Can you confirm this?', 'Confirmation Dialog', 'a', function(r) {
	                    });
	                });
	                
	                $("#prompt_dialog").click( function() {
	                    jPrompt('Type something:', 'Prompt Dialog', 'a', function(r) {
	                    $('#promptOut').text(r);
	                    }); 
	                });
	                
                  //Overlay
                    $("#changeOverlay").click( function() {
                    	jOverlay('e 테마 적용', 'EgovFrame', 'e');
                    });
                  

	            });         
        </script>        
		<script type="text/javascript"> 
			$(function(){
				$('#example').hide();
				$('#exampleView').bind('vclick',function(e)
				{
					$('#example').toggle();
				})	
			});
		</script>        
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
                        <h1>Dialog</h1>
                        <p>기본 다이얼로그는 Anchor 링크가 있는 곳에 다이얼로그를 나타 낼수있으며 다이얼로그 속성이 지정되면
                              대화상자 효과를 나타내기 위하여 주위 여백이 어두운 배경으로 나타난다. </p>
                    </div>

					<div class="egov-Dsclaimer">
						<h2>유의사항</h2>
						<p>Ajax로 도메인 내부링크를 연결 후 Dialog를 호출하면 정상페이지가 아닌 이전 페이지가 출력된다.<br>
						이를 방지 하기 위해 첫 도메인 내부링크는 data-ajax="false" 또는 rel="external"를 선언하여 페이지를 호출한다.<br>
						<div class="btnDsc"><a href="#" data-role="none"><span class="btnViewSample" id="exampleView">예시보기</span></a></div>
						<div id = "example">
							<div class="egov-Example">
								<p>A.jsp</p>
								<ul class="link">
									<li>&lt;a href="B.jsp" data-role="button" <strong>data-ajax="false"</strong>&gt;Go To 2nd Page&lt;/a&gt;</li>
									<li>&lt;a href="B.jsp" data-role="button" <strong>rel="external"</strong>&gt;Go To 2nd Page&lt;/a&gt;</li>
								</ul>
							</div>
							<div class="egov-Example">
								<p>B.jsp</p>
								<ul class="link">
									<li>&lt;--main page start--&gt;</li>
									<li>&lt;div data-role="page" id=main&gt;</li>
									<li class="egov-txtIn1">&lt;div data-role="header" data-theme="b"&gt;</li>
									<li class="egov-txtIn1">...</li>
									<li class="egov-txtIn1">&lt;/div&gt;</li>
									<li class="egov-txtIn1">&lt;div data-role="content"&gt;</li>
									<li class="egov-txtIn2">&lt;h1&gt;This is #One&lt;/h1&gt;</li>
									<li class="egov-txtIn2">&lt;a href="#sub" data-role="button" data-rel="dialog"&gt;Go to the #sub&lt;/a&gt;</li>
									<li class="egov-txtIn1">&lt;/div&gt;</li>
									<li class="egov-txtIn1">...</li>
									<li>&lt;/div&gt;</li>
									<li>&lt;--sub page start--&gt;</li>
									<li>&lt;div data-role="page" id="sub"&gt;</li>
									<li class="egov-txtIn1">...</li>
									<li>&lt;/div&gt;</li>
								</ul>
							</div>
						</div>
					</div>	

                    <div class="egov-deth1">
                        <h2>기본 코드</h2>
                        <p>다이얼로그를 새 창으로 전환 할 경우 팝업 효과 등으로 나타 낼 수 있으며
                             Anchor Tag에 data-rel="dialog"를 추가 하면 다이얼로그 효과가 나타난다. 
                        </p>
                        <div class="egov-deth2">
                                <a href="<c:url value="/guide/components/dialog/back.do" />" data-rel="dialog" data-role="button">Open dialog</a>
                            <ul class="link">
                                <li>&lt;a href="/guide/components/back.do" data-rel="dialog" data-role="button"&gt;Open dialog&lt;/a&gt;</li>

                            </ul>
                        </div>
                    </div>
                    
                    <div class="egov-deth1">
                        <h2>효과 변경</h2>
                        <p>기본 다이얼로그 효과는 팝업 효과 이며, 다른 전환 효과를 나타낼 경우 기본 코드에 
                        <strong>data-transition="[slide, slideup, slidedown, pop, fade, flip]"</strong>를 넣어 준다.</p>
                        <div class="egov-deth2">
                                <a href="<c:url value="/guide/components/dialog/back.do" />" data-role="button" data-rel="dialog" data-transition="slide">slide</a>
                                <a href="<c:url value="/guide/components/dialog/back.do" />" data-role="button" data-rel="dialog" data-transition="slideup">slideup</a>
                                <a href="<c:url value="/guide/components/dialog/back.do" />" data-role="button" data-rel="dialog" data-transition="slidedown">slidedown</a>
                                <a href="<c:url value="/guide/components/dialog/back.do" />" data-role="button" data-rel="dialog" data-transition="pop">pop</a>
                                <a href="<c:url value="/guide/components/dialog/back.do" />" data-role="button" data-rel="dialog" data-transition="fade">fade</a>
                                <a href="<c:url value="/guide/components/dialog/back.do" />" data-role="button" data-rel="dialog" data-transition="flip">flip </a>
                                <a href="<c:url value="/guide/components/dialog/back.do" />" data-role="button" data-rel="dialog" data-transition="turn">turn </a>
                                <a href="<c:url value="/guide/components/dialog/back.do" />" data-role="button" data-rel="dialog" data-transition="flow">flow </a>
                                <a href="<c:url value="/guide/components/dialog/back.do" />" data-role="button" data-rel="dialog" data-transition="slidefade">slidefade </a>
                            <ul class="link">
                                 <li>&lt;a href="/guide/components/dialog/back.do" data-role="button" data-rel="dialog" data-transition="slide"&gt;slide&lt;/a&gt;</li>
                                 <li>&lt;a href="/guide/components/dialog/back.do" data-role="button" data-rel="dialog" data-transition="slideup"&gt;slideup&lt;/a&gt;</li>
                                 <li>&lt;a href="/guide/components/dialog/back.do" data-role="button" data-rel="dialog" data-transition="slidedown"&gt;slidedown&lt;/a&gt;</li>
                                 <li>&lt;a href="/guide/components/dialog/back.do" data-role="button" data-rel="dialog" data-transition="pop"&gt;pop&lt;/a&gt;</li>
                                 <li>&lt;a href="/guide/components/dialog/back.do" data-role="button" data-rel="dialog" data-transition="fade"&gt;fade&lt;/a&gt;</li>
                                 <li>&lt;a href="/guide/components/dialog/back.do" data-role="button" data-rel="dialog" data-transition="flip"&gt;flip&lt;/a&gt;</li>
                                 <li>&lt;a href="/guide/components/dialog/back.do" data-role="button" data-rel="dialog" data-transition="turn"&gt;turn&lt;/a&gt;</li>
                                 <li>&lt;a href="/guide/components/dialog/back.do" data-role="button" data-rel="dialog" data-transition="flow"&gt;flow&lt;/a&gt;</li>
                                 <li>&lt;a href="/guide/components/dialog/back.do" data-role="button" data-rel="dialog" data-transition="slidefade"&gt;slidefade&lt;/a&gt;</li>                            
                            </ul>
                        </div>
                    </div>
                   
                    <div class="egov-deth1">
                        <h2>기타 Dialog</h2>
                        <p>기타 Dialog는 자바 스크립트를 이용하여 Alert, Confirm 등의 창을 띄운다. 아래 스크립트 코드를  EgovMobile.js와 jquery.mobile-1.1.1.js 사이에 선언하여 이벤트를 걸어 사용한다.
                        	  각 Dialog는 Dialog의 id값을 참조하여 스크립트가 실행된다.</p>
                    </div>
                    <dl class="egov-deth3">
                        <dt>Action sheet</dt>
                        <dd>여러 선택창을 Dialog로 선택할 경우 사용되며 'jActionSheet' 함수를 지정하여 지정하여 사용한다.</dd>
                    </dl>
					<div class="egov-deth2">
                         <input id="actionsheet_dialog" type="button" value="Action Sheet" />
                          <strong>you entered :  <span id="actionsheetOut"></span></strong> <br/>                  
                        <ul class="link">
                                <li>$("#actionsheet_dialog").click( function() {            </li>
                                <li class="egov-txtIn1">var btmItem = [{id : 'button1', value: "커피"},       </li>
                                <li class="egov-txtIn2">{id : 'button2', value: "사이다"},   </li>
                                <li class="egov-txtIn2">{id : 'button3', value: "맥주"}]; </li>
                                <li class="egov-txtIn1">jActionSheet('Can you make a choice?', 'Action sheet Dialog', 'a', btmItem , function(r) { </li>
                                <li class="egov-txtIn2">$('#actionsheetOut').text(r);</li>
                                <li class="egov-txtIn1">});</li>
                                <li>});</li>
                        </ul>
                    </div>
                    
                    <dl class="egov-deth3">
                        <dt>Overlay</dt>
                        <dd>이벤트 링크에 대한 부가 설명 등을 할 때 사용되며 해당 'jOverlay' 함수를 사용하며 이벤트가 걸리면 사라진다.</dd>
                    </dl>
                    <div class="egov-deth2">
                       <input id="overlay_dialog" type="button" value="Overlay" />
                        <ul class="link">
                            <li>$("#overlay_dialog").click( function() {</li>
                            <li class="egov-txtIn1">jOverlay('This is a Overbox', 'OverLay', 'a');</li>
                            <li>});</li>
                        </ul>
                    </div>

                    <dl class="egov-deth3">
                        <dt>Alert</dt>
                        <dd>알림 창이며 'jAlert' 함수를 이용하며 확인 버튼을 누르면 창이 사라진다.</dd>
                    </dl>
					<div class="egov-deth2">
                         <input id="alert_dialog" type="button" value="Show Alert" />
                         <ul class="link">
                                 <li>$("#alert_dialog").click( function() {</li>
                                 <li class="egov-txtIn1">jAlert('This is a custom alert box', 'Alert Dialog', 'a');</li>
                                 <li>});</li>
                         </ul>
                     </div>
                        
                    <dl class="egov-deth3">
                        <dt>confirm</dt>
                        <dd>확인 창이며 jConfirm 함수를 이용하며 확인 또는 닫기 버튼을 누르면 창이 사라진다..</dd>
                    </dl>
                    <div class="egov-deth2">
                        <input id="confirm_dialog" type="button" value="Show Confirm"/>
                        <ul class="link">
                            <li>$("#confirm_dialog").click( function() {</li>
                            <li class="egov-txtIn1">jConfirm('Can you confirm this?', 'Confirmation Dialog', 'a', function(r) {</li>
                            <li>});});</li>
                        </ul>
                    </div>                                             
                            
                    <dl class="egov-deth3">
                        <dt>prompt</dt>
                        <dd>문자를 입력할 수 있는 창이 나타나며 'jPrompt' 함수를 이용, 확인 버튼을 누르면 문자가 입력된다.</dd>
                    </dl>
                    <div class="egov-deth2">
                       <input id="prompt_dialog" type="button" value="Show Prompt" />
                       <strong>you entered :   <span id="promptOut"></span></strong>
                       <ul class="link">
                               <li>$("#prompt_dialog").click( function() {</li>
                               <li class="egov-txtIn1">jPrompt('Type something:', 'Prefilled value', 'Prompt Dialog', 'a', function(r) {</li>
                               <li class="egov-txtIn2">$('#promptOut').text(r);</li>
                               <li class="egov-txtIn1">});</li>
                               <li>});</li>
                       </ul>
                   </div>

                    <dl class="egov-deth3">
                        <dt>색상 변경</dt>
                        <dd>기타 Dialog는 색상을 변경 할 수 있는 문자를 입력 받을 수 있으며 세번째 파마리터로 색상을 지정 할 수 있다. 
                                 또한 색상 파라미터는 <a href ="<c:url value="/guide/components/pageStructure/theme.do"/>"> 총 7가지 색상</a>을 지원하며 null 값이 입력 되는 경우 상위 테마를 적용한다. </dd>
                    </dl>
                    <div class="egov-deth2">
                       <input id="changeOverlay"  type="button"  value="Overlay 색상 변경" />
                                              
                       <ul class="link">
                               <li>jOverlay('e 테마 적용', 'EgovFrame', 'e');</li>
                       </ul>
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
                 <h4>Copyright(c)2012 Ministry of Government Administration and Home Affairs.</h4>
            </div>
            <!-- footer end --> 
            
        </div>
        <!-- page end -->
    
    </body>

</html>