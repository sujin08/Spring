<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Class Name : dynamicallyPage.jsp
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
			
			
			<!-- content start -->		
			<div data-role="content" data-theme="d">
			
                <!-- content-primary start -->
				<div class="content-primary">
					<div class="egov-tit">
						<h1>Dynamic Page Generation</h1>
						<p>전자정부 모바일 표준 프레임워크는 기본적으로 이벤트가 발생할 때 동적으로 DOM이 생성된다.즉 이벤트가 발생해야만 데이터를 받아 
						        올 수 있는데 HTML형식이 아닌  JSON으로 받은 데이터 값을 받아오는 방식을 정의한다.<br>
						</p>
					</div>
					
					<div class="egov-deth1">
						<h2>1. 데이터를 JSON 형태로 형성한다.</h2>
						<div class="egov-deth2">
					 		<ul class="link">
								<li>var categoryData = {</li>
								<li class="egov-txtIn1">	animals: {</li>
								<li class="egov-txtIn2">		name: "Animals",</li>
								<li class="egov-txtIn2">		description: "All your favorites from aardvarks to zebras.",</li>
								<li class="egov-txtIn2">		items: [</li>
								<li class="egov-txtIn3">			{</li>
								<li class="egov-txtIn4">				name: "Pets",</li>
								<li class="egov-txtIn3">			},</li>
								<li class="egov-txtIn3">			{</li>
								<li class="egov-txtIn4">				name: "Farm Animals",</li>
								<li class="egov-txtIn3">			},</li>
								<li class="egov-txtIn3">			{</li>
								<li class="egov-txtIn4">				name: "Wild Animals",</li>
								<li class="egov-txtIn3">			}</li>
								<li class="egov-txtIn2">		]</li>
								<li class="egov-txtIn1">	},</li>
								<li class="egov-txtIn1">	colors: {</li>
								<li class="egov-txtIn2">		name: "Colors",</li>
								<li class="egov-txtIn2">		description: "Fresh colors from the magic rainbow.",</li>
								<li class="egov-txtIn2">		items: [</li>
								<li class="egov-txtIn3">			{</li>
								<li class="egov-txtIn4">				name: "Blue",</li>
								<li class="egov-txtIn3">			},</li>
								<li class="egov-txtIn3">			{</li>
								<li class="egov-txtIn4">				name: "Green",</li>
								<li class="egov-txtIn3">			},</li>
								<li class="egov-txtIn3">			{</li>
								<li class="egov-txtIn4">				name: "Orange",</li>
								<li class="egov-txtIn3">			},</li>
								<li class="egov-txtIn3">			{</li>
								<li class="egov-txtIn4">				name: "Purple",</li>
								<li class="egov-txtIn3">			},</li>
								<li class="egov-txtIn3">			{</li>
								<li class="egov-txtIn4">				name: "Red",</li>
								<li class="egov-txtIn3">			},</li>
								<li class="egov-txtIn3">			{</li>
								<li class="egov-txtIn4">				name: "Yellow",</li>
								<li class="egov-txtIn3">			},</li>
								<li class="egov-txtIn3">			{</li>
								<li class="egov-txtIn4">				name: "Violet",</li>
								<li class="egov-txtIn3">			}</li>
								<li class="egov-txtIn2">		]</li>
								<li class="egov-txtIn1">	},</li>
								<li class="egov-txtIn1">	vehicles: {</li>
								<li class="egov-txtIn2">		name: "Vehicles",</li>
								<li class="egov-txtIn2">		description: "Everything from cars to planes.",</li>
								<li class="egov-txtIn2">		items: [</li>
								<li class="egov-txtIn3">			{</li>
								<li class="egov-txtIn4">				name: "Cars",</li>
								<li class="egov-txtIn3">			},</li>
								<li class="egov-txtIn3">			{</li>
								<li class="egov-txtIn4">				name: "Planes",</li>
								<li class="egov-txtIn3">			},</li>
								<li class="egov-txtIn3">			{</li>
								<li class="egov-txtIn4">		name: "Construction",</li>
								<li class="egov-txtIn3">			}</li>
								<li class="egov-txtIn2">		]</li>
								<li class="egov-txtIn1">	}</li>
								<li>};			</li>
					 		</ul>
						</div>
					</div>

	        		<div class="egov-deth1">
						<h2>2. JSON으로 형성된 값을 받을 Tag를 body부분에 선언한다.</h2>
                        <dl class="egov-deth3">
                            <dt>내부링크</dt>
                            <dd></dd>
                        </dl>
						<div class="egov-deth2">
							<ul class="link">
			                  	<li>&lt;h2&gt;Select a Category Below:&lt;/h2&gt;</li>
							  	<li>&lt;ul data-role="listview" data-inset="true"&gt;</li>
							    	<li class="egov-txtIn1">&lt;li&gt;&lt;a href="#category-items?category=animals">Animals&lt;/a&gt;&lt;/li&gt;</li>
							    	<li class="egov-txtIn1">&lt;li&gt;&lt;a href="#category-items?category=colors">Colors&lt;/a&gt;&lt;/li&gt;</li>
							    	<li class="egov-txtIn1">&lt;li&gt;&lt;a href="#category-items?category=vehicles">Vehicles&lt;/a&gt;&lt;/li&gt;</li>
							    <li>&lt;/ul&gt;</li>
							</ul>
						</div>
                        <dl class="egov-deth3">
                            <dt>외부링크</dt>
                            <dd></dd>
                        </dl>						
						<div class="egov-deth2">
							<ul class="link">
			                  	<li>&lt;h2&gt;Select a Category Below:&lt;/h2&gt;</li>
							  	<li>&lt;ul data-role="listview" data-inset="true"&gt;</li>
							    	<li class="egov-txtIn1">&lt;li&gt;&lt;a href="/guide/api/json/animals.do">Animals&lt;/a&gt;&lt;/li&gt;</li>
							    	<li class="egov-txtIn1">&lt;li&gt;&lt;a href="/guide/api/json/colors.do">Colors&lt;/a&gt;&lt;/li&gt;</li>
							    	<li class="egov-txtIn1">&lt;li&gt;&lt;a href="/guide/api/json/vehicles.do">Vehicles&lt;/a&gt;&lt;/li&gt;</li>
							    <li>&lt;/ul&gt;</li>
							</ul>
						</div>						
			   		</div>

	        		<div class="egov-deth1">
						<h2>3. pagebeforechange이벤트를 bind 한 후 받아온 Data를 처리할 스크립트를 작성한다.</h2>
						<div class="egov-deth2">
							<ul class="link">
								<li>							// Listen for any attempts to call changePage().</li>
								<li>							$(document).bind( "pagebeforechange", function( e, data ) {</li>
								<li class="egov-txtIn1">				// We only want to handle changePage() calls where the caller is</li>
								<li class="egov-txtIn1">				// asking us to load a page by URL.</li>
								<li class="egov-txtIn1">				if ( typeof data.toPage === "string" ) {</li>
								<li class="egov-txtIn1"></li>			
								<li class="egov-txtIn2">					// We are being asked to load a page by URL, but we only</li>
								<li class="egov-txtIn2">					// want to handle URLs that request the data for a specific</li>
								<li class="egov-txtIn2">					// category.</li>
								<li class="egov-txtIn2">					var u = $.mobile.path.parseUrl( data.toPage ),</li>
								<li class="egov-txtIn3">						re = /^#category-item/;</li>
								<li class="egov-txtIn3">			
								<li class="egov-txtIn3">					if ( u.hash.search(re) !== -1 ) {</li>
								<li class="egov-txtIn3">			
								<li class="egov-txtIn4">						// We're being asked to display the items for a specific category.</li>
								<li class="egov-txtIn4">						// Call our internal method that builds the content for the category</li>
								<li class="egov-txtIn4">						// on the fly based on our in-memory category data structure.</li>
								<li class="egov-txtIn4">						showCategory( u, data.options );</li>
								<li class="egov-txtIn4"></li>
								<li class="egov-txtIn4">						// Make sure to tell changePage() we've handled this call so it doesn't</li>
								<li class="egov-txtIn4">						// have to do anything.</li>
								<li class="egov-txtIn4">						e.preventDefault();</li>
								<li class="egov-txtIn3">					}</li>
								<li class="egov-txtIn2">				}</li>
								<li class="egov-txtIn1">			});</li>
					 		</ul>
					 	</div>	
					 	<div class="egov-deth2">
							<ul class="link">
								<li>								// Load the data for a specific category, based on</li>
								<li>								// the URL passed in. Generate markup for the items in the</li>
								<li>								// category, inject it into an embedded page, and then make</li>
								<li>								// that page the current active page.</li>
								<li>								function showCategory( urlObj, options )</li>
								<li>								{</li>
								<li class="egov-txtIn1">  				var categoryName = urlObj.hash.replace( /.*category=/, "" ),</li>
								<li class="egov-txtIn1"></li>
								<li class="egov-txtIn2">				// Get the object that represents the category we</li>
								<li class="egov-txtIn2">				// are interested in. Note, that at this point we could</li>
								<li class="egov-txtIn2">				// instead fire off an ajax request to fetch the data, but</li>
								<li class="egov-txtIn2">				// for the purposes of this sample, it's already in memory.</li>
								<li class="egov-txtIn2">				category = categoryData[ categoryName ],</li>
								<li class="egov-txtIn2"></li>
								<li class="egov-txtIn2">				// The pages we use to display our content are already in</li>
								<li class="egov-txtIn2">				// the DOM. The id of the page we are going to write our</li>
								<li class="egov-txtIn2">				// content into is specified in the hash before the '?'.</li>
								<li class="egov-txtIn2">				pageSelector = urlObj.hash.replace( /\?.*$/, "" );</li>
								<li class="egov-txtIn2"></li>
								<li class="egov-txtIn1">			if ( category ) {</li>
								<li class="egov-txtIn2">				// Get the page we are going to dump our content into.</li>
								<li class="egov-txtIn2">				var $page = $( pageSelector ),</li>
								<li class="egov-txtIn3"></li>
								<li class="egov-txtIn3">					// Get the header for the page.</li>
								<li class="egov-txtIn3">					$header = $page.children( ":jqmData(role=header)" ),</li>
								<li class="egov-txtIn3"></li>
								<li class="egov-txtIn3">					// Get the content area element for the page.</li>
								<li class="egov-txtIn3">					$content = $page.children( ":jqmData(role=content)" ),</li>
								<li class="egov-txtIn3"></li>
								<li class="egov-txtIn3">					// The markup we are going to inject into the content</li>
								<li class="egov-txtIn3">					// area of the page.</li>
								<li class="egov-txtIn3">					markup = "&lt;p&gt;" + category.description + "&lt;/p&gt;&lt;ul data-role='listview' data-inset='true'>",</li>
								<li class="egov-txtIn3"></li>
								<li class="egov-txtIn3">					// The array of items for this category.</li>
								<li class="egov-txtIn3">					cItems = category.items,</li>
								<li class="egov-txtIn3"></li>		
								<li class="egov-txtIn3">					// The number of items in the category.</li>
								<li class="egov-txtIn3">					numItems = cItems.length;</li>
								<li class="egov-txtIn3"></li>
								<li class="egov-txtIn2">				// Generate a list item for each item in the category</li>
								<li class="egov-txtIn2">				// and add it to our markup.</li>
								<li class="egov-txtIn2">				for ( var i = 0; i &lt; numItems; i++ ) {</li>
								<li class="egov-txtIn3">					markup += "&lt;li&gt;" + cItems[i].name + "&lt;/li&gt;";</li>
								<li class="egov-txtIn2">				}</li>
								<li class="egov-txtIn2">				markup += "&lt;/ul&gt;";</li>
								<li class="egov-txtIn2"></li>		
								<li class="egov-txtIn2">				// Find the h1 element in our header and inject the name of</li>
								<li class="egov-txtIn2">				// the category into it.</li>
								<li class="egov-txtIn2">				$header.find( "h1" ).html( category.name );</li>
								<li class="egov-txtIn2"></li>
								<li class="egov-txtIn2">				// Inject the category items markup into the content element.</li>
								<li class="egov-txtIn2">				$content.html( markup );</li>
								<li class="egov-txtIn2"></li>
								<li class="egov-txtIn2">				// Pages are lazily enhanced. We call page() on the page</li>
								<li class="egov-txtIn2">				// element to make sure it is always enhanced before we</li>
								<li class="egov-txtIn2">				// attempt to enhance the listview markup we just injected.</li>
								<li class="egov-txtIn2">				// Subsequent calls to page() are ignored since a page/widget</li>
								<li class="egov-txtIn2">				// can only be enhanced once.</li>
								<li class="egov-txtIn2">				$page.page();</li>
								<li class="egov-txtIn2"></li>
								<li class="egov-txtIn2">				// Enhance the listview we just injected.</li>
								<li class="egov-txtIn2">				$content.find( ":jqmData(role=listview)" ).listview();</li>
								<li class="egov-txtIn2"></li>
								<li class="egov-txtIn2">				// We don't want the data-url of the page we just modified</li>
								<li class="egov-txtIn2">				// to be the url that shows up in the browser's location field,</li>
								<li class="egov-txtIn2">				// so set the dataUrl option to the URL for the category</li>
								<li class="egov-txtIn2">				// we just loaded.</li>
								<li class="egov-txtIn2">				options.dataUrl = urlObj.href;</li>
								<li class="egov-txtIn2"></li>
								<li class="egov-txtIn2">				// Now call changePage() and tell it to switch to</li>
								<li class="egov-txtIn2">				// the page we just modified.</li>
								<li class="egov-txtIn2">				$.mobile.changePage( $page, options );</li>
								<li class="egov-txtIn1">			}</li>
								<li>							}</li>
					 		</ul>
				  	 	</div>
				   	</div>

	        		<div class="egov-deth1">
						<h2>예시보기</h2>
						<p>받아온 데이터를 처리하는 방식은 크게 내부링크 방식과 외부 링크 방식 두가지가 있다.</p>
						<div class="egov-deth2">
							<ul class="link">
							   	<li>		
								    <a href="<c:url value="/guide/api/json/jsonInternal.do"/>" data-role="button" data-ajax="false">내부링크 Dynamic Page Example</a>
								</li>
								<li>
								    <a href="<c:url value="/guide/api/json/jsonExternal.do"/>" data-role="button" data-ajax="false">외부링크 Dynamic Page Example</a>
								</li>
							    
					 		</ul>
					 	</div>					   					   
				    </div>

				</div>
				<!-- content-primary end -->
					
				<!-- content-secondary start -->
				<div class="content-secondary"> 
					<jsp:include page="../introMenu.jsp"></jsp:include>
				</div>			
				<!-- content-secondary end -->
				
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