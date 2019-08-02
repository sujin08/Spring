<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Class Name : collapsible.jsp
  Description :  UX cikkaosible box component
  Modification Information

      수정일         수정자           수정내용
    -------------    --------    ---------------------
     2011.07.14    황민희          최초 생성
 
    author   : 모바일 실행환경 개발팀 황민희
    since    : 2011.10.05
--%>
<!DOCTYPE html> 
<html lang="kr"> 
    <head>
    <title>UX Component - Collapsible</title> 
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
						<h1>Collapsible Block</h1>
						<p>Collapsible Block은 콘텐츠 영역을 접었다 펼 수 있는 컨트롤이다.</p>
					</div>
					
					<div class="egov-deth1">
						<h2>기본코드</h2>
						<p>Collapsible Block을 이용하기 위해서는 블럭을 만들려는 컨텐츠를 감싸고 있는 div Tag에
							<strong>data-role="collapsible"</strong>을 추가 한다. 이때 div Tag안에 처음 정의된 헤더 테그가 collapsible Block의
							타이틀로 사용되며 접힘/펼침을 시각적으로 표현하기 위한 +,- 아이콘이 타이틀 앞에 자동으로 추가 된다. 아이콘 위치는 collapsible Block 내에
							<strong>data-iconpos=[top, bottom, right, left]</strong> 로 변경할 수 있으며, 또한 처음 화면을 로드 할 때
							Block이 펼쳐있는 상태를 원할 시에는 감싸고 있는 div Tab에 <strong>data-collapsed="false"</strong>을 추가한다.
						</p>
						<div class="egov-deth2">
							<div data-role="collapsible" data-collapsed="false"> 
								<h3>default collapsible header</h3> 
								<p>default collapsible header content</p> 
							</div>
							<div data-role="collapsible"> 
								<h3>open collapsible header</h3> 
								<p>open collapsible header content</p> 
							</div>
							
					 		<ul class="link">
								<li>&lt;div data-role="collapsible"&gt;</li>
								<li class="egov-txtIn1">&lt;h3&gt;default collapsible header&lt;/h3&gt;</li>
								<li class="egov-txtIn1">&lt;p&gt;default collapsible header content&lt;/p&gt;</li>
								<li>&lt;/div&gt;</li>
								<li>&lt;div data-role="collapsible" data-collapsed="false"&gt;</li>
								<li class="egov-txtIn1">&lt;h3&gt;open collapsible header&lt;/h3&gt;</li>
								<li class="egov-txtIn1">&lt;p&gt;open collapsible header content&lt;/p&gt;</li>
								<li>&lt;/div&gt;</li>
					 		</ul>
						</div>
					</div>

					<div class="egov-deth1">
						<h2>색상변경</h2>
						<p>색상변경 시에는 data-role="collapsible"이 선언된 div Tag에 Header 색상은 <strong>data-theme=[a~g]</strong> , 
						내부 Content 색상은 <strong>data-content-theme=[a~g]</strong> 를 선언하여	 색상을 변경한다.(총 7가지 색상 지원)
						</p>
						<div class="egov-deth2">
							<div data-role="collapsible" data-theme="b" data-content-theme="e"> 
								<h3>data-theme="b" collapsible header</h3> 
								<p>data-content-theme="e" collapsible content</p> 
							</div>
							<div data-role="collapsible" data-collapsed="false" data-theme="g" data-content-theme="b"> 
								<h3>data-theme="g" collapsible header</h3> 
								<p>data-content-theme="b" Theme collapsible content</p> 
							</div>
							
					 		<ul class="link">
								<li>&lt;div data-role="collapsible" data-theme="b" data-content-theme="e"&gt;</li>
								<li class="egov-txtIn1">&lt;h3&gt;data-theme="b" collapsible header&lt;/h3&gt;</li>
								<li class="egov-txtIn1">&lt;p&gt;data-content-theme="e" collapsible content&lt;/p&gt;</li>
								<li>&lt;/div&gt;</li>
								<li>&lt;div data-role="collapsible" data-collapsed="false" data-theme="g" data-content-theme="b"&gt;</li>
								<li class="egov-txtIn1">&lt;h3&gt;data-theme="g" collapsible header&lt;/h3&gt;</li>
								<li class="egov-txtIn1">&lt;p&gt;data-content-theme="b" Theme collapsible content&lt;/p&gt;</li>
								<li>&lt;/div&gt;</li>
					 		</ul>						
						</div>
					</div>
									
	        		<div class="egov-deth1">
	        			<h2>형태변경</h2>
						<p>여러개의 Collapsible Block을 하나의 그룹으로 구성하고 싶다면 이것들을 감싸고 있는 div Tag에 <strong>&lt;div data-role="collapsible-set"&gt;</strong>
						 속성을 지정하면 된다.이렇게 그룹으로 구성하면 각 Collapsible Block의 접힘/펼침은 상호 배타적으로 동작한다.</p>
						<div class="egov-deth2">
							<div data-role="collapsible-set">
								<div data-role="collapsible"> 
									<h3>collapsible 1</h3> 
									<p>collapsible 1 content</p> 
								</div>
								<div data-role="collapsible" data-collapsed="false"> 
									<h3>collapsible 2</h3> 
									<p>collapsible 2 content</p> 
								</div>
								<div data-role="collapsible"> 
									<h3>collapsible 3</h3> 
									<p>collapsible 3 content</p> 
								</div>
								<div data-role="collapsible"> 
									<h3>collapsible 4</h3> 
									<p>collapsible 4 content</p> 
								</div> 	
							</div>
							<ul class="link">
								<li>&lt;div data-role="collapsible-set"&gt;</li>
								<li class="egov-txtIn1">&lt;div data-role="collapsible"&gt;</li> 
								<li class="egov-txtIn2">&lt;h3&gt;collapsible 1&lt;/h3&gt;</li>
								<li class="egov-txtIn2">&lt;p&gt;collapsible 1 content&lt;/p&gt;</li> 
								<li class="egov-txtIn1">&lt;/div&gt;</li>
								<li class="egov-txtIn1">&lt;div data-role="collapsible" data-collapsed="false"&gt;</li> 
								<li class="egov-txtIn2">&lt;h3&gt;collapsible 2&lt;/h3&gt;</li>
								<li class="egov-txtIn2">&lt;p&gt;collapsible 2 content&lt;/p&gt;</li>
								<li class="egov-txtIn1">&lt;/div&gt;</li>
								<li class="egov-txtIn1">&lt;div data-role="collapsible"&gt;</li>
								<li class="egov-txtIn2">&lt;h3&gt;collapsible 3&lt;/h3&gt;</li>
								<li class="egov-txtIn2">&lt;p&gt;collapsible 3 content&lt;/p&gt;</li> 
								<li class="egov-txtIn1">&lt;/div&gt;</li>
								<li class="egov-txtIn1">&lt;div data-role="collapsible"&gt;</li> 
								<li class="egov-txtIn2">&lt;h3&gt;collapsible 4&lt;/h3&gt;</li>
								<li class="egov-txtIn2">&lt;p&gt;collapsible 4 content&lt;/p&gt;</li> 
								<li class="egov-txtIn1">&lt;/div&gt;</li> 	
								<li>&lt;/div&gt;</li>
					 		</ul>
						</div>
						
						<p>연속적인 Collapsible Block을 형성 할때는 content 영역에 하위 Collapsible Block을 선언한다.</p>
						<div class="egov-deth2">
							<div data-role="collapsible"> 
								<h3>collapsible 1</h3> 
								<p>collapsible 1 content</p> 
								<div data-role="collapsible"> 
									<h3>collapsible 1-1 content</h3> 
									<p>collapsible 1-1 content</p> 
								</div> 
							</div>
							<ul class="link">
								<li>&lt;div data-role="collapsible"&gt;</li>
								<li class="egov-txtIn1">&lt;h3>collapsible 1&lt;/h3&gt;</li>
								<li class="egov-txtIn1">&lt;p>collapsible 1 content&lt;/p&gt;</li>
								<li class="egov-txtIn1">&lt;div data-role="collapsible"&gt;</li>
								<li class="egov-txtIn2">&lt;h3>collapsible 1-1 content&lt;/h3&gt;</li>
								<li class="egov-txtIn2">&lt;p>collapsible 1-1 content&lt;/p&gt;</li>
								<li class="egov-txtIn1">&lt;/div&gt;</li>
								<li>&lt;/div></li>
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
				 <h4>Copyright(c)2012 Ministry of Government Administration and Home Affairs.</h4>
			</div>
			<!-- footer end --> 
			
		</div>
		<!-- page end -->
	
    </body>

</html>