<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Class Name : progress.jsp
  Description :  Loader Widget component
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
        <title>Loader Widget</title> 
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

        <script type="text/javascript">
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
						<h1>Loader Widget</h1>
						<p>Ajax를 통한 컨텐츠 전환 시 loading dialog를 출력하는 역활을 한다.</p>
					</div>
            
					<div class="egov-deth1">
						<h2>기본코드</h2>
						<p>pageinit 이벤트에 <strong>$.mobile.loader.prototype.options</strong> 관련 속성을 추가하면 Loader Widget을 적용할 수 있다. </p>
						<div class="egov-deth2">
					 		<ul class="link">					 			
					 			<li class="egov-txtIn1">$( document ).on( "pageinit", function() {</li>
  								<li class="egov-txtIn2">$.mobile.loader.prototype.options.text = "loading";</li>
  								<li class="egov-txtIn2">$.mobile.loader.prototype.options.textVisible = false;</li>
  								<li class="egov-txtIn2">$.mobile.loader.prototype.options.theme = "a";</li>
  								<li class="egov-txtIn2">$.mobile.loader.prototype.options.html = "";</li>
								<li class="egov-txtIn1">});</li>
					 		</ul>
						</div>
						
						<p>또는 <strong>$.mobile.loading</strong> 메소드를 이용한 설정도 가능한다. </p>
						<div class="egov-deth2">
					 		<ul class="link">					 			
					 			<li class="egov-txtIn1">$.mobile.loading( "show", {</li>
  								<li class="egov-txtIn2">text: "foo",</li>
  								<li class="egov-txtIn2">textVisible: true,</li>
  								<li class="egov-txtIn2">theme: "z",</li>
  								<li class="egov-txtIn2">html: ""</li>
								<li class="egov-txtIn1">});</li>
					 		</ul>
						</div>
					</div>   
					
					<div class="egov-deth1">
						<h2>Option</h2>
						<p> <strong>html </strong></p>
						<p>비어있지 않은 문자열로 값을 설정하는 경우 Loader의 내부 HTML을 교체하는데 사용된다. </p>
						<div class="egov-deth2">
					 		<ul class="link">					 			
					 			<li class="egov-txtIn1">$( ".selector" ).loading({ html: "&lt;span class="ui-icon ui-icon-loading"&gt;&lt;img src="jquery-logo.png" /&gt;&lt;h2&gt;is loading for you ...&lt;/h2&gt;&lt;/span&gt;" });</li>
					 		</ul>
						</div>
						
						<p> <strong>text </strong></p>
						<p>로딩 메세지의 텍스트값을 세팅한다. </p>
						<div class="egov-deth2">
					 		<ul class="link">					 			
					 			<li class="egov-txtIn1">$( ".selector" ).loading({ text: "Loading Page..." });</li>
					 		</ul>
						</div>
						
						<p> <strong>textVisible </strong></p>
						<p>true로 성정될 경우 텍스트 값이 사용된다. </p>
						<div class="egov-deth2">
					 		<ul class="link">					 			
					 			<li class="egov-txtIn1">$( ".selector" ).loading({ textVisible: true });</li>
					 		</ul>
						</div>
						
						<p> <strong>textonly </strong></p>
						<p>true로 설정될 경우 "spinner" 이미지를 보이지 않고 텍스트 메세지 만을 사용한다. </p>
						<div class="egov-deth2">
					 		<ul class="link">					 			
					 			<li class="egov-txtIn1">$( ".selector" ).loading({ textonly: true });</li>
					 		</ul>
						</div>
						
						<p> <strong>theme </strong></p>
						<p>Loader widget의 테마 색상을 설정한다. </p>
						<div class="egov-deth2">
					 		<ul class="link">					 			
					 			<li class="egov-txtIn1">$( ".selector" ).loading({ theme: "b" });</li>
					 		</ul>
						</div>
						
					</div> 
					
					<div class="egov-deth1">
						<h2>Methods</h2>
						<p> <strong>checkLoaderPosition() </strong></p>
						<p>loader의 위치가 중앙에 고정되어 나타나는지 확인한다. </p>
						<div class="egov-deth2">
					 		<ul class="link">					 			
					 			<li class="egov-txtIn1">$( ".selector" ).loading( "checkLoaderPosition" );</li>
					 		</ul>
						</div>
						
						<p> <strong>fakeFixLoader() </strong></p>
						<p>고정 loader를 지원하지 않는 브라우저의 경우, 중앙 위치에 loader를 위치시킨다. </p>
						<div class="egov-deth2">
					 		<ul class="link">					 			
					 			<li class="egov-txtIn1">$( ".selector" ).loading({ text: "Loading Page..." });</li>
					 		</ul>
						</div>
						
						<p> <strong>hide() </strong></p>
						<p>loader widget을 숨긴다. </p>
						<div class="egov-deth2">
					 		<ul class="link">					 			
					 			<li class="egov-txtIn1">$( ".selector" ).loading( "hide" );</li>
					 		</ul>
						</div>
						
						<p> <strong><s>hidePageLoadingMsg()</s> </strong></p>
						<p>$.mobile.showPageLoadingMsg()를 통해 설정 된 loader 메세지를 숨긴다.<br>
						 version 1.2에서 deprecate 되었으며 version 1.4에서 제거 되었다.<br>
						 $.mobile.loading('hide')로 대체한다.</p>
						
						<p> <strong>loading() </strong></p>
						<p>$.mobile.loader를 통해 구성 된 Loader message를 표시하거나 숨긴다. </p>
						<div class="egov-deth2">
					 		<ul class="link">					 			
					 			<li class="egov-txtIn1">$( ".selector" ).loading( "loading" );</li>
					 		</ul>
						</div>
						
						<p> <strong>resetHtml() </strong></p>
						<p>HTML 설정을 초기화한다. </p>
						<div class="egov-deth2">
					 		<ul class="link">					 			
					 			<li class="egov-txtIn1">$( ".selector" ).loading( "resetHtml" );</li>
					 		</ul>
						</div>
						
						<p> <strong>show() </strong></p>
						<p>loader를 출력한다. </p>
						<div class="egov-deth2">
					 		<ul class="link">					 			
					 			<li class="egov-txtIn1">$( ".selector" ).loading( "show" );</li>
					 		</ul>
						</div>
						
						<p> <strong><s>showPageLoadingMsg()</s> </strong></p>
						<p>Page loading 메세지를 출력한다.<br>
							version 1.2에서 deprecate 되었으며 version 1.4에서 제거 되었다.<br>
							$.mobile.loading('show')로 대체한다.</p>
						<div class="egov-deth2">
					 		<ul class="link">					 			
					 			<li class="egov-txtIn1">$.mobile.loading( 'show', { theme: "b", text: "This is only a test", textonly: true });</li>
					 		</ul>
						</div>
						
					</div>  
					
					<div class="egov-deth1">
						<h2>Events</h2>
						<p> <strong>create( event, ui ) </strong></p>
						<p>loader widget이 생성될 경우 발생한다. </p>
						
					</div>
					
					<div class="egov-deth1">
						<h2>Example</h2>					
						
						<div class="egov-deth2">
					 		<ul class="link">					 			
                                <li class="egov-txtIn1">&lt;div data-role="page" id="page1"&gt;</li>
                                <li class="egov-txtIn2">&lt;div data-role="content"&gt;</li>                            
                                <li class="egov-txtIn3">&lt;div data-role="controlgroup"&gt;</li>                                 
                                <li class="egov-txtIn4">&lt;button class="show-page-loading-msg" data-theme="a" data-textonly="false" data-textvisible="false" </li>                                 
                                <li class="egov-txtIn4">data-msgtext="" data-icon="arrow-r" data-iconpos="right"p"&gt;Default loader&lt;/button&gt;</li>
                                <li class="egov-txtIn4">&lt;button class="show-page-loading-msg" data-theme="a" data-textonly="true" data-textvisible="true" </li>                                 
                                <li class="egov-txtIn4">data-msgtext="Text only loader" data-icon="arrow-r" data-iconpos="right"&gt;Text only&lt;/button&gt;</li>
                                <li class="egov-txtIn4">&lt;button class="show-page-loading-msg" data-theme="a" data-textonly="false" data-textvisible="true" </li>                                 
                                <li class="egov-txtIn4">data-msgtext="Loading theme a" data-icon="arrow-r" data-iconpos="right"&gt;Theme a&lt;/button&gt;</li>
                                <li class="egov-txtIn4">&lt;button class="show-page-loading-msg" data-theme="b" data-textonly="false" data-textvisible="true" </li>                                 
                                <li class="egov-txtIn4">data-msgtext="Loading theme b" data-icon="arrow-r" data-iconpos="right"&gt;Theme b&lt;/button&gt;</li>
                                <li class="egov-txtIn4">&lt;button class="show-page-loading-msg" data-theme="c" data-textonly="false" data-textvisible="true" </li>                                 
                                <li class="egov-txtIn4">data-msgtext="Loading theme c" data-icon="arrow-r" data-iconpos="right"&gt;Theme c&lt;/button&gt;</li>
                                <li class="egov-txtIn4">&lt;button class="show-page-loading-msg" data-theme="d" data-textonly="false" data-textvisible="true" </li>                                 
                                <li class="egov-txtIn4">data-msgtext="Loading theme d" data-icon="arrow-r" data-iconpos="right"&gt;Theme d&lt;/button&gt;</li>
                                <li class="egov-txtIn4">&lt;button class="show-page-loading-msg" data-theme="e" data-textonly="false" data-textvisible="true" </li>                                 
                                <li class="egov-txtIn4">data-msgtext="Loading theme e" data-icon="arrow-r" data-iconpos="right"&gt;Theme e&lt;/button&gt;</li>
                                <li class="egov-txtIn4">&lt;button class="show-page-loading-msg" data-theme="a" data-textonly="true" data-textvisible="true" </li>                                 
                                <li class="egov-txtIn4">data-msgtext="Custom Loader" data-icon="arrow-r" data-html="&lt;span class='ui-bar ui-overlay-c ui-corner-all'&gt;</li>
                                <li class="egov-txtIn4">&lt;img src='../_assets/images/jquery-logo.png' /&gt;&lt;h2&gt;is loading for you ...&lt;/h2&gt;&lt;/span&gt"</li>
                                <li class="egov-txtIn4">data-iconpos="right"ble="false" data-msgtext="" data-icon="arrow-r" data-iconpos="right"p"&gt;Custom HTML&lt;/button&gt;</li>                    
                                <li class="egov-txtIn4">&lt;button class="hide-page-loading-msg" data-icon="delete" data-iconpos="right"&gt;Hide&lt;/button&gt;</li>
                                </br>
                                <li class="egov-txtIn1">&lt;script&gt;</li> 
                                <li class="egov-txtIn1">$(document).on( "click", ".show-page-loading-msg", function() {</li> 
                                <li class="egov-txtIn2">var $this = $( this ),</li> 
                                <li class="egov-txtIn2">theme = $this.jqmData( "theme" ) || $.mobile.loader.prototype.options.theme,</li> 
                                <li class="egov-txtIn2">msgText = $this.jqmData( "msgtext" ) || $.mobile.loader.prototype.options.text,</li> 
                                <li class="egov-txtIn2">textVisible = $this.jqmData( "textvisible" ) || $.mobile.loader.prototype.options.textVisible,</li> 
                                <li class="egov-txtIn2">textonly = !!$this.jqmData( "textonly" );</li> 
                                <li class="egov-txtIn2">html = $this.jqmData( "html" ) || "";</li> 
                                <li class="egov-txtIn1">$.mobile.loading( 'show', {</li> 
                                <li class="egov-txtIn2">text: msgText,</li> 
                                <li class="egov-txtIn2">textVisible: textVisible,</li> 
                                <li class="egov-txtIn2">theme: theme,</li> 
                                <li class="egov-txtIn2">textonly: textonly,</li> 
                                <li class="egov-txtIn2">html: html</li> 
                                <li class="egov-txtIn2">});</li> 
                                <li class="egov-txtIn1">})</li> 
                                <li class="egov-txtIn1">.on( "click", ".hide-page-loading-msg", function() {</li> 
                                <li class="egov-txtIn2"> $.mobile.loading( "hide" );</li> 
                                <li class="egov-txtIn1">});</li>                         
                                <li class="egov-txtIn1">&lt;/script&gt;</li>
					 		</ul>
						</div>						
																		
					    <div data-role="controlgroup">
					      <button class="show-page-loading-msg" data-theme="a" data-textonly="false" data-textvisible="false" data-msgtext="" data-icon="arrow-r" data-iconpos="right">Default loader</button>
					      <button class="show-page-loading-msg" data-theme="a" data-textonly="true" data-textvisible="true" data-msgtext="Text only loader" data-icon="arrow-r" data-iconpos="right">Text only</button>
					      <button class="show-page-loading-msg" data-theme="a" data-textonly="false" data-textvisible="true" data-msgtext="Loading theme a" data-icon="arrow-r" data-iconpos="right">Theme a</button>
					      <button class="show-page-loading-msg" data-theme="b" data-textonly="false" data-textvisible="true" data-msgtext="Loading theme b" data-icon="arrow-r" data-iconpos="right">Theme b</button>
					      <button class="show-page-loading-msg" data-theme="c" data-textonly="false" data-textvisible="true" data-msgtext="Loading theme c" data-icon="arrow-r" data-iconpos="right">Theme c</button>
					      <button class="show-page-loading-msg" data-theme="d" data-textonly="false" data-textvisible="true" data-msgtext="Loading theme d" data-icon="arrow-r" data-iconpos="right">Theme d</button>
					      <button class="show-page-loading-msg" data-theme="e" data-textonly="false" data-textvisible="true" data-msgtext="Loading theme e" data-icon="arrow-r" data-iconpos="right">Theme e</button>
					      <button class="show-page-loading-msg" data-theme="a" data-textonly="true" data-textvisible="true" data-msgtext="Custom Loader" data-icon="arrow-r" data-html="<span class='ui-bar ui-overlay-c ui-corner-all'><img src='../../../images/egovframework/mbl/cmm/07734.png' /><h2>is loading for you ...</h2></span>" data-iconpos="right">Custom HTML</button>
					      <button class="hide-page-loading-msg" data-icon="delete" data-iconpos="right">Hide</button>            
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
        
    </body>

</html>