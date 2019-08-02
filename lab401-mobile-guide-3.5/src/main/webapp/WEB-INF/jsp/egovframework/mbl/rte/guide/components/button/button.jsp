<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<%--
  Class Name : button.jsp
  Description :  UX button component
  Modification Information

      수정일         수정자           수정내용
    -------------    --------    ---------------------
     2011.07.14    권자영          최초 생성
     2012.08.09    박지민          1.1.1 버전에 맞춰 표준코드 Upgrade 및 기능 추가
 
    author   : 모바일 실행환경 개발팀 권자영
    since    : 2011.07.06
--%>
<!DOCTYPE html> 
<html lang="kr"> 
    <head>
        <title>UX Component - Button</title> 
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
						<h1>Button</h1>
						<p>버튼은 핵심적인 위젯으로서 여러 플러그인에서 두루 사용된다.</p>
					</div>					
					
					<div class="egov-deth1">
						<h2>기본코드</h2>
						<p>Anchor 링크에 <strong>data-role="button"</strong> 속성을 추가하면 전자정부 모바일 표준프레임워크에서 제공하는 버튼의 스타일을 적용할 수 있다. </p>
						<div class="egov-deth2">
							<a href="#" data-role="button">Button</a>
					 		<ul class="link">
					 			<li>&lt;a href="#" data-role="button"&gt;Button&lt;/a&gt;</li>
					 		</ul>
						</div>
					</div>
					
	        		<div class="egov-deth1">
						<h2>색상변경</h2>
						<p><strong>data-theme</strong> 속성 값으로 테마를 적용하여 색상을 변경한다.(총 7가지 색상 지원)</p>
						<div class="egov-deth2">
							<div data-role="controlgroup" data-type="horizontal" >				
								<a href="#" data-role="button" data-theme="a">data-theme="a" </a>
								<a href="#" data-role="button" data-theme="b">data-theme="b" </a>
								<a href="#" data-role="button" data-theme="c">data-theme="c" </a>
								<a href="#" data-role="button" data-theme="d">data-theme="d" </a>
								<a href="#" data-role="button" data-theme="e">data-theme="e" </a>
								<a href="#" data-role="button" data-theme="f">data-theme="f" </a>				
								<a href="#" data-role="button" data-theme="g">data-theme="g" </a>								
							</div>
							<ul class="link">
					 			<li>&lt;a href="index.html" data-role="button" data-theme="a"&gt; data-theme="a"&lt;/a&gt;</li>
					 			<li>&lt;a href="index.html" data-role="button" data-theme="b"&gt; data-theme="b"&lt;/a&gt;</li>
					 			<li>&lt;a href="index.html" data-role="button" data-theme="c"&gt; data-theme="c"&lt;/a&gt;</li>
					 			<li>&lt;a href="index.html" data-role="button" data-theme="d"&gt; data-theme="d"&lt;/a&gt;</li>
					 			<li>&lt;a href="index.html" data-role="button" data-theme="e"&gt; data-theme="e"&lt;/a&gt;</li>
					 			<li>&lt;a href="index.html" data-role="button" data-theme="f"&gt; data-theme="f"&lt;/a&gt;</li>
					 			<li>&lt;a href="index.html" data-role="button" data-theme="g"&gt; data-theme="g"&lt;/a&gt;</li>
					 		</ul>
						</div>
					</div>

<!-- 	               
	               	<div class="egov-deth1">
						<h2>형태변경 - 기존</h2>
						<p>기본적인 버튼의 형태는 둥근형이며 사각형을 원할 시 기본코드에 <strong>class="egov-btn-rectangle"</strong> 속성을 추가한다.</p>
						<div class="egov-deth2">
							<a href="#" data-role="button" class="egov-btn-rectangle">Rectangle</a>				
							<ul class="link">
					 			<li>&lt;a href="#" data-role="button" class="egov-btn-rectangle"&gt;Rectangle&lt;/a&gt;</li>
					 		</ul>
						</div>
					</div>
 -->
					
					<div class="egov-deth1">
						<h2>형태변경</h2>
						<p>기본적인 버튼의 형태는 둥근형이며 사각형을 원할 시 기본코드에 <strong>data-corners="false"</strong> 속성을 추가한다.</p>
						<div class="egov-deth2">
							<a href="#" data-role="button" data-corners="false">Rectangle</a>				
							<ul class="link">
					 			<li>&lt;a href="#" data-role="button" data-corners="false"&gt;Rectangle&lt;/a&gt;</li>
					 		</ul>
						</div>
					</div>
					
					<div class="egov-deth1">
						<h2>버튼 그룹</h2>
						<p>여러 버튼을 하나의 그룹으로 만들려면 controlgourp 속성을 갖는 <strong>&lt;div data-role="controlgroup"&gt;</strong> 컨테이너에 버튼을 포함시킨다.
						전자정부 모바일 표준프레임워크는 기본적으로 수직으로 배열된 버튼그룹을 생성한다.</p>
						<div class="egov-deth2">
							<div data-role="controlgroup">
								<a href="#" data-role="button">Yes</a>
			                 	<a href="#" data-role="button">No</a>
			                 	<a href="#" data-role="button">Maybe</a>
			                </div>
			                <ul class="link">
						 		<li>&lt;div data-role="controlgroup"&gt;</li>
						 		<li class="egov-txtIn1">&lt;a href="#" data-role="button"&gt;Yes&lt;/a&gt;</li>
								<li class="egov-txtIn1">&lt;a href="#" data-role="button"&gt;No&lt;/a&gt;</li>
								<li class="egov-txtIn1">&lt;a href="#" data-role="button"&gt;Maybe&lt;/a&gt;</li>
								<li>&lt;/div&gt;</li>
							</ul>
						</div>
					
						<p><strong>data-type="horizontal"</strong> 속성을 <strong>&lt;div data-role="controlgroup"&gt;</strong> 컨테이너에 추가하면 수평으로 배열된 버튼그룹을 생성할 수 있다. 
						수평으로 배열된 버튼그룹의 너비가 화면의 너비보다 넓은 경우 버튼그룹이 여러 줄로 보여질 수 있으므로 유의해야 한다.</p>
	                    <div class="egov-deth2">
							<div data-role="controlgroup" data-type="horizontal">
								<a href="#" data-role="button">Yes</a>
								<a href="#" data-role="button">No</a>
								<a href="#" data-role="button">Maybe</a>
							</div>
							<ul class="link">
								<li>&lt;div data-role="controlgroup" data-type="horizontal"&gt;</li>
							</ul>
						</div>
					</div>
					
<!-- 					
					<div class="egov-deth1">
						<h2>크기변경 - 기존</h2>
						<p>기본적으로 버튼은 block 스타일이 적용되어 자동으로 너비가 화면에 맞춰진다.
						 너비가 버튼내용에 맞춰진 버튼을 생성하려면 해당 버튼에 <strong>data-inline="true"</strong> 속성을 추가한다.</p>
						
						<div class="egov-deth2">
							<a href="#" data-role="button" data-inline="true">inline</a>
							<ul class="link">
					 			<li>&lt;a href="#" data-role="button" data-inline="true"&gt;inline&lt;/a&gt;</li>
					 		</ul>
						</div>
 					
						<p><strong>data-inline="true"</strong> 속성을 갖는 버튼을 연속적으로 배열하면 여러 버튼을 한 줄에 위치시킬 수 있다.</p>
						<div class="egov-deth2">
							<a href="#" data-role="button" data-inline="true">inline</a>
							<a href="#" data-role="button" data-inline="true">inline</a>
							<ul class="link">
								<li>&lt;a href="#" data-role="button" data-inline="true"&gt;inline&lt;/a&gt;</li>
								<li>&lt;a href="#" data-role="button" data-inline="true"&gt;inline&lt;/a&gt;</li>
							</ul>
						</div>
					
						<p>높이는 normal, small이 지원되며 small을 원할 시 기본코드에 <strong>class="egov-btn-small"</strong> 을 추가한다.</p>
						<div class="egov-deth2">
							<a href="#" data-role="button" class="egov-btn-small">Small</a>
							<ul class="link">
								<li>&lt;a href="#" data-role="button" class="egov-btn-small"&gt;Small&lt;/a&gt;</li>
							</ul>
						</div>
					</div>
-->
					
					<div class="egov-deth1">
						<h2>크기변경</h2>
						<p>기본적으로 버튼은 block 스타일이 적용되어 자동으로 너비가 화면에 맞춰진다.
						 너비가 버튼내용에 맞춰진 버튼을 생성하려면 해당 버튼에 <strong>data-inline="true"</strong> 속성을 추가한다.</p>
						
						<div class="egov-deth2">
							<a href="#" data-role="button" data-inline="true">inline</a>
							<ul class="link">
					 			<li>&lt;a href="#" data-role="button" data-inline="true"&gt;inline&lt;/a&gt;</li>
					 		</ul>
						</div>
					
						<p><strong>data-inline="true"</strong> 속성을 갖는 버튼을 연속적으로 배열하면 여러 버튼을 한 줄에 위치시킬 수 있다.</p>
						<div class="egov-deth2">
							<a href="#" data-role="button" data-inline="true">inline</a>
							<a href="#" data-role="button" data-inline="true">inline</a>
							<ul class="link">
								<li>&lt;a href="#" data-role="button" data-inline="true"&gt;inline&lt;/a&gt;</li>
								<li>&lt;a href="#" data-role="button" data-inline="true"&gt;inline&lt;/a&gt;</li>
							</ul>
						</div>
					
						<p>높이는 normal, small이 지원되며 small을 원할 시 기본코드에 <strong>data-mini="true"</strong> 를 추가한다.</p>
						<div class="egov-deth2">
							<a href="#" data-role="button" data-mini="true">Small</a>
							<ul class="link">
								<li>&lt;a href="#" data-role="button" data-mini="true"&gt;Small&lt;/a&gt;</li>
							</ul>
						</div>
					</div>
					
					<div class="egov-deth1">
						<h2>버튼 아이콘</h2>
						<p><strong>data-icon</strong> 속성을 추가하여 버튼에 <a href="<c:url value="/guide/components/icon/icon.do"/>" data-ajax="false">아이콘</a>을 추가할 수 있다.</p>
						<p>또한 <strong>data-iconpos</strong> 속성을 추가하여 아이콘이 추가될 위치<strong> (top, bottom, left, right) </strong>를 지정할 수 있다.</p>
						<div class="egov-deth2">
							<a href="#" data-role="button" data-icon="gear">Button Icon</a>							
							<a href="#" data-role="button" data-icon="gear" data-iconpos="right">Button Iconpos</a>
							<ul class="link">
								<li>&lt;a href="#" data-role="button" data-icon="gear"&gt;Button Icon&lt;/a&gt;</li>								
								<li>&lt;a href="#" data-role="button" data-icon="gear" data-iconpos="right"&gt;Button Iconpos&lt;/a&gt;</li>
							</ul>
						</div>
					</div>
					
					<div class="egov-deth1">
						<h2>그림자 효과</h2>
						<p>그림자는 기본적으로 생성되며, 그림자가 없는 버튼을 원할 시에는 <strong>data-shadow="false"</strong> 속성을 추가하여 그림자를 제거 할 수 있다.</p>
						
						<div class="egov-deth2">
							<a href="#" data-role="button" data-shadow="false">Remove Button Shadow</a>
							<ul class="link">
								<li>&lt;a href="#" data-role="button" data-shadow="false"&gt;Remove Button Shadow&lt;/a&gt;</li>
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
				 <h4>Copyright(c)2012 Ministry of Government Administration and Home Affairs.</h4>
			</div>
			<!-- footer end --> 
			
		</div>
		<!-- page end -->
	
    </body>
</html>