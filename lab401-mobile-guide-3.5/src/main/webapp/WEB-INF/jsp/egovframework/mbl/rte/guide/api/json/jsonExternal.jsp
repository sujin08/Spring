<%@ page contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Class Name : jsonExternal.jsp
  Description :  pageStructure
  Modification Information

      수정일         수정자           수정내용
    -------------    --------    ---------------------
     2011.07.14    황민희          최초 생성
 
    author   : 모바일 실행환경 개발팀 황민희
    since    : 2011.10.07
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
		<script>
		
		// Some sample categorized data. This data is in-memory
		// for demonstration purposes, but could be loaded dynamically
		// via ajax.
		var categoryData = {
			animals: {
				name: "Animals",
				description: "All your favorites from aardvarks to zebras.",
				items: [
					{
						name: "Pets",
					},
					{
						name: "Farm Animals",
					},
					{
						name: "Wild Animals",
					}
				]
			},
			colors: {
				name: "Colors",
				description: "Fresh colors from the magic rainbow.",
				items: [
					{
						name: "Blue",
					},
					{
						name: "Green",
					},
					{
						name: "Orange",
					},
					{
						name: "Purple",
					},
					{
						name: "Red",
					},
					{
						name: "Yellow",
					},
					{
						name: "Violet",
					}
				]
			},
			vehicles: {
				name: "Vehicles",
				description: "Everything from cars to planes.",
				items: [
					{
						name: "Cars",
					},
					{
						name: "Planes",
					},
					{
						name: "Construction",
					}
				]
			}
		};
		
		// Load the data for a specific category, based on
		// the URL passed in. Generate markup for the items in the
		// category, inject it into an embedded page, and then make
		// that page the current active page.
		function showCategory( url, options )
		{
			var categoryName = url.replace(/^.*\/|\.html$/g, ""),
		
				// Get the object that represents the category we
				// are interested in. Note, that at this point we could
				// instead fire off an ajax request to fetch the data, but
				// for the purposes of this sample, it's already in memory.
				category = categoryData[ categoryName ],
		
				// The pages we use to display our content are already in
				// the DOM. The id of the page we are going to write our
				// content into is category-items
				pageSelector = "#category-items";
		
			if ( category ) {
				// Get the page we are going to dump our content into.
				var $page = $( pageSelector ),
		
					// Get the header for the page.
					$header = $page.children( ":jqmData(role=header)" ),
		
					// Get the content area element for the page.
					$content = $page.children( ":jqmData(role=content)" ),
		
					// The markup we are going to inject into the content
					// area of the page.
					markup = "<p>" + category.description + "</p><ul data-role='listview' data-inset='true'>",
		
					// The array of items for this category.
					cItems = category.items,
		
					// The number of items in the category.
					numItems = cItems.length;
		
				// Generate a list item for each item in the category
				// and add it to our markup.
				for ( var i = 0; i < numItems; i++ ) {
					markup += "<li>" + cItems[i].name + "</li>";
				}
				markup += "</ul>";
		
				// Find the h1 element in our header and inject the name of
				// the category into it.
				$header.find( "h1" ).html( category.name );
		
				// Inject the category items markup into the content element.
				$content.html( markup );
		
				// Pages are lazily enhanced. We call page() on the page
				// element to make sure it is always enhanced before we
				// attempt to enhance the listview markup we just injected.
				// Subsequent calls to page() are ignored since a page/widget
				// can only be enhanced once.
				$page.page();
		
				// Enhance the listview we just injected.
				$content.find( ":jqmData(role=listview)" ).listview();
		
				// We don't want the data-url of the page we just modified
				// to be the url that shows up in the browser's location field,
				// so set the dataUrl option to the URL for the category
				// we just loaded.
				options.dataUrl = url;
		
				// Now call changePage() and tell it to switch to
				// the page we just modified.
				$.mobile.changePage( $page, options );
			}
		}
		
		 
		// Listen for any attempts to call changepage.
		$(document).bind( "pagebeforechange", function( e, data ) {
			// We only want to handle changepage calls where the caller is
			// asking us to load a page by URL.
			var u = data.toPage;
			if ( typeof u === "string" ) {
				// We are being asked to load a page by URL, but we only
				// want to handle URLs that request the data for a specific
				// category.
		
				if ( $.mobile.path.isExternal( u ) && u.match( /\/([^\/\.]+\.html)/ ) ) {
		
					// We're being asked to display the items for a specific category.
					// Call our internal method that builds the content for the category
					// on the fly based on our in-memory category data structure.
					showCategory( u, data.options );
					
					e.preventDefault();
				}
			}
		});
		
		</script>
    
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
                <a href="<c:url value="/guide/api/dynamicallyPage.do"/>" data-icon="back" class="ui-btn-right" data-ajax="false">Back</a>
                <h1><img src="<c:url value="/images/egovframework/mbl/rte/guide/h1_logo.png"/>" alt="egovframework" /></h1>
            </div>  
			<!-- header end -->
			
			
			<!-- content start -->		
			<div data-role="content" data-theme="d">
				<h2>Select a Category Below:</h2>
				<ul data-role="listview" data-inset="true">
					<li><a href="<c:url value="/guide/api/json/animals.do"/>">Animals</a></li>
					<li><a href="<c:url value="/guide/api/json/colors.do"/>">Colors</a></li>
					<li><a href="<c:url value="/guide/api/json/vehicles.do"/>">Vehicles</a></li>
				</ul>
			</div>
			<!-- content end -->
			
			<!-- footer start -->
			<div data-role="footer" data-theme="z"  class="egovBar" data-postion="fixed">
				 <h4 class="main">Copyright(c)2012 Ministry of Government Administration and Home Affairs.</h4>
			</div>
			<!-- footer end --> 
			
		</div>
		<!-- page end -->
		
		<!-- category-items page start -->
		<div id="category-items" data-role="page" data-theme="d"> 
		  <div data-role="header" data-theme="z">
		  	<h1></h1>
		  </div> 
		  <div data-role="content">
		  </div> 
		</div>
		<!-- category-items page end -->
	
    </body>

</html>